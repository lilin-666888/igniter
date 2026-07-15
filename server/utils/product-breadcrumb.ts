import type { BreadcrumbItem, ProductPage } from '~/data/products/types'

export type ProductCategoryRef = {
  label: string
  path: string
}

export function productPageDisplayLabel(page: ProductPage): string {
  const fromSeo = page.seo.title?.split('|')[0]?.trim()
  if (fromSeo) return fromSeo

  const hero = page.hero
  const combined = hero.titleHighlight
    ? `${hero.title}${hero.titleHighlight}`
    : hero.title

  return combined.replace(/,\s*$/, '').trim() || page.slug
}

export function buildProductBreadcrumb(
  page: ProductPage,
  category?: ProductCategoryRef | null,
): BreadcrumbItem[] {
  const items: BreadcrumbItem[] = [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
  ]

  if (page.pageType === 'category') {
    items.push({ label: category?.label ?? productPageDisplayLabel(page) })
    return items
  }

  const categoryLabel = category?.label ?? page.parent?.label
  const categoryPath =
    category?.path ?? (page.parent?.slug ? `/products/${page.parent.slug}` : undefined)

  if (categoryLabel) {
    items.push({
      label: categoryLabel,
      ...(categoryPath ? { to: categoryPath } : {}),
    })
  }

  items.push({ label: productPageDisplayLabel(page) })
  return items
}

export async function fetchProductCategoryGroup(
  supabase: ReturnType<typeof useSupabasePublic>,
  categoryId: string,
): Promise<ProductCategoryRef | null> {
  const { data, error } = await supabase
    .from('product_menu_groups')
    .select('label, path')
    .eq('id', categoryId)
    .maybeSingle()

  if (error) throw createError({ statusCode: 500, message: error.message })
  if (!data) return null

  return { label: data.label, path: data.path }
}

export async function attachProductBreadcrumb(
  supabase: ReturnType<typeof useSupabasePublic>,
  page: ProductPage,
  categoryId: string | null,
): Promise<ProductPage> {
  const category = categoryId ? await fetchProductCategoryGroup(supabase, categoryId) : null

  return {
    ...page,
    breadcrumb: buildProductBreadcrumb(page, category),
  }
}
