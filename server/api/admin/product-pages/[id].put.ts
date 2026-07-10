import { bodyToProductPageRow } from '../../../utils/product-page'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const id = getRouterParam(event, 'id')
  if (!id) throw createError({ statusCode: 400, message: 'Missing id' })

  const body = await readBody(event)
  const row = bodyToProductPageRow(body)

  const { data, error } = await supabase
    .from('product_pages')
    .update(row)
    .eq('id', id)
    .select()
    .single()

  if (error) throw createError({ statusCode: 500, message: error.message })
  return data
})
