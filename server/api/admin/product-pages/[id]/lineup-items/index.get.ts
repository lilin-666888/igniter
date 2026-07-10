import { fetchLineupItemsForAdmin } from '../../../../../utils/product-lineup'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)
  const pageId = getRouterParam(event, 'id')
  if (!pageId) throw createError({ statusCode: 400, message: 'Missing page id' })

  return fetchLineupItemsForAdmin(supabase, pageId)
})
