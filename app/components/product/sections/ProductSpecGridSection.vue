<script setup lang="ts">
import type { SpecCard, SpecGridGroup } from '~/data/products/types'
import SpecCardImageGallery from '~/components/product/SpecCardImageGallery.vue'
import { getSpecCardImages } from '~/utils/spec-card-images'
import {
  countSpecGridItems,
  paginateSlice,
  paginateSpecGridGroups,
  SPEC_GRID_PAGE_SIZE,
} from '~/utils/spec-grid-pagination'

const props = defineProps<{
  num: string
  headingHtml: string
  lead?: string
  columns?: 2 | 3
  items?: SpecCard[]
  groups?: SpecGridGroup[]
  footnote?: string
}>()

const currentPage = ref(1)
const gridAnchor = ref<HTMLElement | null>(null)

const gridClass = computed(() => {
  if (props.columns === 2) return 'b-grid b-grid--cols-2'
  return 'b-grid'
})

const totalItems = computed(() => countSpecGridItems(props.items, props.groups))
const showPagination = computed(() => totalItems.value > SPEC_GRID_PAGE_SIZE)

const displayGroups = computed(() => {
  const groups = props.groups ?? []
  if (!groups.length) return []
  if (!showPagination.value) return groups
  return paginateSpecGridGroups(groups, currentPage.value, SPEC_GRID_PAGE_SIZE)
})

const displayItems = computed(() => {
  const items = props.items ?? []
  if (!showPagination.value) return items
  return paginateSlice(items, currentPage.value, SPEC_GRID_PAGE_SIZE)
})

watch(
  () => [props.items, props.groups],
  () => {
    currentPage.value = 1
  },
  { deep: true },
)

function headClass(card: SpecCard) {
  return card.headGradient ? 'b-head b-head--gradient' : 'b-head'
}

function onPageChange(page: number) {
  currentPage.value = page
  nextTick(() => {
    gridAnchor.value?.scrollIntoView({ behavior: 'smooth', block: 'start' })
  })
}
</script>

<template>
  <ProductSectionShell :num="num" :heading-html="headingHtml" :lead="lead">
    <div ref="gridAnchor" class="spec-grid-content">
      <template v-if="groups?.length">
        <template v-for="group in displayGroups" :key="group.label">
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
                <SpecCardImageGallery
                  :images="getSpecCardImages(card)"
                  :alt="card.model"
                  :image-icon="card.imageIcon"
                  :image-label="card.imageLabel"
                />
              </div>
              <div class="b-body">
                <div v-for="row in card.rows" :key="row.k" class="b-row">
                  <span class="b-k">{{ row.k }}</span>
                  <span class="b-v" :class="{ hot: row.hot }">
                    {{ row.v }}<small v-if="row.unit">{{ row.unit }}</small>
                  </span>
                </div>
              </div>
              <div class="b-foot" v-html="card.foot" />
            </div>
          </div>
        </template>
      </template>

      <div v-else :class="gridClass">
        <div
          v-for="card in displayItems"
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
            <SpecCardImageGallery
              :images="getSpecCardImages(card)"
              :alt="card.model"
              :image-icon="card.imageIcon"
              :image-label="card.imageLabel"
            />
          </div>
          <div class="b-body">
            <div v-for="row in card.rows" :key="row.k" class="b-row">
              <span class="b-k">{{ row.k }}</span>
              <span class="b-v" :class="{ hot: row.hot }">
                {{ row.v }}<small v-if="row.unit">{{ row.unit }}</small>
              </span>
            </div>
          </div>
          <div class="b-foot" v-html="card.foot" />
        </div>
      </div>

      <div v-if="showPagination" class="spec-grid-pagination">
        <a-pagination
          :current="currentPage"
          :total="totalItems"
          :page-size="SPEC_GRID_PAGE_SIZE"
          :show-size-changer="false"
          :show-total="(total: number) => `${total} models`"
          @change="onPageChange"
        />
      </div>
    </div>

    <p v-if="footnote" class="common-note">{{ footnote }}</p>
  </ProductSectionShell>
</template>
