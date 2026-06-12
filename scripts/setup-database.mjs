import { readFileSync } from 'node:fs'
import { fileURLToPath } from 'node:url'
import { dirname, join } from 'node:path'
import pg from 'pg'

const __dirname = dirname(fileURLToPath(import.meta.url))
const dbUrl = process.env.SUPABASE_DB_URL

if (!dbUrl) {
  console.error(`
SUPABASE_DB_URL is not set.

Option A — run schema in Supabase Dashboard:
  1. Open https://supabase.com/dashboard/project/qmpfdvyntqumvjxjstpf/sql/new
  2. Paste contents of supabase/schema.sql and run
  3. Then run: npm run db:seed

Option B — set SUPABASE_DB_URL in .env and re-run:
  npm run db:setup
`)
  process.exit(1)
}

const sql = readFileSync(join(__dirname, '../supabase/schema.sql'), 'utf8')
const client = new pg.Client({ connectionString: dbUrl, ssl: { rejectUnauthorized: false } })

try {
  await client.connect()
  await client.query(sql)
  console.log('Schema applied successfully.')
} catch (err) {
  console.error('Schema failed:', err.message)
  process.exit(1)
} finally {
  await client.end()
}
