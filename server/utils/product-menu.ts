export type ProductMenuGroupRow = {
  id: string
  slug: string
  label: string
  path: string
  sort_order: number
  published: boolean
  created_at?: string
  updated_at?: string
}

export type ProductMenuItemRow = {
  id: string
  group_id: string
  label: string
  path: string
  sort_order: number
  published: boolean
  created_at?: string
  updated_at?: string
}

export type ProductMenuGroup = {
  id: string
  slug: string
  label: string
  path: string
  sortOrder: number
  published: boolean
  items: ProductMenuItem[]
}

export type ProductMenuItem = {
  id: string
  groupId: string
  label: string
  path: string
  sortOrder: number
  published: boolean
}

export function slugFromProductPath(path: string) {
  return path.replace(/^\/products\//, '').replace(/#.*$/, '') || `group-${Date.now()}`
}

export function rowToMenuItem(row: ProductMenuItemRow): ProductMenuItem {
  return {
    id: row.id,
    groupId: row.group_id,
    label: row.label,
    path: row.path,
    sortOrder: row.sort_order,
    published: row.published,
  }
}

export function rowToMenuGroup(
  row: ProductMenuGroupRow,
  items: ProductMenuItemRow[] = [],
): ProductMenuGroup {
  return {
    id: row.id,
    slug: row.slug,
    label: row.label,
    path: row.path,
    sortOrder: row.sort_order,
    published: row.published,
    items: items.map(rowToMenuItem),
  }
}

export function groupsToNavGroups(groups: ProductMenuGroup[]) {
  return groups.map(group => ({
    label: group.label,
    to: group.path,
    links: group.items
      .filter(item => item.published && item.path)
      .map(item => ({
        label: item.label,
        to: item.path,
      })),
  }))
}
