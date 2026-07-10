import { lineupItemAdminToRow, rowToLineupItemAdmin } from '../../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')
  const body = await readBody(event)

  const { data: existing, error: fetchError } = await supabase
    .from('product_lineup_items')
    .select('page_id')
    .eq('id', id!)
    .maybeSingle()

  if (fetchError) throw createError({ statusCode: 500, message: fetchError.message })
  if (!existing) throw createError({ statusCode: 404, message: '产品不存在' })

  const row = lineupItemAdminToRow({
    pageId: existing.page_id,
    name: String(body.name ?? '新产品'),
    icon: body.icon,
    description: body.description,
    chips: body.chips,
    materialLabel: body.material_label ?? body.materialLabel,
    materialPath: body.material_path ?? body.materialPath,
    linkPath: body.link_path ?? body.linkPath,
    linkPageId: body.link_page_id ?? body.linkPageId,
    linkLabel: body.link_label ?? body.linkLabel,
    flagship: body.flagship,
    badge: body.badge,
    sortOrder: body.sort_order ?? body.sortOrder,
    published: body.published,
  })

  const { data, error } = await supabase
    .from('product_lineup_items')
    .update(row)
    .eq('id', id!)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return rowToLineupItemAdmin(data)
})
