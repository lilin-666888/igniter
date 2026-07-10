<script setup lang="ts">
import { getProductPage } from '~/data/products/registry'

const route = useRoute()
const slug = computed(() => String(route.params.slug))

const { page: cmsPage, loaded, error, status } = useProductPage(slug)
const fallbackPage = computed(() => getProductPage(slug.value))

const page = computed(() => {
  if (cmsPage.value) return cmsPage.value
  if (status.value === 'pending' || (status.value === 'idle' && !error.value)) {
    return fallbackPage.value
  }
  if (error.value && fallbackPage.value) return fallbackPage.value
  return cmsPage.value ?? fallbackPage.value
})

watchEffect(() => {
  if (status.value === 'error' && !page.value) {
    throw createError({ statusCode: 404, statusMessage: 'Product not found' })
  }
})

useHead({
  title: () => page.value?.seo.title ?? 'Product',
  meta: [
    {
      name: 'description',
      content: () => page.value?.seo.description ?? '',
    },
    ...(page.value?.seo.keywords
      ? [{ name: 'keywords', content: page.value.seo.keywords }]
      : []),
  ],
})
</script>

<template>
  <ProductPageRenderer v-if="page" :page="page" />
</template>
