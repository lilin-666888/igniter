export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')

  const { error } = await supabase.from('product_categories').delete().eq('id', id!)
  if (error) throw createError({ statusCode: 500, message: error.message })
  return { ok: true }
})
