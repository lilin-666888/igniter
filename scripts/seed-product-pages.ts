/**
 * Seed product pages and lineup items from static registry into Supabase.
 * Run: npm run db:seed-products
 */
import { createClient } from '@supabase/supabase-js'
import { productPages } from '../app/data/products/registry'
import {
  extractLineupFromSections,
  productPageToBody,
  sectionsWithoutLineup,
} from '../server/utils/product-page'

const url = process.env.SUPABASE_URL
const key = process.env.SUPABASE_SECRET_KEY

if (!url || !key) {
  console.error('Missing SUPABASE_URL or SUPABASE_SECRET_KEY')
  process.exit(1)
}

const supabase = createClient(url, key)

async function loadGroupIds() {
  const { data, error } = await supabase.from('product_menu_groups').select('id, slug')
  if (error) throw error
  return Object.fromEntries((data ?? []).map(row => [row.slug, row.id]))
}

function slugFromLink(path?: string) {
  if (!path) return null
  const match = path.match(/^\/products\/([^#?]+)/)
  return match?.[1] ?? null
}

async function seedProductPages(categoryIds: Record<string, string>) {
  const slugToPageId: Record<string, string> = {}

  for (const [index, page] of productPages.entries()) {
    const categorySlug =
      page.pageType === 'category'
        ? page.slug
        : page.parent?.slug

    const categoryId = categorySlug ? categoryIds[categorySlug] : null
    const body = {
      ...productPageToBody(
        { ...page, sections: sectionsWithoutLineup(page.sections) },
        categoryId,
      ),
      sort_order: index,
      published: true,
    }

    const { data, error } = await supabase
      .from('product_pages')
      .upsert(body, { onConflict: 'slug' })
      .select('id, slug')
      .single()

    if (error) throw new Error(`page ${page.slug}: ${error.message}`)
    slugToPageId[data.slug] = data.id
    console.log(`  ✓ page ${page.slug}`)
  }

  return slugToPageId
}

async function seedLineupItems(slugToPageId: Record<string, string>) {
  for (const page of productPages) {
    if (page.pageType !== 'category') continue

    const pageId = slugToPageId[page.slug]
    if (!pageId) continue

    const lineupItems = extractLineupFromSections(page.sections)
    if (!lineupItems.length) continue

    await supabase.from('product_lineup_items').delete().eq('page_id', pageId)

    const rows = lineupItems.map((item, index) => {
      const linkSlug = slugFromLink(item.linkTo)
      return {
        page_id: pageId,
        name: item.name,
        icon: item.icon ?? '📦',
        description: item.desc,
        chips: item.chips ?? [],
        material_label: item.materialLabel ?? null,
        material_path: item.materialTo ?? null,
        link_path: item.linkTo ?? null,
        link_page_id: linkSlug ? slugToPageId[linkSlug] ?? null : null,
        link_label: item.linkLabel ?? 'View Details →',
        flagship: item.flagship ?? false,
        badge: item.badge ?? null,
        sort_order: index,
        published: true,
      }
    })

    const { error } = await supabase.from('product_lineup_items').insert(rows)
    if (error) throw new Error(`lineup ${page.slug}: ${error.message}`)
    console.log(`  ✓ lineup ${page.slug} (${rows.length} items)`)
  }
}

async function main() {
  console.log('Loading menu groups…')
  const categoryIds = await loadGroupIds()
  console.log(`  ${Object.keys(categoryIds).length} groups`)

  console.log('Seeding product pages…')
  const slugToPageId = await seedProductPages(categoryIds)

  console.log('Seeding lineup items…')
  await seedLineupItems(slugToPageId)

  console.log('Product seed complete.')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
