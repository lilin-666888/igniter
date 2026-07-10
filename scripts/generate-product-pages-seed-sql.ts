/**
 * Generate SQL to seed product_pages + product_lineup_items from static registry.
 * Run: node --import tsx scripts/generate-product-pages-seed-sql.ts
 */
import { writeFileSync } from 'node:fs'
import { join, dirname } from 'node:path'
import { fileURLToPath } from 'node:url'
import { productPages } from '../app/data/products/registry'
import {
  extractLineupFromSections,
  productPageToBody,
  sectionsWithoutLineup,
} from '../server/utils/product-page'

const __dirname = dirname(fileURLToPath(import.meta.url))

function sqlText(value: string) {
  return `'${value.replace(/'/g, "''")}'`
}

function sqlJson(value: unknown) {
  return `'${JSON.stringify(value).replace(/'/g, "''")}'::jsonb`
}

function sqlArray(values: string[]) {
  if (!values.length) return `'{}'::text[]`
  return `ARRAY[${values.map(v => sqlText(v)).join(', ')}]`
}

function slugFromLink(path?: string) {
  if (!path) return null
  const match = path.match(/^\/products\/([^#?]+)/)
  return match?.[1] ?? null
}

// category slug -> product_menu_groups.id (from live DB)
const categoryIds: Record<string, string> = {
  'ceramic-igniters': '15ea4c42-9178-4113-ab9c-437b5be6c59e',
  'ceramic-heaters': 'b2aa83f6-34d1-4430-a974-1de8637ce4e7',
  'ceramic-structural': 'bde22157-f6e1-41df-b0db-89207ee6f899',
  'custom-ceramic': '61cd3349-32f5-4f04-8431-73212ff015bf',
  'ceramic-balls': '977d75b6-1731-4935-8b6b-dd3e8b3a1b01',
  'precision-bearings': 'd00a34fe-efb2-4fde-a1eb-3789666d682d',
  'grinding-media': '25f56cfd-ee23-45d9-894a-cd01504c7852',
  'ceramic-powder': 'ab2b0569-e7d6-4b83-9329-77c2364452f1',
}

const lines: string[] = [
  '-- Auto-generated product pages seed',
  'delete from public.product_lineup_items;',
  'delete from public.product_pages;',
  '',
]

for (const [index, page] of productPages.entries()) {
  const categorySlug =
    page.pageType === 'category' ? page.slug : page.parent?.slug
  const categoryId = categorySlug ? categoryIds[categorySlug] : null
  const body = productPageToBody(
    { ...page, sections: sectionsWithoutLineup(page.sections) },
    categoryId,
  )

  lines.push(`insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  ${categoryId ? `'${categoryId}'` : 'null'},
  ${sqlText(body.slug)},
  ${sqlText(body.page_type)},
  ${body.parent_slug ? sqlText(body.parent_slug) : 'null'},
  ${body.parent_label ? sqlText(body.parent_label) : 'null'},
  ${sqlJson(body.seo)},
  ${sqlJson(body.breadcrumb)},
  ${sqlJson(body.hero)},
  ${sqlText(body.hero_side)},
  ${body.hero_ctas ? sqlJson(body.hero_ctas) : 'null'},
  ${body.spotlight ? sqlJson(body.spotlight) : 'null'},
  ${sqlJson(body.sections)},
  ${index},
  true
) on conflict (slug) do update set
  category_id = excluded.category_id,
  page_type = excluded.page_type,
  parent_slug = excluded.parent_slug,
  parent_label = excluded.parent_label,
  seo = excluded.seo,
  breadcrumb = excluded.breadcrumb,
  hero = excluded.hero,
  hero_side = excluded.hero_side,
  hero_ctas = excluded.hero_ctas,
  spotlight = excluded.spotlight,
  sections = excluded.sections,
  sort_order = excluded.sort_order,
  published = excluded.published,
  updated_at = now();`)
  lines.push('')
}

lines.push('-- Lineup items (requires page ids from slugs)')
for (const page of productPages) {
  if (page.pageType !== 'category') continue
  const lineupItems = extractLineupFromSections(page.sections)
  if (!lineupItems.length) continue

  for (const [index, item] of lineupItems.entries()) {
    const linkSlug = slugFromLink(item.linkTo)
    const linkPageSubquery = linkSlug
      ? `(select id from public.product_pages where slug = ${sqlText(linkSlug)} limit 1)`
      : 'null'

    lines.push(`insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  ${sqlText(item.name)},
  ${sqlText(item.icon ?? '📦')},
  ${sqlText(item.desc)},
  ${sqlArray(item.chips ?? [])},
  ${item.materialLabel ? sqlText(item.materialLabel) : 'null'},
  ${item.materialTo ? sqlText(item.materialTo) : 'null'},
  ${item.linkTo ? sqlText(item.linkTo) : 'null'},
  ${linkPageSubquery},
  ${sqlText(item.linkLabel ?? 'View Details →')},
  ${item.flagship ? 'true' : 'false'},
  ${item.badge ? sqlText(item.badge) : 'null'},
  ${index},
  true
from public.product_pages p
where p.slug = ${sqlText(page.slug)};`)
  }
  lines.push('')
}

const out = join(__dirname, '../supabase/product-pages-seed.sql')
writeFileSync(out, lines.join('\n'))
console.log(`Wrote ${out} (${lines.length} lines)`)
