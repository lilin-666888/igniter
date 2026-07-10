import { createClient } from '@supabase/supabase-js'
import {
  contactInfo,
  footerColumns,
  footerLegal,
  navLinks,
  topbarItems,
} from '../app/data/site'
import {
  catalogItems,
  certifications,
  contactPromises,
  entryCards,
  heroStats,
  quoteOutcomes,
  resourceCards,
  specCardSpecs,
  spotlightStats,
  techmanCards,
  testimonials,
} from '../app/data/homepage'

const url = process.env.SUPABASE_URL
const key = process.env.SUPABASE_SECRET_KEY

if (!url || !key) {
  console.error(`
Missing SUPABASE_SECRET_KEY (Settings → API Keys → Secret key).

Alternative without secret key:
  1. npm run db:generate-seed
  2. Run supabase/schema.sql then supabase/seed.sql in Supabase SQL Editor
`)
  process.exit(1)
}

const supabase = createClient(url, key)

async function upsertSettings() {
  const rows = [
    { key: 'contact_info', value: contactInfo },
    { key: 'topbar_items', value: topbarItems },
    { key: 'nav_links', value: navLinks },
    { key: 'footer_columns', value: footerColumns },
    { key: 'footer_legal', value: footerLegal },
    { key: 'hero_stats', value: heroStats },
    { key: 'spec_card_specs', value: specCardSpecs },
    { key: 'spotlight_stats', value: spotlightStats },
    { key: 'quote_outcomes', value: quoteOutcomes },
  ]

  for (const row of rows) {
    const { error } = await supabase
      .from('site_settings')
      .upsert(row, { onConflict: 'key' })
    if (error) throw new Error(`site_settings.${row.key}: ${error.message}`)
  }
}

async function seedContentItems(section: string, items: Record<string, unknown>[]) {
  const { error: delError } = await supabase
    .from('content_items')
    .delete()
    .eq('section', section)
  if (delError) throw new Error(`delete ${section}: ${delError.message}`)

  if (items.length === 0) return

  const rows = items.map((data, index) => ({
    section,
    sort_order: index,
    data,
    published: true,
  }))

  const { error } = await supabase.from('content_items').insert(rows)
  if (error) throw new Error(`insert ${section}: ${error.message}`)
}

async function seedCertifications() {
  await seedContentItems(
    'certifications',
    certifications.map(name => ({ name })),
  )
}

async function seedProductMenu() {
  const productsNav = navLinks.find(n => n.to === '/products')
  if (!productsNav?.groups?.length) return

  for (const [index, group] of productsNav.groups.entries()) {
    if (!group.to) continue
    const slug = group.to.replace(/^\/products\//, '').replace(/#.*$/, '')

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

    if (error) throw new Error(`menu group ${slug}: ${error.message}`)

    await supabase.from('product_menu_items').delete().eq('group_id', row.id)

    const items = group.links
      .filter(link => link.to)
      .map((link, itemIndex) => ({
        group_id: row.id,
        label: link.label,
        path: link.to,
        sort_order: itemIndex,
        published: true,
      }))

    if (items.length) {
      const { error: itemError } = await supabase.from('product_menu_items').insert(items)
      if (itemError) throw new Error(`menu items ${slug}: ${itemError.message}`)
    }
  }
}

async function main() {
  console.log('Seeding Ceramitell CMS data...')
  await upsertSettings()
  await seedContentItems('entry_cards', entryCards)
  await seedContentItems('catalog_items', catalogItems)
  await seedContentItems('testimonials', testimonials)
  await seedContentItems('resource_cards', resourceCards)
  await seedContentItems('techman_cards', techmanCards)
  await seedContentItems('contact_promises', contactPromises)
  await seedCertifications()
  await seedProductMenu()
  console.log('Seed complete.')
}

main().catch((err) => {
  console.error(err)
  process.exit(1)
})
