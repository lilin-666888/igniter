<script setup lang="ts">
import type { RelatedItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  items: RelatedItem[]
}>()
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml">
    <div class="rel-grid">
      <NuxtLink
        v-for="item in items"
        :key="item.to"
        class="rel-card"
        :to="item.to"
      >
        <div class="rel-eyebrow">{{ item.eyebrow }}</div>
        <div class="rel-title">{{ item.title }}</div>
        <div class="rel-desc">{{ item.desc }}</div>
        <div class="rel-link">View →</div>
      </NuxtLink>
    </div>
  </ProductSectionShell>
</template>
