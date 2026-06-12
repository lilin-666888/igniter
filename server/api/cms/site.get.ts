export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const supabase = useSupabasePublic()
  const { data, error } = await supabase.from('site_settings').select('key, value')

  if (error) {
    throw createError({ statusCode: 500, message: error.message })
  }

  const settings: Record<string, unknown> = {}
  for (const row of data ?? []) {
    settings[row.key] = row.value
  }

  return settings
})
