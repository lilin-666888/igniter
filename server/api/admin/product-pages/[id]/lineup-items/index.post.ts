import { lineupItemAdminToRow, rowToLineupItemAdmin } from '../../../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const pageId = getRouterParam(event, 'id')
  const body = await readBody(event)

  if (!pageId) throw createError({ statusCode: 400, message: 'Missing page id' })

  const row = lineupItemAdminToRow({
    pageId,
    name: String(body.name ?? '新产品'),
    icon: body.icon,
    description: body.description,
    chips: body.chips,
    materialLabel: body.material_label ?? body.materialLabel,
    materialPath: body.material_path ?? body.materialPath,
    linkPath: body.link_path ?? body.linkPath,
    linkPageId: body.link_page_id ?? body.linkPageId,
    linkLabel: body.link_label ?? body.linkLabel,
    imageSrc: body.image_src ?? body.imageSrc,
    flagship: body.flagship,
    badge: body.badge,
    sortOrder: body.sort_order ?? body.sortOrder,
    published: body.published,
  })

  const { data, error } = await supabase
    .from('product_lineup_items')
    .insert(row)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return rowToLineupItemAdmin(data)
})
