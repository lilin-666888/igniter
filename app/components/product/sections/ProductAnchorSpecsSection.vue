<script setup lang="ts">
import type { AnchorSpecsTable, BenefitItem } from '~/data/products/types'

defineProps<{
  num: string
  headingHtml: string
  lead?: string
  sectionId: string
  table: AnchorSpecsTable
  items?: BenefitItem[]
  softBg?: boolean
}>()
</script>

<template>
  <ProductSectionShell
    :section-id="sectionId"
    :num="num"
    :heading-html="headingHtml"
    :lead="lead"
    :soft-bg="softBg"
  >
    <table class="anchor-spec-table">
      <thead>
        <tr>
          <th v-for="header in table.headers" :key="header">{{ header }}</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="(row, rowIndex) in table.rows" :key="rowIndex">
          <td v-for="(cell, cellIndex) in row" :key="cellIndex">{{ cell }}</td>
        </tr>
      </tbody>
    </table>
    <div v-if="items?.length" class="benefits">
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
