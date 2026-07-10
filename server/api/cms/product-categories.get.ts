import { paginatedResponse, parsePagination } from '../../utils/pagination'

export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const supabase = useSupabasePublic()
  const query = getQuery(event)
  const { page, pageSize, from, to } = parsePagination(query)

  let dbQuery = supabase
    .from('product_categories')
    .select('id, slug, title, description, meta, emoji, href, image_path, sort_order', {
      count: 'exact',
    })
    .eq('published', true)
    .order('sort_order')

  const { data, error, count } = await dbQuery.range(from, to)

  if (error) throw createError({ statusCode: 500, message: error.message })

  return paginatedResponse(
    (data ?? []).map(row => ({
      id: row.id,
      slug: row.slug,
      title: row.title,
      description: row.description,
      meta: row.meta,
      emoji: row.emoji,
      href: row.href,
      imagePath: row.image_path,
      sortOrder: row.sort_order,
    })),
    count ?? 0,
    page,
    pageSize,
  )
})
