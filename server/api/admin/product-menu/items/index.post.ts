export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const body = await readBody(event)

  if (!body.group_id) {
    throw createError({ statusCode: 400, message: '缺少 group_id' })
  }

  const { data, error } = await supabase
    .from('product_menu_items')
    .insert({
      group_id: String(body.group_id),
      label: String(body.label ?? '新菜单项'),
      path: String(body.path ?? ''),
      sort_order: Number(body.sort_order ?? 0),
      published: body.published !== false,
    })
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
