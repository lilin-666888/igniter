/**
 * Seed product categories (nav groups) and product pages into Supabase.
 * Run: npm run db:seed-products
 */
import { createClient } from '@supabase/supabase-js'
import { navLinks } from '../app/data/site'
import { productPages } from '../app/data/products/registry'
import { productPageToBody } from '../server/utils/product-page'

const url = process.env.SUPABASE_URL
const key = process.env.SUPABASE_SECRET_KEY

if (!url || !key) {
  console.error('Missing SUPABASE_URL or SUPABASE_SECRET_KEY')
  process.exit(1)
}

const supabase = createClient(url, key)

function slugFromPath(path: string) {
  return path.replace(/^\/products\//, '').replace(/#.*$/, '')
}

async function seedNavCategories() {
  const productsNav = navLinks.find(n => n.to === '/products')
  if (!productsNav?.groups?.length) return {}

  const slugToId: Record<string, string> = {}

  for (const [index, group] of productsNav.groups.entries()) {
    if (!group.to) continue
    const slug = slugFromPath(group.to)

    const row = {
      slug,
      label: group.label,
      path: group.to,
      sort_order: index,
      published: true,
    }

    const { data, error } = await supabase
      .from('product_menu_groups')
      .upsert(row, { onConflict: 'slug' })
      .select('id, slug')
      .single()

    if (error) throw new Error(`category ${slug}: ${error.message}`)
    slugToId[slug] = data.id
  }

  return slugToId
}

async function seedProductPages(categoryIds: Record<string, string>) {
  for (const [index, page] of productPages.entries()) {
    const categorySlug =
      page.pageType === 'category'
        ? page.slug
        : page.parent?.slug

    const categoryId = categorySlug ? categoryIds[categorySlug] : null
    const body = {
      ...productPageToBody(page, categoryId),
      sort_order: index,
      published: true,
    }

    const { error } = await supabase
      .from('product_pages')
      .upsert(body, { onConflict: 'slug' })

    if (error) throw new Error(`page ${page.slug}: ${error.message}`)
    console.log(`  ✓ ${page.slug}`)
  }
}

async function main() {
  console.log('Seeding product categories from nav…')
  const categoryIds = await seedNavCategories()
  console.log(`  ${Object.keys(categoryIds).length} categories`)

  console.log('Seeding product pages…')
  await seedProductPages(categoryIds)
  console.log('Product seed complete.')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
