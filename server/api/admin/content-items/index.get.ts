export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const query = getQuery(event)
  const section = query.section as string | undefined

  let q = supabase
    .from('content_items')
    .select('*')
    .order('sort_order')

  if (section) {
    q = q.eq('section', section)
  }

  const { data, error } = await q
  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
