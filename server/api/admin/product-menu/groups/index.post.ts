import { slugFromProductPath } from '../../../../utils/product-menu'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const body = await readBody(event)

  const path = String(body.path ?? '/products')
  const slug = String(body.slug ?? slugFromProductPath(path))

  const { data, error } = await supabase
    .from('product_menu_groups')
    .insert({
      slug,
      label: String(body.label ?? '新分类'),
      path,
      sort_order: Number(body.sort_order ?? 0),
      published: body.published !== false,
    })
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
