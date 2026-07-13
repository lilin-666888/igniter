/**
 * Sync product spec-grid models from public/newImage folder structure into Supabase.
 *
 * Folder → product page slug mapping (only updates spec-grid models/images):
 *   1.1 Silicon Nitride lgniters → silicon-nitride-igniters-final
 *   1.2 Hot Surface lgniters       → hot-surface-igniters
 *   1.6 Silicon Nitride Heaters    → silicon-nitride-heaters
 *
 * Run: npm run db:sync-spec-models
 */
import { createClient } from '@supabase/supabase-js'
import { readdir, stat } from 'node:fs/promises'
import { join, extname, basename, relative } from 'node:path'

import type { ProductPage, ProductSection, SpecCard } from '../app/data/products/types'

const url = process.env.SUPABASE_URL
const key = process.env.SUPABASE_SECRET_KEY

if (!url || !key) {
  console.error('Missing SUPABASE_URL or SUPABASE_SECRET_KEY')
  process.exit(1)
}

const supabase = createClient(url, key)

const PUBLIC_DIR = join(process.cwd(), 'public')
const NEW_IMAGE_DIR = join(PUBLIC_DIR, 'newImage')

const IMAGE_EXT = new Set(['.jpg', '.jpeg', '.png', '.webp', '.gif'])

const SKIP_ROOT_FILES = new Set([
  '产品主图 1000x618像素.png',
  'Silicon Carbide  lgniters.jpg',
])

type Mapping = {
  folder: string
  slug: string
  mode: 'subdirs' | 'flat'
  placeholder: 'igniter' | 'hot-surface' | 'heater'
}

const MAPPINGS: Mapping[] = [
  { folder: '1.1 Silicon Nitride lgniters', slug: 'silicon-nitride-igniters-final', mode: 'subdirs', placeholder: 'igniter' },
  { folder: '1.2 Hot Surface lgniters', slug: 'hot-surface-igniters', mode: 'flat', placeholder: 'hot-surface' },
  { folder: '1.6 Silicon Nitride Heaters', slug: 'silicon-nitride-heaters', mode: 'flat', placeholder: 'heater' },
]

