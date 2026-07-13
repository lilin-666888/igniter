import type { LineupItem, ProductPage, ProductPageType } from '~/data/products/types'

export type ProductLineupItemRow = {
  id: string
  page_id: string
  name: string
  icon: string
  description: string
  chips: string[]
  material_label: string | null
  material_path: string | null
  link_path: string | null
  link_page_id: string | null
  link_label: string
  image_src: string | null
  flagship: boolean
  badge: string | null
  sort_order: number
  published: boolean
}

export type ProductLineupItemAdmin = {
  id: string
  pageId: string
  name: string
  icon: string
  description: string
  chips: string[]
  materialLabel?: string | null
  materialPath?: string | null
  linkPath?: string | null
  linkPageId?: string | null
  linkLabel: string
  imageSrc?: string | null
  flagship: boolean
  badge?: string | null
  sortOrder: number
  published: boolean
}

export type ProductPageRow = {
  id: string
  category_id: string | null
  slug: string
  page_type: ProductPageType
  parent_slug: string | null
  parent_label: string | null
  seo: ProductPage['seo']
  breadcrumb: ProductPage['breadcrumb']
  hero: ProductPage['hero']
  hero_side: ProductPage['heroSide']
  hero_ctas: ProductPage['heroCtas'] | null
  spotlight: ProductPage['spotlight'] | null
  sections: ProductPage['sections']
  sort_order: number
  published: boolean
  created_at?: string
  updated_at?: string
}

export type ProductPageListItem = {
  id: string
  categoryId: string | null
  slug: string
  pageType: ProductPageType
  title: string
  sortOrder: number
  published: boolean
  updatedAt?: string
}

export function rowToLineupItem(row: ProductLineupItemRow): LineupItem {
  return {
    name: row.name,
    icon: row.icon,
    desc: row.description,
    chips: row.chips ?? [],
    materialLabel: row.material_label ?? undefined,
    materialTo: row.material_path ?? undefined,
    linkTo: row.link_path ?? undefined,
    linkLabel: row.link_label,
    imageSrc: row.image_src ?? undefined,
    flagship: row.flagship,
    badge: row.badge ?? undefined,
  }
}

export function rowToLineupItemAdmin(row: ProductLineupItemRow): ProductLineupItemAdmin {
  return {
    id: row.id,
    pageId: row.page_id,
    name: row.name,
    icon: row.icon,
    description: row.description,
    chips: row.chips ?? [],
    materialLabel: row.material_label,
    materialPath: row.material_path,
    linkPath: row.link_path,
    linkPageId: row.link_page_id,
    linkLabel: row.link_label,
    imageSrc: row.image_src,
    flagship: row.flagship,
    badge: row.badge,
    sortOrder: row.sort_order,
    published: row.published,
  }
}

export function lineupItemAdminToRow(
  item: Partial<ProductLineupItemAdmin> & { pageId: string; name: string },
) {
  return {
    page_id: item.pageId,
    name: item.name,
    icon: item.icon ?? '📦',
    description: item.description ?? '',
    chips: item.chips ?? [],
    material_label: item.materialLabel ?? null,
    material_path: item.materialPath ?? null,
    link_path: item.linkPath ?? null,
    link_page_id: item.linkPageId ?? null,
    link_label: item.linkLabel ?? 'View Details →',
    image_src: item.imageSrc ?? null,
    flagship: item.flagship ?? false,
    badge: item.badge ?? null,
    sort_order: item.sortOrder ?? 0,
    published: item.published !== false,
  }
}

export function injectLineupIntoPage(page: ProductPage, lineupRows: ProductLineupItemRow[]): ProductPage {
  if (!lineupRows.length) {
    return {
      ...page,
      sections: page.sections.filter(section => section.type !== 'lineup'),
    }
  }

  const items = lineupRows.map(rowToLineupItem)
  const existing = page.sections.find(section => section.type === 'lineup')
  const lineupSection = existing && existing.type === 'lineup'
    ? { ...existing, items }
    : {
        type: 'lineup' as const,
        num: '01 · Lineup',
        headingHtml: 'Product <span class="accent">lineup</span>',
        lead: '',
        items,
      }

  const sections = page.sections.some(section => section.type === 'lineup')
    ? page.sections.map(section => (section.type === 'lineup' ? lineupSection : section))
    : [lineupSection, ...page.sections]

  return { ...page, sections }
}

