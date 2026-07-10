import { paginatedResponse, parsePagination } from '../../../utils/pagination'
import { rowToListItem, rowToProductPage } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const query = getQuery(event)
  const { page, pageSize, from, to } = parsePagination(query)

  let dbQuery = supabase
    .from('product_pages')
    .select('*', { count: 'exact' })
    .order('sort_order')

  if (query.category_id && typeof query.category_id === 'string') {
    dbQuery = dbQuery.eq('category_id', query.category_id)
  }

  if (query.page_type && typeof query.page_type === 'string') {
    dbQuery = dbQuery.eq('page_type', query.page_type)
  }

  if (query.search && typeof query.search === 'string') {
    dbQuery = dbQuery.or(
      `slug.ilike.%${query.search}%,parent_label.ilike.%${query.search}%`,
    )
  }

  const { data, error, count } = await dbQuery.range(from, to)

  if (error) throw createError({ statusCode: 500, message: error.message })

  return paginatedResponse(
    (data ?? []).map(rowToListItem),
    count ?? 0,
    page,
    pageSize,
  )
})
