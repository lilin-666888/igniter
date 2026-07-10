<script setup lang="ts">
import type { CertCard } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  lead?: string
  items: CertCard[]
}>()
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml" :lead="lead">
    <div class="cert-grid">
      <div v-for="item in items" :key="item.mark" class="cert-card">
        <div class="cc-mark">{{ item.mark }}</div>
        <div class="cc-scope">{{ item.scope }}</div>
        <div class="cc-tag">{{ item.tag }}</div>
      </div>
    </div>
  </ProductSectionShell>
</template>
