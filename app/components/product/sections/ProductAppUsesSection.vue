<script setup lang="ts">
import type { AppUseItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  lead?: string
  items: AppUseItem[]
}>()
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml" :lead="lead">
    <div class="app-uses">
      <component
        :is="item.to ? 'NuxtLink' : 'div'"
        v-for="item in items"
        :key="item.title"
        class="app-use"
        :to="item.to"
      >
        <div class="app-use-bar" />
        <div class="app-use-icon">{{ item.icon }}</div>
        <div class="app-use-title">{{ item.title }}</div>
        <p class="app-use-desc">{{ item.desc }}</p>
        <div class="app-use-grade">
          <b>Application →</b> {{ item.grade }}
        </div>
      </component>
    </div>
  </ProductSectionShell>
</template>
