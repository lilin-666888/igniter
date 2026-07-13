<script setup lang="ts">
import type { LineupItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  lead?: string
  items: LineupItem[]
}>()
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml" :lead="lead">
    <div class="lineup">
      <div
        v-for="item in items"
        :key="item.name"
        class="lineup-card"
        :class="{ flagship: item.flagship }"
      >
        <div v-if="item.badge" class="lineup-badge">{{ item.badge }}</div>
        <div class="lineup-head">
          <div v-if="item.icon" class="lineup-icon">{{ item.icon }}</div>
          <div>
            <div class="lineup-name">{{ item.name }}</div>
          </div>
        </div>
        <div class="lineup-img-slot">
          <img v-if="item.imageSrc" :src="item.imageSrc" :alt="item.name">
          <div v-else class="lineup-img-ph">
            <div class="ph-icon">{{ item.icon || '◉' }}</div>
            <div class="ph-lbl">Photo Placeholder</div>
          </div>
        </div>
        <p class="lineup-desc">{{ item.desc }}</p>
        <div class="lineup-specs">
          <span v-for="chip in item.chips" :key="chip" class="spec-chip">{{
            chip
          }}</span>
        </div>
        <div class="lineup-foot">
          <span v-if="item.materialLabel" class="lineup-mat"
            ><b>Material:</b>
            <NuxtLink v-if="item.materialTo" :to="item.materialTo">{{
              item.materialLabel
            }}</NuxtLink>
            <template v-else>{{ item.materialLabel }}</template>
          </span>
          <NuxtLink
            v-if="item.linkTo"
            class="lineup-link"
            :to="item.linkTo"
            >{{ item.linkLabel || 'Get a quote →' }}</NuxtLink
          >
        </div>
      </div>
    </div>
  </ProductSectionShell>
</template>
