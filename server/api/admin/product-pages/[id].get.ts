import type { ProductPageRow } from '../../../utils/product-page'
import { rowToProductPage } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')
  if (!id) throw createError({ statusCode: 400, message: 'Missing id' })

  const { data, error } = await supabase
    .from('product_pages')
    .select('*')
    .eq('id', id)
    .maybeSingle()

  if (error) throw createError({ statusCode: 500, message: error.message })
  if (!data) throw createError({ statusCode: 404, message: '页面不存在' })

  return {
    id: data.id,
    category_id: data.category_id,
    sort_order: data.sort_order,
    published: data.published,
    page: rowToProductPage(data as ProductPageRow),
  }
})
