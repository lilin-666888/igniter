<script setup lang="ts">
import type { BenefitItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  lead?: string
  softBg?: boolean
  items: BenefitItem[]
}>()
</script>

<template>
  <ProductSectionShell
    :num="num"
    :heading-html="headingHtml"
    :lead="lead"
    :soft-bg="softBg"
  >
    <div class="benefits">
      <div v-for="item in items" :key="item.title" class="benefit">
        <div class="benefit-ico" />
        <div class="benefit-body">
          <h4>{{ item.title }}</h4>
          <p>{{ item.body }}</p>
        </div>
      </div>
    </div>
  </ProductSectionShell>
</template>