export function extractLineupFromSections(sections: ProductPage['sections']): LineupItem[] {
  const lineup = sections.find(section => section.type === 'lineup')
  return lineup && lineup.type === 'lineup' ? lineup.items : []
}

export function sectionsWithoutLineup(sections: ProductPage['sections']) {
  return sections.filter(section => section.type !== 'lineup')
}

function hasSpecGridContent(section: Extract<ProductPage['sections'][number], { type: 'spec-grid' }>) {
  if (section.items?.length) return true
  return section.groups?.some(group => group.items.length > 0) ?? false
}

/** Drop lineup / spec-grid sections when API has no list data to show. */
export function sanitizeProductPageSections(page: ProductPage): ProductPage {
  const sections = page.sections.filter((section) => {
    if (section.type === 'lineup') return section.items.length > 0
    if (section.type === 'spec-grid') return hasSpecGridContent(section)
    return true
  })
  return { ...page, sections }
}

export function rowToProductPage(row: ProductPageRow): ProductPage {
  return {
    slug: row.slug,
    pageType: row.page_type,
    parent:
      row.parent_slug && row.parent_label
        ? { slug: row.parent_slug, label: row.parent_label }
        : undefined,
    seo: row.seo ?? { title: '', description: '' },
    breadcrumb: row.breadcrumb ?? [],
    hero: row.hero ?? {
      eyebrow: '',
      title: '',
      subtitle: '',
      stats: [],
    },
    heroSide: row.hero_side ?? 'quote',
    heroCtas: row.hero_ctas ?? undefined,
    spotlight: row.spotlight ?? undefined,
    sections: row.sections ?? [],
  }
}

export function rowToListItem(row: ProductPageRow): ProductPageListItem {
  const hero = row.hero as ProductPage['hero'] | null
  const title =
    hero?.titleHighlight
      ? `${hero.title} ${hero.titleHighlight}`.trim()
      : hero?.title ?? row.slug

  return {
    id: row.id,
    categoryId: row.category_id,
    slug: row.slug,
    pageType: row.page_type,
    title,
    sortOrder: row.sort_order,
    published: row.published,
    updatedAt: row.updated_at,
  }
}

export function bodyToProductPageRow(body: Record<string, unknown>) {
  const sections = Array.isArray(body.sections) ? body.sections : []
  return {
    category_id: (body.category_id as string | null) ?? null,
    slug: body.slug as string,
    page_type: body.page_type as ProductPageType,
    parent_slug: (body.parent_slug as string | null) ?? null,
    parent_label: (body.parent_label as string | null) ?? null,
    seo: body.seo ?? {},
    breadcrumb: body.breadcrumb ?? [],
    hero: body.hero ?? {},
    hero_side: (body.hero_side as ProductPage['heroSide']) ?? 'quote',
    hero_ctas: body.hero_ctas ?? null,
    spotlight: body.spotlight ?? null,
    sections: sectionsWithoutLineup(sections as ProductPage['sections']),
    sort_order: Number(body.sort_order ?? 0),
    published: body.published !== false,
  }
}

export function productPageToBody(page: ProductPage, categoryId?: string | null) {
  return {
    category_id: categoryId ?? null,
    slug: page.slug,
    page_type: page.pageType,
    parent_slug: page.parent?.slug ?? null,
    parent_label: page.parent?.label ?? null,
    seo: page.seo,
    breadcrumb: page.breadcrumb,
    hero: page.hero,
    hero_side: page.heroSide,
    hero_ctas: page.heroCtas ?? null,
    spotlight: page.spotlight ?? null,
    sections: page.sections,
  }
}
