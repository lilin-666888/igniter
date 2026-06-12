export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const key = getRouterParam(event, 'key')
  const body = await readBody(event)

  if (!key) {
    throw createError({ statusCode: 400, message: '缺少 key' })
  }

  const { error } = await supabase
    .from('site_settings')
    .upsert({ key, value: body.value }, { onConflict: 'key' })

  if (error) {
    throw createError({ statusCode: 500, message: error.message })
  }

  return { ok: true }
})
