<script setup lang="ts">
import type { SpecCard, SpecGridGroup } from '~/data/products/types'

const props = defineProps<{
  num: string
  headingHtml: string
  lead?: string
  columns?: 2 | 3
  items?: SpecCard[]
  groups?: SpecGridGroup[]
  footnote?: string
}>()

const gridClass = computed(() => {
  if (props.columns === 2) return 'b-grid b-grid--cols-2'
  return 'b-grid'
})

function headClass(card: SpecCard) {
  return card.headGradient ? 'b-head b-head--gradient' : 'b-head'
}
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml" :lead="lead">
    <template v-if="groups?.length">
      <template v-for="group in groups" :key="group.label">
        <div class="spec-group-head">
          <div
            class="spec-group-label"
            :class="
              group.labelVariant && group.labelVariant !== 'default'
                ? `spec-group-label--${group.labelVariant}`
                : ''
            "
          >
            {{ group.label }}
          </div>
          <span v-if="group.note" class="spec-group-note">{{ group.note }}</span>
        </div>
        <div :class="gridClass">
          <div
            v-for="card in group.items"
            :key="card.model"
            class="b-card"
            :class="{ featured: card.featured }"
          >
            <div v-if="card.badge" class="b-badge">{{ card.badge }}</div>
            <div :class="headClass(card)">
              <div class="b-model">{{ card.model }}</div>
              <div class="b-volt">{{ card.subtitle }}</div>
            </div>
            <div class="b-img-slot">
              <img v-if="card.imageSrc" :src="card.imageSrc" :alt="card.model" />
              <div v-else class="b-img-ph">
                <div class="bph-icon">{{ card.imageIcon || '◉' }}</div>
                <div class="bph-lbl">{{ card.imageLabel || 'Photo' }}</div>
              </div>
            </div>
            <div class="b-body">
              <div v-for="row in card.rows" :key="row.k" class="b-row">
                <span class="b-k">{{ row.k }}</span>
                <span class="b-v" :class="{ hot: row.hot }"
                  >{{ row.v }}<small v-if="row.unit">{{ row.unit }}</small></span
                >
              </div>
            </div>
            <div class="b-foot" v-html="card.foot" />
          </div>
        </div>
      </template>
    </template>

    <div v-else :class="gridClass">
      <div
        v-for="card in items"
        :key="card.model"
        class="b-card"
        :class="{ featured: card.featured }"
      >
        <div v-if="card.badge" class="b-badge">{{ card.badge }}</div>
        <div :class="headClass(card)">
          <div class="b-model">{{ card.model }}</div>
          <div class="b-volt">{{ card.subtitle }}</div>
        </div>
        <div class="b-img-slot">
          <img v-if="card.imageSrc" :src="card.imageSrc" :alt="card.model" />
          <div v-else class="b-img-ph">
            <div class="bph-icon">{{ card.imageIcon || '◉' }}</div>
            <div class="bph-lbl">{{ card.imageLabel || 'Photo' }}</div>
          </div>
        </div>
        <div class="b-body">
          <div v-for="row in card.rows" :key="row.k" class="b-row">
            <span class="b-k">{{ row.k }}</span>
            <span class="b-v" :class="{ hot: row.hot }"
              >{{ row.v }}<small v-if="row.unit">{{ row.unit }}</small></span
            >
          </div>
        </div>
        <div class="b-foot" v-html="card.foot" />
      </div>
    </div>

    <p v-if="footnote" class="common-note">{{ footnote }}</p>
  </ProductSectionShell>
</template>
