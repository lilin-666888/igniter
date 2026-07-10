import type { ProductPageRow } from '../../../utils/product-page'
import { rowToProductPage } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const slug = getRouterParam(event, 'slug')
  if (!slug) throw createError({ statusCode: 400, message: 'Missing slug' })

  const supabase = useSupabasePublic()

  const { data, error } = await supabase
    .from('product_pages')
    .select('*')
    .eq('slug', slug)
    .eq('published', true)
    .maybeSingle()

  if (error) throw createError({ statusCode: 500, message: error.message })
  if (!data) throw createError({ statusCode: 404, message: 'Product not found' })

  return { page: rowToProductPage(data as ProductPageRow) }
})
