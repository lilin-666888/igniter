import type { SpecCard, SpecGridGroup } from '~/data/products/types'

export const SPEC_GRID_PAGE_SIZE = 9

export function paginateSlice<T>(items: T[], page: number, pageSize: number): T[] {
  const start = (page - 1) * pageSize
  return items.slice(start, start + pageSize)
}

export function paginateSpecGridGroups(
  groups: SpecGridGroup[],
  page: number,
  pageSize: number,
): SpecGridGroup[] {
  const flat = groups.flatMap(group =>
    group.items.map(card => ({ group, card })),
  )
  const pageSlice = paginateSlice(flat, page, pageSize)
  const map = new Map<string, SpecGridGroup>()

  for (const { group, card } of pageSlice) {
    const existing = map.get(group.label)
    if (existing) {
      existing.items.push(card)
    } else {
      map.set(group.label, {
        label: group.label,
        labelVariant: group.labelVariant,
        note: group.note,
        items: [card],
      })
    }
  }

  return [...map.values()]
}

export function countSpecGridItems(items?: SpecCard[], groups?: SpecGridGroup[]): number {
  if (groups?.length) {
    return groups.reduce((sum, group) => sum + group.items.length, 0)
  }
  return items?.length ?? 0
}
