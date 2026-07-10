import { paginatedResponse, parsePagination } from '../../../utils/pagination'
import { rowToListItem } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const supabase = useSupabasePublic()
  const query = getQuery(event)
  const { page, pageSize, from, to } = parsePagination(query)

  let dbQuery = supabase
    .from('product_pages')
    .select('id, category_id, slug, page_type, hero, sort_order, published, updated_at', {
      count: 'exact',
    })
    .eq('published', true)
    .order('sort_order')

  if (query.category_id && typeof query.category_id === 'string') {
    dbQuery = dbQuery.eq('category_id', query.category_id)
  }

  if (query.category_slug && typeof query.category_slug === 'string') {
    const { data: cat } = await supabase
      .from('product_menu_groups')
      .select('id')
      .eq('slug', query.category_slug)
      .eq('published', true)
      .maybeSingle()

    if (cat?.id) {
      dbQuery = dbQuery.eq('category_id', cat.id)
    } else {
      return paginatedResponse([], 0, page, pageSize)
    }
  }

  if (query.page_type && typeof query.page_type === 'string') {
    dbQuery = dbQuery.eq('page_type', query.page_type)
  }

  const { data, error, count } = await dbQuery.range(from, to)

  if (error) throw createError({ statusCode: 500, message: error.message })

  return paginatedResponse(
    (data ?? []).map(row => rowToListItem(row as Parameters<typeof rowToListItem>[0])),
    count ?? 0,
    page,
    pageSize,
  )
})
