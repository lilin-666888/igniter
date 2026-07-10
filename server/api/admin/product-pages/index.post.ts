import { bodyToProductPageRow } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const body = await readBody(event)

  if (!body?.slug || !body?.page_type) {
    throw createError({ statusCode: 400, message: 'slug 和 page_type 必填' })
  }

  const row = bodyToProductPageRow(body)

  const { data, error } = await supabase
    .from('product_pages')
    .insert(row)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
