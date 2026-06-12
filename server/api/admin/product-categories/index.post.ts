export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const body = await readBody(event)

  const { data, error } = await supabase
    .from('product_categories')
    .insert(body)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
