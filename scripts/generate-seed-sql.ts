import { writeFileSync } from 'node:fs'
import { join, dirname } from 'node:path'
import { fileURLToPath } from 'node:url'
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

const __dirname = dirname(fileURLToPath(import.meta.url))

function sqlJson(value: unknown) {
  return `'${JSON.stringify(value).replace(/'/g, "''")}'::jsonb`
}

function sqlText(value: string) {
  return `'${value.replace(/'/g, "''")}'`
}

const settings = [
  ['contact_info', contactInfo],
  ['topbar_items', topbarItems],
  ['nav_links', navLinks],
  ['footer_columns', footerColumns],
  ['footer_legal', footerLegal],
  ['hero_stats', heroStats],
  ['spec_card_specs', specCardSpecs],
  ['spotlight_stats', spotlightStats],
  ['quote_outcomes', quoteOutcomes],
]

const contentSections: Array<[string, unknown[]]> = [
  ['entry_cards', entryCards],
  ['catalog_items', catalogItems],
  ['testimonials', testimonials],
  ['resource_cards', resourceCards],
  ['techman_cards', techmanCards],
  ['contact_promises', contactPromises],
  ['certifications', certifications.map(name => ({ name }))],
]

const lines: string[] = [
  '-- Auto-generated seed data. Run after supabase/schema.sql',
  '',
  ...settings.map(([key, value]) =>
    `insert into public.site_settings (key, value) values (${sqlText(key)}, ${sqlJson(value)}) on conflict (key) do update set value = excluded.value, updated_at = now();`,
  ),
  '',
  'delete from public.content_items;',
  ...contentSections.flatMap(([section, items]) =>
    items.map((data, i) =>
      `insert into public.content_items (section, sort_order, data, published) values (${sqlText(section)}, ${i}, ${sqlJson(data)}, true);`,
    ),
  ),
  '',
  'delete from public.product_categories;',
  ...catalogItems.map((item, i) => {
    const slug = item.title.toLowerCase().replace(/[^a-z0-9]+/g, '-').replace(/^-|-$/g, '')
    return `insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values (${sqlText(slug)}, ${sqlText(item.title)}, ${sqlText(item.desc)}, ${sqlText(item.meta)}, ${sqlText(item.emoji)}, '/products', ${i}, true);`
  }),
  '',
]

const out = join(__dirname, '../supabase/seed.sql')
writeFileSync(out, lines.join('\n'))
console.log(`Wrote ${out}`)
