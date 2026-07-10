<script setup lang="ts">
import type { BreadcrumbItem } from '~/data/products/types'

defineProps<{
  items: BreadcrumbItem[]
}>()
</script>

<template>
  <div class="breadcrumb">
    <div class="wrap">
      <template v-for="(item, index) in items" :key="index">
        <span v-if="index > 0" class="sep">/</span>
        <NuxtLink v-if="item.to" :to="item.to">{{ item.label }}</NuxtLink>
        <span v-else>{{ item.label }}</span>
      </template>
    </div>
  </div>
</template>
