<script setup lang="ts">
import type { DownloadItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  softBg?: boolean
  sectionId?: string
  items: DownloadItem[]
}>()
</script>

<template>
  <ProductSectionShell
    :section-id="sectionId"
    :num="num"
    :heading-html="headingHtml"
    :soft-bg="softBg"
  >
    <p class="sec-lead">
      Everything your engineering and procurement teams need. Email
      <CmsEmail /> for STEP/DWG files.
    </p>
    <div class="dl-grid">
      <a
        v-for="item in items"
        :key="item.name"
        class="dl-card"
        :href="item.to || '#quote'"
      >
        <div class="dl-icon">{{ item.icon }}</div>
        <div class="dl-name">{{ item.name }}</div>
        <div class="dl-meta">{{ item.meta }}</div>
        <div class="dl-btn">{{ item.btn }}</div>
      </a>
    </div>
  </ProductSectionShell>
</template>
