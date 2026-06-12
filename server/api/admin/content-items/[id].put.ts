export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')
  const body = await readBody(event)

  const { data, error } = await supabase
    .from('content_items')
    .update({
      section: body.section,
      sort_order: body.sort_order,
      data: body.data,
      image_path: body.image_path,
      published: body.published,
    })
    .eq('id', id!)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
