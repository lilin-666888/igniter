import {
  injectLineupIntoPage,
  rowToLineupItemAdmin,
  rowToProductPage,
  type ProductLineupItemRow,
  type ProductPageRow,
} from './product-page'

export async function fetchProductPageWithLineup(
  supabase: ReturnType<typeof useSupabasePublic>,
  row: ProductPageRow,
  options?: { publishedOnly?: boolean },
) {
  let page = rowToProductPage(row)

  if (row.page_type !== 'category') {
    return page
  }

  let query = supabase
    .from('product_lineup_items')
    .select('*')
    .eq('page_id', row.id)
    .order('sort_order')

  if (options?.publishedOnly) {
    query = query.eq('published', true)
  }

  const { data: lineupRows, error } = await query

  if (error) throw createError({ statusCode: 500, message: error.message })
  if (!lineupRows?.length) return page

  return injectLineupIntoPage(page, lineupRows as ProductLineupItemRow[])
}

export async function fetchLineupItemsForAdmin(
  supabase: { from: ReturnType<typeof useSupabasePublic>['from'] },
  pageId: string,
) {
  const { data, error } = await supabase
    .from('product_lineup_items')
    .select('*')
    .eq('page_id', pageId)
    .order('sort_order')

  if (error) throw createError({ statusCode: 500, message: error.message })
  return (data ?? []).map(row => rowToLineupItemAdmin(row as ProductLineupItemRow))
}
