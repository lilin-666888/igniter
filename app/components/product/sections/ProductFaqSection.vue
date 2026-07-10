<script setup lang="ts">
import type { FaqItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  softBg?: boolean
  items: FaqItem[]
}>()
</script>

<template>
  <ProductSectionShell
    :num="num"
    :heading-html="headingHtml"
    :soft-bg="softBg"
  >
    <div class="faq-grid">
      <div v-for="item in items" :key="item.q" class="faq-item">
        <div class="faq-q">{{ item.q }}</div>
        <div class="faq-a">{{ item.a }}</div>
      </div>
    </div>
  </ProductSectionShell>
</template>
