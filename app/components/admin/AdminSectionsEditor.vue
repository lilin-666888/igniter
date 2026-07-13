<script setup lang="ts">
import type { ProductSection } from '~/data/products/types'
import type { SpecGridSection } from '~/components/admin/AdminSpecGridEditor.vue'

const props = defineProps<{
  modelValue: ProductSection[]
}>()

const emit = defineEmits<{
  'update:modelValue': [value: ProductSection[]]
}>()

const sections = computed({
  get: () => props.modelValue,
  set: (val: ProductSection[]) => emit('update:modelValue', val),
})

const sectionTypeLabels: Record<string, string> = {
  'spec-grid': '产品规格（Spec Grid）',
  benefits: '优势（Benefits）',
  'grade-guide': '等级指南',
  'app-uses': '应用场景',
  faq: '常见问题（FAQ）',
  casecta: '案例 CTA',
  'anchor-specs': '锚点规格表',
  downloads: '下载资料',
  'cert-grid': '认证展示',
  quote: '报价模块',
  related: '相关产品',
  lineup: '产品列表（内嵌）',
}

function sectionTitle(section: ProductSection, index: number) {
  const label = sectionTypeLabels[section.type] ?? section.type
  const num = 'num' in section && section.num ? ` — ${section.num}` : ''
  return `${index + 1}. ${label}${num}`
}

function updateSection(index: number, value: ProductSection) {
  const next = [...sections.value]
  next[index] = value
  sections.value = next
}

function updateSpecGrid(index: number, value: SpecGridSection) {
  updateSection(index, value)
}
</script>

<template>
  <div class="sections-editor">
    <a-empty v-if="sections.length === 0" description="暂无页面模块" />

    <a-card
      v-for="(section, index) in sections"
      :key="index"
      :title="sectionTitle(section, index)"
      size="small"
      style="margin-bottom: 16px"
    >
      <AdminSpecGridEditor
        v-if="section.type === 'spec-grid'"
        :model-value="section"
        @update:model-value="updateSpecGrid(index, $event)"
      />
      <template v-else>
        <a-typography-paragraph type="secondary" style="margin-bottom: 12px">
          此模块类型暂用 JSON 编辑。如需表格化编辑可后续扩展。
        </a-typography-paragraph>
        <AdminJsonEditor
          :model-value="section"
          @update:model-value="updateSection(index, $event as ProductSection)"
        />
      </template>
    </a-card>
  </div>
</template>
