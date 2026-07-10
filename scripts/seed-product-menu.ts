/**
 * Seed product menu groups/items from site.ts nav.
 * Run: npx tsx scripts/seed-product-menu.ts
 */
import { createClient } from '@supabase/supabase-js'
import { navLinks } from '../app/data/site'

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

async function main() {
  const productsNav = navLinks.find(n => n.to === '/products')
  if (!productsNav?.groups?.length) {
    console.error('No Products nav groups in site.ts')
    process.exit(1)
  }

  for (const [index, group] of productsNav.groups.entries()) {
    if (!group.to) continue
    const slug = slugFromPath(group.to)

    const { data: row, error } = await supabase
      .from('product_menu_groups')
      .upsert({
        slug,
        label: group.label,
        path: group.to,
        sort_order: index,
        published: true,
      }, { onConflict: 'slug' })
      .select('id')
      .single()

    if (error) throw new Error(`group ${slug}: ${error.message}`)

    for (const [itemIndex, link] of group.links.entries()) {
      if (!link.to) continue
      const { error: itemError } = await supabase
        .from('product_menu_items')
        .upsert({
          group_id: row.id,
          label: link.label,
          path: link.to,
          sort_order: itemIndex,
          published: true,
        }, { onConflict: 'group_id,label,path' })

      if (itemError && !itemError.message.includes('no unique')) {
        // fallback: insert if no unique constraint on composite
        const { count } = await supabase
          .from('product_menu_items')
          .select('id', { count: 'exact', head: true })
          .eq('group_id', row.id)
          .eq('label', link.label)
          .eq('path', link.to)

        if (!count) {
          const { error: insertError } = await supabase.from('product_menu_items').insert({
            group_id: row.id,
            label: link.label,
            path: link.to,
            sort_order: itemIndex,
            published: true,
          })
          if (insertError) throw new Error(`item ${link.label}: ${insertError.message}`)
        }
      }
    }

    console.log(`  ✓ ${group.label} (${group.links.length} items)`)
  }

  console.log('Product menu seed complete.')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
