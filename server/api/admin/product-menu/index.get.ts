import { rowToMenuGroup } from '../../../utils/product-menu'

export default defineEventHandler(async (event) => {
  const { supabase } = await requireAdmin(event)

  const { data: groups, error: groupsError } = await supabase
    .from('product_menu_groups')
    .select('*')
    .order('sort_order')

  if (groupsError) throw createError({ statusCode: 500, message: groupsError.message })

  const { data: items, error: itemsError } = await supabase
    .from('product_menu_items')
    .select('*')
    .order('sort_order')

  if (itemsError) throw createError({ statusCode: 500, message: itemsError.message })

  const itemsByGroup = new Map<string, typeof items>()
  for (const item of items ?? []) {
    const list = itemsByGroup.get(item.group_id) ?? []
    list.push(item)
    itemsByGroup.set(item.group_id, list)
  }

  return (groups ?? []).map(group =>
    rowToMenuGroup(group, itemsByGroup.get(group.id) ?? []),
  )
})
