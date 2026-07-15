import { attachProductBreadcrumb } from '../../../utils/product-breadcrumb'
import { fetchLineupItemsForAdmin } from '../../../utils/product-lineup'
import { rowToProductPage, sectionsWithoutLineup, type ProductPageRow } from '../../../utils/product-page'
import { defaultProductSections } from '~/utils/default-product-sections'

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

  let page = rowToProductPage(data as ProductPageRow)
  page.sections = sectionsWithoutLineup(page.sections)
  if (page.sections.length === 0) {
    page.sections = defaultProductSections(page.pageType)
  }
  page = await attachProductBreadcrumb(supabase, page, data.category_id)

  const lineupItems =
    data.page_type === 'category'
      ? await fetchLineupItemsForAdmin(supabase, id)
      : []

  return {
    id: data.id,
    category_id: data.category_id,
    sort_order: data.sort_order,
    published: data.published,
    page,
    lineupItems,
  }
})
