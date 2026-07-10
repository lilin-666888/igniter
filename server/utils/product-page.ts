import type { ProductPage, ProductPageType } from '~/data/products/types'

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
    sections: body.sections ?? [],
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
