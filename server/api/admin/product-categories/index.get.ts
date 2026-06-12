export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const { data, error } = await supabase
    .from('product_categories')
    .select('*')
    .order('sort_order')

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
