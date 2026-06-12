export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const body = await readBody(event)

  const { data, error } = await supabase
    .from('content_items')
    .insert({
      section: body.section,
      sort_order: body.sort_order ?? 0,
      data: body.data ?? {},
      image_path: body.image_path ?? null,
      published: body.published ?? true,
    })
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