function placeholderIgniterSpec(model: string, featured: boolean): Pick<SpecCard, 'subtitle' | 'rows' | 'foot' | 'badge'> {
  const isGc = model.includes('GC')
  return {
    subtitle: isGc ? 'Gas Stove · Threaded Mount' : 'Si₃N₄ Hot Surface · OEM Replacement',
    ...(featured ? { badge: '★ Series' } : {}),
    rows: [
      { k: 'Material', v: 'Si₃N₄ (silicon nitride)' },
      { k: 'Rated Power', v: isGc ? '400' : '300', unit: 'W', hot: true },
      { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
      { k: 'Heat-Up', v: '3', unit: 'sec' },
      { k: 'Cycle Life', v: '100,000+' },
      { k: 'Certification', v: 'UL Recognized · CE' },
    ],
    foot: `<b>Use:</b> ${model} — gas appliances · pellet stoves · industrial ignition`,
  }
}

function parseHotSurfaceFromName(model: string): { voltage: string; power: string; subtitle: string } {
  const voltMatch = model.match(/(\d+)V/i)
  const powerMatch = model.match(/(\d+)W/i)
  const voltage = voltMatch ? `${voltMatch[1]} V` : '12–230 V'
  const power = powerMatch ? powerMatch[1] : '300'
  const subtitle =
    voltMatch && Number(voltMatch[1]) <= 24
      ? '12 V · Low Voltage'
      : voltMatch && Number(voltMatch[1]) >= 200
        ? '230 V · Europe / International'
        : voltMatch
          ? `${voltMatch[1]} V AC`
          : 'Hot Surface · Si₃N₄'
  return { voltage, power, subtitle }
}

function placeholderHotSurfaceSpec(model: string, featured: boolean): Pick<SpecCard, 'subtitle' | 'rows' | 'foot' | 'badge'> {
  const { voltage, power, subtitle } = parseHotSurfaceFromName(model)
  return {
    subtitle,
    ...(featured ? { badge: '★ Hot Surface' } : {}),
    rows: [
      { k: 'Voltage', v: voltage.replace(' V', ''), unit: 'V AC', hot: true },
      { k: 'Power', v: power, unit: 'W' },
      { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
      { k: 'Heat-Up', v: '3', unit: 'sec' },
      { k: 'Cycle Life', v: '100,000+' },
      { k: 'Certification', v: 'UL / CE' },
    ],
    foot: `<b>Use:</b> ${model} — furnaces · water heaters · HVAC · pellet stoves`,
  }
}

function placeholderHeaterSpec(model: string, featured: boolean): Pick<SpecCard, 'subtitle' | 'rows' | 'foot' | 'badge'> {
  return {
    subtitle: 'Si₃N₄ Resistive · Custom Geometry',
    ...(featured ? { badge: '★ Heater Series' } : {}),
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Rated Voltage', v: '12–230', unit: 'V' },
      { k: 'Power', v: '50–400', unit: 'W', hot: true },
      { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
      { k: 'Heat-Up', v: '3', unit: 'sec' },
      { k: 'Cycle Life', v: '100,000+' },
    ],
    foot: `<b>Use:</b> ${model} — pellet stoves · furnaces · semiconductor heating`,
  }
}

function applyPlaceholderSpec(
  model: string,
  featured: boolean,
  kind: Mapping['placeholder'],
): Pick<SpecCard, 'subtitle' | 'rows' | 'foot' | 'badge'> {
  if (kind === 'hot-surface') return placeholderHotSurfaceSpec(model, featured)
  if (kind === 'heater') return placeholderHeaterSpec(model, featured)
  return placeholderIgniterSpec(model, featured)
}

function naturalCompare(a: string, b: string) {
  return a.localeCompare(b, undefined, { numeric: true, sensitivity: 'base' })
}

function toPublicUrl(absPath: string): string {
  const rel = relative(PUBLIC_DIR, absPath).split(/[/\\]/).map(encodeURIComponent).join('/')
  return `/${rel}`
}

function isImageFile(name: string) {
  return IMAGE_EXT.has(extname(name).toLowerCase())
}

async function listImageFiles(dir: string): Promise<string[]> {
  const entries = await readdir(dir)
  return entries
    .filter(isImageFile)
    .sort(naturalCompare)
    .map(name => join(dir, name))
}

async function buildModelsFromSubdirs(categoryDir: string, kind: Mapping['placeholder']): Promise<SpecCard[]> {
  const entries = await readdir(categoryDir)
  const subdirs: string[] = []

  for (const name of entries) {
    const full = join(categoryDir, name)
    if ((await stat(full)).isDirectory()) subdirs.push(name)
  }

  subdirs.sort(naturalCompare)

  const models: SpecCard[] = []

  for (const [index, dirName] of subdirs.entries()) {
    const subdirPath = join(categoryDir, dirName)
    const galleryFiles = await listImageFiles(subdirPath)
    const coverPath = join(categoryDir, `${dirName}.jpg`)
    let coverExists = false
    try {
      coverExists = (await stat(coverPath)).isFile()
    } catch {
      coverExists = false
    }

    const imagePaths = [
      ...(coverExists ? [coverPath] : []),
      ...galleryFiles,
    ]

    if (!imagePaths.length) continue

    const featured = index === 0
    const placeholder = applyPlaceholderSpec(dirName, featured, kind)

    models.push({
      model: dirName,
      ...placeholder,
      ...(featured ? { featured: true, headGradient: true } : {}),
      imageSrcs: imagePaths.map(toPublicUrl),
    })
  }

  return models
}

async function buildModelsFromFlatFiles(categoryDir: string, kind: Mapping['placeholder']): Promise<SpecCard[]> {
  const files = await listImageFiles(categoryDir)
  const models: SpecCard[] = []

  for (const [index, filePath] of files.entries()) {
    const fileName = basename(filePath)
    if (SKIP_ROOT_FILES.has(fileName)) continue

    const model = basename(fileName, extname(fileName))
    const featured = index === 0
    const placeholder = applyPlaceholderSpec(model, featured, kind)

    models.push({
      model,
      ...placeholder,
      ...(featured ? { featured: true, headGradient: true } : {}),
      imageSrcs: [toPublicUrl(filePath)],
    })
  }

  return models
}

function patchSpecGridSection(section: ProductSection, models: SpecCard[]): ProductSection {
  if (section.type !== 'spec-grid') return section

  return {
    ...section,
    items: models,
    groups: undefined,
  }
}

async function syncPage(mapping: Mapping) {
  const categoryDir = join(NEW_IMAGE_DIR, mapping.folder)
  const models =
    mapping.mode === 'subdirs'
      ? await buildModelsFromSubdirs(categoryDir, mapping.placeholder)
      : await buildModelsFromFlatFiles(categoryDir, mapping.placeholder)

  if (!models.length) {
    console.warn(`  ⚠ no models found for ${mapping.folder}`)
    return
  }

  const { data: row, error: fetchError } = await supabase
    .from('product_pages')
    .select('id, slug, sections')
    .eq('slug', mapping.slug)
    .maybeSingle()

  if (fetchError) throw fetchError
  if (!row) {
    console.warn(`  ⚠ page not found: ${mapping.slug} (skip ${mapping.folder})`)
    return
  }

  const sections = (row.sections ?? []) as ProductPage['sections']
  const specIndex = sections.findIndex(section => section.type === 'spec-grid')
  if (specIndex === -1) {
    console.warn(`  ⚠ no spec-grid section on ${mapping.slug}`)
    return
  }

  const nextSections = [...sections]
  nextSections[specIndex] = patchSpecGridSection(sections[specIndex], models)

  const { error: updateError } = await supabase
    .from('product_pages')
    .update({ sections: nextSections })
    .eq('id', row.id)

  if (updateError) throw updateError

  console.log(`  ✓ ${mapping.slug}: ${models.length} models`)
  for (const model of models) {
    console.log(`      · ${model.model} (${model.imageSrcs?.length ?? 0} images)`)
  }
}

async function main() {
  console.log('Syncing spec-grid models from public/newImage …\n')

  for (const mapping of MAPPINGS) {
    console.log(`→ ${mapping.folder}`)
    await syncPage(mapping)
    console.log('')
  }

  const unmapped = ['1.3 Alumina Ceramic Igniters', '1.4 Silicon Carbide lgniters']
  console.log('Note: no product page slug mapped yet for:')
  for (const folder of unmapped) {
    console.log(`  - ${folder}`)
  }

  console.log('\nDone.')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
