import { slugFromProductPath } from '../../../../utils/product-menu'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')
  const body = await readBody(event)

  const updates: Record<string, unknown> = {}
  if (body.label !== undefined) updates.label = String(body.label)
  if (body.path !== undefined) {
    updates.path = String(body.path)
    if (body.slug === undefined) updates.slug = slugFromProductPath(String(body.path))
  }
  if (body.slug !== undefined) updates.slug = String(body.slug)
  if (body.sort_order !== undefined) updates.sort_order = Number(body.sort_order)
  if (body.published !== undefined) updates.published = Boolean(body.published)

  const { data, error } = await supabase
    .from('product_menu_groups')
    .update(updates)
    .eq('id', id!)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
