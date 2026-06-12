export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const { data, error } = await supabase
    .from('inquiries')
    .select('*')
    .order('created_at', { ascending: false })

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
