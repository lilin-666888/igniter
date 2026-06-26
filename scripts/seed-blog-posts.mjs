/**
 * Seed blog_posts from blog.html export.
 * Usage: node --env-file=.env scripts/seed-blog-posts.mjs
 *
 * Requires SUPABASE_URL + SUPABASE_KEY. Temporarily disables RLS if insert is blocked.
 */
import { readFileSync } from 'node:fs'
import { dirname, join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { createClient } from '@supabase/supabase-js'
import pg from 'pg'

const __dirname = dirname(fileURLToPath(import.meta.url))
const root = join(__dirname, '..')

const url = process.env.SUPABASE_URL
const key = process.env.SUPABASE_KEY
const dbUrl = process.env.SUPABASE_DB_URL

if (!url || !key) {
  console.error('Set SUPABASE_URL and SUPABASE_KEY in .env')
  process.exit(1)
}

const articles = JSON.parse(readFileSync(join(root, 'supabase/blog-articles.json'), 'utf8'))
const META = JSON.parse(readFileSync(join(root, 'supabase/blog-meta.json'), 'utf8'))

const rows = articles.map((a, i) => {
  const m = META[i]
  return {
    slug: a.slug,
    title: a.title,
    excerpt: a.excerpt,
    category: m.category,
    content_html: a.content_html,
    date_label: m.date,
    read_time: m.read_time,
    featured: !!m.featured,
    tags: m.tags || [],
    card_icon: m.card_icon,
    card_label: m.card_label,
    card_img_class: m.card_img_class || null,
    sort_order: i,
    published: true,
  }
})

async function withRlsDisabled(fn) {
  if (!dbUrl || dbUrl.includes('[ref]')) {
    return fn()
  }
  const client = new pg.Client({ connectionString: dbUrl, ssl: { rejectUnauthorized: false } })
  await client.connect()
  try {
    await client.query('alter table public.blog_posts disable row level security')
    await fn()
  } finally {
    await client.query('alter table public.blog_posts enable row level security')
    await client.end()
  }
}

const supabase = createClient(url, key)

await withRlsDisabled(async () => {
  const { error } = await supabase.from('blog_posts').upsert(rows, { onConflict: 'slug' })
  if (error) throw error
})

console.log(`Seeded ${rows.length} blog posts.`)
