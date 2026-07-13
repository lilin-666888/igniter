<script setup lang="ts">
const route = useRoute()
const slug = computed(() => String(route.params.slug))

const { page, error } = await useProductPage(slug)

if (error.value || !page.value) {
  throw createError({ statusCode: 404, statusMessage: 'Product not found' })
}

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
