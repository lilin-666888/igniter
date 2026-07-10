import type { ProductPage } from '~/data/products/types'

const cmsFetchOptions = {
  getCachedData: () => undefined,
}

export type ProductCategory = {
  id: string
  slug: string
  title: string
  description: string
  meta: string
  emoji: string
  href: string
  imagePath?: string | null
  sortOrder: number
}

export type ProductPageListItem = {
  id: string
  categoryId: string | null
  slug: string
  pageType: 'category' | 'sku'
  title: string
  sortOrder: number
  published: boolean
  updatedAt?: string
}

export type Paginated<T> = {
  items: T[]
  total: number
  page: number
  pageSize: number
  totalPages: number
}

export function useProductCategories(options?: { page?: number; limit?: number }) {
  const page = options?.page ?? 1
  const limit = options?.limit ?? 50

  const { data, error, refresh, status } = useFetch<Paginated<ProductCategory>>(
    () => `/api/cms/product-categories?page=${page}&limit=${limit}`,
    {
      key: `cms-product-categories-${page}-${limit}`,
      ...cmsFetchOptions,
    },
  )

  return {
    categories: computed(() => data.value?.items ?? []),
    pagination: computed(() => data.value),
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success'),
  }
}

export function useProductList(options: {
  categoryId?: MaybeRefOrGetter<string | undefined>
  categorySlug?: MaybeRefOrGetter<string | undefined>
  pageType?: MaybeRefOrGetter<'category' | 'sku' | undefined>
  page?: MaybeRefOrGetter<number>
  limit?: MaybeRefOrGetter<number>
}) {
  const categoryId = computed(() => toValue(options.categoryId))
  const categorySlug = computed(() => toValue(options.categorySlug))
  const pageType = computed(() => toValue(options.pageType))
  const page = computed(() => toValue(options.page) ?? 1)
  const limit = computed(() => toValue(options.limit) ?? 20)

  const { data, error, refresh, status } = useFetch<Paginated<ProductPageListItem>>(
    () => {
      const params = new URLSearchParams({
        page: String(page.value),
        limit: String(limit.value),
      })
      if (categoryId.value) params.set('category_id', categoryId.value)
      if (categorySlug.value) params.set('category_slug', categorySlug.value)
      if (pageType.value) params.set('page_type', pageType.value)
      return `/api/cms/products?${params}`
    },
    {
      key: () =>
        `cms-products-${categoryId.value ?? ''}-${categorySlug.value ?? ''}-${pageType.value ?? ''}-${page.value}-${limit.value}`,
      ...cmsFetchOptions,
      watch: [categoryId, categorySlug, pageType, page, limit],
    },
  )

  return {
    items: computed(() => data.value?.items ?? []),
    pagination: computed(() => data.value),
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success'),
  }
}

export function useProductPage(slug: MaybeRefOrGetter<string>) {
  const slugRef = computed(() => toValue(slug))
  const route = useRoute()

  const { data, error, refresh, status } = useFetch<{ page: ProductPage }>(
    () => `/api/cms/products/${slugRef.value}`,
    {
      key: () => `cms-product-${slugRef.value}`,
      ...cmsFetchOptions,
      watch: [() => route.fullPath, slugRef],
    },
  )

  const page = computed(() => data.value?.page)

  return {
    page,
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success' && !!page.value),
  }
}
