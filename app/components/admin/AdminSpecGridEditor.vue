<script setup lang="ts">
import { Modal, message } from 'ant-design-vue'
import { PlusOutlined, UploadOutlined } from '@ant-design/icons-vue'
import type { SpecCard, SpecGridGroup } from '~/data/products/types'
import { getSpecCardImages } from '~/utils/spec-card-images'

export type SpecGridSection = {
  type: 'spec-grid'
  num: string
  headingHtml: string
  lead?: string
  columns?: 2 | 3
  items?: SpecCard[]
  groups?: SpecGridGroup[]
  footnote?: string
}

type SpecRowForm = {
  k: string
  v: string
  unit: string
  hot: boolean
}

type SpecCardForm = {
  model: string
  subtitle: string
  badge: string
  featured: boolean
  headGradient: boolean
  imageSrcs: string[]
  imageIcon: string
  imageLabel: string
  rows: SpecRowForm[]
  foot: string
}

const props = defineProps<{
  modelValue: SpecGridSection
}>()

const emit = defineEmits<{
  'update:modelValue': [value: SpecGridSection]
}>()

const { uploadImage } = useAdminApi()

const section = computed(() => props.modelValue)

const useGroups = computed(() => (section.value.groups?.length ?? 0) > 0)

function emitSection(next: SpecGridSection) {
  emit('update:modelValue', next)
}

const cardColumns = [
  { title: '型号', dataIndex: 'model', key: 'model' },
  { title: '副标题', dataIndex: 'subtitle', key: 'subtitle', ellipsis: true },
  { title: '角标', dataIndex: 'badge', key: 'badge', width: 140, ellipsis: true },
  { title: '图片', key: 'image', width: 72 },
  { title: '操作', key: 'actions', width: 140 },
]

const rowColumns = [
  { title: '参数名', key: 'k', width: 140 },
  { title: '值', key: 'v' },
  { title: '单位', key: 'unit', width: 100 },
  { title: '高亮', key: 'hot', width: 72 },
  { title: '', key: 'actions', width: 72 },
]

const cardModalOpen = ref(false)
const uploading = ref(false)
const editingCard = ref<SpecCardForm | null>(null)
const editingContext = ref<{ mode: 'items' } | { mode: 'groups'; groupIndex: number; cardIndex?: number } | null>(null)

function emptyCard(): SpecCardForm {
  return {
    model: '',
    subtitle: '',
    badge: '',
    featured: false,
    headGradient: false,
    imageSrcs: [],
    imageIcon: '🔥',
    imageLabel: '',
    rows: [],
    foot: '',
  }
}

function cardToForm(card: SpecCard): SpecCardForm {
  return {
    model: card.model,
    subtitle: card.subtitle,
    badge: card.badge ?? '',
    featured: card.featured ?? false,
    headGradient: card.headGradient ?? false,
    imageSrcs: getSpecCardImages(card),
    imageIcon: card.imageIcon ?? '🔥',
    imageLabel: card.imageLabel ?? '',
    rows: (card.rows ?? []).map(r => ({
      k: r.k,
      v: r.v,
      unit: r.unit ?? '',
      hot: r.hot ?? false,
    })),
    foot: card.foot ?? '',
  }
}

function formToCard(form: SpecCardForm): SpecCard {
  return {
    model: form.model,
    subtitle: form.subtitle,
    ...(form.badge ? { badge: form.badge } : {}),
    ...(form.featured ? { featured: true } : {}),
    ...(form.headGradient ? { headGradient: true } : {}),
    ...(form.imageSrcs.length ? { imageSrcs: form.imageSrcs } : {}),
    ...(form.imageIcon && !form.imageSrcs.length ? { imageIcon: form.imageIcon } : {}),
    ...(form.imageLabel && !form.imageSrcs.length ? { imageLabel: form.imageLabel } : {}),
    rows: form.rows.map(r => ({
      k: r.k,
      v: r.v,
      ...(r.unit ? { unit: r.unit } : {}),
      ...(r.hot ? { hot: true } : {}),
    })),
    foot: form.foot,
  }
}

function patchSection(patch: Partial<SpecGridSection>) {
  emitSection({ ...section.value, ...patch })
}

function ensureGroupsMode() {
  if (useGroups.value) return
  const items = section.value.items ?? []
  patchSection({
    groups: items.length
      ? [{ label: '默认分组', items }]
      : [{ label: '默认分组', items: [] }],
    items: undefined,
  })
}

function openCreateFlat() {
  editingContext.value = { mode: 'items' }
  editingCard.value = emptyCard()
  cardModalOpen.value = true
}

function openEditFlat(card: SpecCard, index: number) {
  editingContext.value = { mode: 'items' }
  editingCard.value = cardToForm(card)
  ;(editingCard.value as SpecCardForm & { _index?: number })._index = index
  cardModalOpen.value = true
}

function openCreateInGroup(groupIndex: number) {
  editingContext.value = { mode: 'groups', groupIndex }
  editingCard.value = emptyCard()
  cardModalOpen.value = true
}

function openEditInGroup(groupIndex: number, cardIndex: number, card: SpecCard) {
  editingContext.value = { mode: 'groups', groupIndex, cardIndex }
  editingCard.value = cardToForm(card)
  cardModalOpen.value = true
}

function saveCard() {
  if (!editingCard.value || !editingContext.value) return
  if (!editingCard.value.model.trim()) {
    message.error('请填写型号名称')
    return
  }

  const card = formToCard(editingCard.value)
  const next = { ...section.value }

  if (editingContext.value.mode === 'items') {
    const items = [...(next.items ?? [])]
    const idx = (editingCard.value as SpecCardForm & { _index?: number })._index
    if (typeof idx === 'number') items[idx] = card
    else items.push(card)
    next.items = items
    next.groups = undefined
  } else {
    const groups = [...(next.groups ?? [])]
    const gi = editingContext.value.groupIndex
    const group = { ...groups[gi], items: [...groups[gi].items] }
    if (typeof editingContext.value.cardIndex === 'number') {
      group.items[editingContext.value.cardIndex] = card
    } else {
      group.items.push(card)
    }
    groups[gi] = group
    next.groups = groups
    next.items = undefined
  }

  emitSection(next)
  cardModalOpen.value = false
  message.success('型号已更新，记得点击页面底部保存')
}

function removeFlat(index: number) {
  const items = [...(section.value.items ?? [])]
  const name = items[index]?.model ?? '该型号'
  Modal.confirm({
    title: `确定删除「${name}」？`,
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: () => {
      items.splice(index, 1)
      patchSection({ items })
    },
  })
}

function removeInGroup(groupIndex: number, cardIndex: number) {
  const groups = [...(section.value.groups ?? [])]
  const name = groups[groupIndex]?.items[cardIndex]?.model ?? '该型号'
  Modal.confirm({
    title: `确定删除「${name}」？`,
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: () => {
      const group = { ...groups[groupIndex], items: [...groups[groupIndex].items] }
      group.items.splice(cardIndex, 1)
      groups[groupIndex] = group
      patchSection({ groups })
    },
  })
}

function addGroup() {
  ensureGroupsMode()
  const groups = [...(section.value.groups ?? [])]
  groups.push({ label: '新分组', items: [] })
  patchSection({ groups, items: undefined })
}

function removeGroup(groupIndex: number) {
  const groups = [...(section.value.groups ?? [])]
  const label = groups[groupIndex]?.label ?? '该分组'
  Modal.confirm({
    title: `确定删除分组「${label}」？`,
    content: '分组内所有型号将一并删除。',
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: () => {
      groups.splice(groupIndex, 1)
      if (groups.length === 0) {
        patchSection({ groups: undefined, items: [] })
      } else {
        patchSection({ groups })
      }
    },
  })
}

function updateGroup(groupIndex: number, patch: Partial<SpecGridGroup>) {
  const groups = [...(section.value.groups ?? [])]
  groups[groupIndex] = { ...groups[groupIndex], ...patch }
  patchSection({ groups })
}

function addRow() {
  if (!editingCard.value) return
  editingCard.value.rows.push({ k: '', v: '', unit: '', hot: false })
}

function removeRow(index: number) {
  editingCard.value?.rows.splice(index, 1)
}

async function handleUpload(options: {
  file: File | Blob | string
  onSuccess?: (body: unknown) => void
  onError?: (err: Error) => void
}) {
  const file = options.file
  if (!(file instanceof File)) return
  uploading.value = true
  try {
    const { path } = await uploadImage(file)
    if (editingCard.value) editingCard.value.imageSrcs.push(path)
    options.onSuccess?.({ path })
    message.success('图片已上传')
  } catch (e: unknown) {
    const err = e instanceof Error ? e : new Error('上传失败')
    options.onError?.(err)
    message.error(err.message)
  } finally {
    uploading.value = false
  }
}

function removeImage(index: number) {
  editingCard.value?.imageSrcs.splice(index, 1)
}

function moveImage(index: number, delta: number) {
  if (!editingCard.value) return
  const next = index + delta
  const list = editingCard.value.imageSrcs
  if (next < 0 || next >= list.length) return
  const [item] = list.splice(index, 1)
  list.splice(next, 0, item)
}

function clearImages() {
  if (editingCard.value) editingCard.value.imageSrcs = []
}

function cardThumb(card: SpecCard) {
  return getSpecCardImages(card)[0]
}

function cardImageCount(card: SpecCard) {
  return getSpecCardImages(card).length
}

const cardModalTitle = computed(() => {
  if (!editingContext.value) return '编辑型号'
  if (editingContext.value.mode === 'groups' && editingContext.value.cardIndex !== undefined) return '编辑型号'
  if (editingContext.value.mode === 'items' && (editingCard.value as SpecCardForm & { _index?: number })?._index !== undefined) return '编辑型号'
  return '添加型号'
})
</script>

<template>
  <div class="spec-grid-editor">
    <a-form layout="vertical" size="small">
      <a-row :gutter="16">
        <a-col :xs="24" :md="8">
          <a-form-item label="模块编号">
            <a-input
              :value="section.num"
              placeholder="01 · Product Specifications"
              @update:value="patchSection({ num: $event })"
            />
          </a-form-item>
        </a-col>
        <a-col :xs="24" :md="8">
          <a-form-item label="列数">
            <a-select
              :value="section.columns"
              allow-clear
              placeholder="默认 3 列"
              @update:value="patchSection({ columns: $event })"
            >
              <a-select-option :value="2">2 列</a-select-option>
              <a-select-option :value="3">3 列</a-select-option>
            </a-select>
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="标题（支持 HTML）">
            <a-input
              :value="section.headingHtml"
              @update:value="patchSection({ headingHtml: $event })"
            />
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="导语">
            <a-textarea
              :value="section.lead ?? ''"
              :rows="2"
              @update:value="patchSection({ lead: $event || undefined })"
            />
          </a-form-item>
        </a-col>
        <a-col :span="24">
          <a-form-item label="脚注">
            <a-input
              :value="section.footnote ?? ''"
              @update:value="patchSection({ footnote: $event || undefined })"
            />
          </a-form-item>
        </a-col>
      </a-row>
    </a-form>

    <a-divider orientation="left">
      产品型号
    </a-divider>

    <template v-if="useGroups">
      <a-space style="margin-bottom: 12px">
        <a-button type="primary" @click="addGroup">
          <template #icon><PlusOutlined /></template>
          添加分组
        </a-button>
      </a-space>

      <a-card
        v-for="(group, gi) in section.groups"
        :key="gi"
        size="small"
        style="margin-bottom: 16px"
      >
        <template #title>
          <a-space wrap>
            <a-input
              :value="group.label"
              placeholder="分组名称"
              style="width: 220px"
              @update:value="updateGroup(gi, { label: $event })"
            />
            <a-select
              :value="group.labelVariant ?? 'default'"
              style="width: 120px"
              @update:value="updateGroup(gi, { labelVariant: $event === 'default' ? undefined : $event })"
            >
              <a-select-option value="default">默认样式</a-select-option>
              <a-select-option value="gas">Gas</a-select-option>
              <a-select-option value="fuel">Fuel</a-select-option>
            </a-select>
            <a-input
              :value="group.note ?? ''"
              placeholder="分组说明"
              style="width: 280px"
              @update:value="updateGroup(gi, { note: $event || undefined })"
            />
          </a-space>
        </template>
        <template #extra>
          <a-space>
            <a-button size="small" type="primary" @click="openCreateInGroup(gi)">
              添加型号
            </a-button>
            <a-button size="small" danger @click="removeGroup(gi)">
              删除分组
            </a-button>
          </a-space>
        </template>

        <a-table
          :columns="cardColumns"
          :data-source="group.items"
          :pagination="false"
          row-key="model"
          size="small"
        >
          <template #bodyCell="{ column, record, index }">
            <template v-if="column.key === 'image'">
              <div v-if="cardThumb(record as SpecCard)" class="thumb-wrap">
                <img
                  :src="cardThumb(record as SpecCard)"
                  alt=""
                  class="thumb"
                >
                <span v-if="cardImageCount(record as SpecCard) > 1" class="thumb-count">
                  {{ cardImageCount(record as SpecCard) }}
                </span>
              </div>
              <span v-else class="thumb-placeholder">{{ record.imageIcon || '—' }}</span>
            </template>
            <template v-else-if="column.key === 'actions'">
              <a-space>
                <a-button size="small" @click="openEditInGroup(gi, index, record as SpecCard)">
                  编辑
                </a-button>
                <a-button size="small" danger @click="removeInGroup(gi, index)">
                  删除
                </a-button>
              </a-space>
            </template>
          </template>
          <template #emptyText>
            暂无型号，点击「添加型号」
          </template>
        </a-table>
      </a-card>
    </template>

    <template v-else>
      <a-space style="margin-bottom: 12px">
        <a-button type="primary" @click="openCreateFlat">
          <template #icon><PlusOutlined /></template>
          添加型号
        </a-button>
        <a-button @click="ensureGroupsMode">
          转为分组模式
        </a-button>
      </a-space>

      <a-table
        :columns="cardColumns"
        :data-source="section.items ?? []"
        :pagination="false"
        row-key="model"
        size="small"
      >
        <template #bodyCell="{ column, record, index }">
          <template v-if="column.key === 'image'">
            <div v-if="cardThumb(record as SpecCard)" class="thumb-wrap">
              <img
                :src="cardThumb(record as SpecCard)"
                alt=""
                class="thumb"
              >
              <span v-if="cardImageCount(record as SpecCard) > 1" class="thumb-count">
                {{ cardImageCount(record as SpecCard) }}
              </span>
            </div>
            <span v-else class="thumb-placeholder">{{ record.imageIcon || '—' }}</span>
          </template>
          <template v-else-if="column.key === 'actions'">
            <a-space>
              <a-button size="small" @click="openEditFlat(record as SpecCard, index)">
                编辑
              </a-button>
              <a-button size="small" danger @click="removeFlat(index)">
                删除
              </a-button>
            </a-space>
          </template>
        </template>
        <template #emptyText>
          暂无型号，点击「添加型号」
        </template>
      </a-table>
    </template>

    <a-modal
      v-model:open="cardModalOpen"
      :title="cardModalTitle"
      ok-text="确定"
      cancel-text="取消"
      width="800px"
      @ok="saveCard"
    >
      <a-form v-if="editingCard" layout="vertical">
        <a-row :gutter="16">
          <a-col :xs="24" :md="12">
            <a-form-item label="型号名称" required>
              <a-input v-model:value="editingCard.model" placeholder="Gas HSI / 120" />
            </a-form-item>
          </a-col>
          <a-col :xs="24" :md="12">
            <a-form-item label="副标题">
              <a-input v-model:value="editingCard.subtitle" placeholder="120 V AC · North America" />
            </a-form-item>
          </a-col>
          <a-col :xs="24" :md="12">
            <a-form-item label="角标">
              <a-input v-model:value="editingCard.badge" placeholder="★ Gas · Most Popular" />
            </a-form-item>
          </a-col>
          <a-col :xs="8" :md="4">
            <a-form-item label="推荐">
              <a-switch v-model:checked="editingCard.featured" />
            </a-form-item>
          </a-col>
          <a-col :xs="8" :md="4">
            <a-form-item label="渐变头">
              <a-switch v-model:checked="editingCard.headGradient" />
            </a-form-item>
          </a-col>
        </a-row>

        <a-form-item label="产品图片（可多张，前台轮播展示）">
          <a-space align="start" wrap>
            <a-upload
              multiple
              :show-upload-list="false"
              accept="image/*"
              :custom-request="handleUpload"
            >
              <a-button :loading="uploading">
                <template #icon><UploadOutlined /></template>
                上传图片
              </a-button>
            </a-upload>
            <a-button v-if="editingCard.imageSrcs.length" @click="clearImages">
              清除全部
            </a-button>
          </a-space>

          <div v-if="editingCard.imageSrcs.length" class="image-list">
            <div
              v-for="(src, index) in editingCard.imageSrcs"
              :key="`${src}-${index}`"
              class="image-list-item"
            >
              <img :src="src" alt="预览" class="image-list-thumb">
              <a-typography-text code class="image-list-path">{{ src }}</a-typography-text>
              <a-space>
                <a-button size="small" :disabled="index === 0" @click="moveImage(index, -1)">
                  上移
                </a-button>
                <a-button
                  size="small"
                  :disabled="index === editingCard.imageSrcs.length - 1"
                  @click="moveImage(index, 1)"
                >
                  下移
                </a-button>
                <a-button size="small" danger @click="removeImage(index)">
                  删除
                </a-button>
              </a-space>
            </div>
          </div>

          <a-row v-if="!editingCard.imageSrcs.length" :gutter="16" style="margin-top: 8px">
            <a-col :span="8">
              <a-form-item label="占位图标" style="margin-bottom: 0">
                <a-input v-model:value="editingCard.imageIcon" placeholder="🔥" />
              </a-form-item>
            </a-col>
            <a-col :span="16">
              <a-form-item label="占位说明" style="margin-bottom: 0">
                <a-input v-model:value="editingCard.imageLabel" placeholder="Gas furnace — NA 120V" />
              </a-form-item>
            </a-col>
          </a-row>
        </a-form-item>

        <a-divider orientation="left">
          参数表
        </a-divider>
        <a-table
          :columns="rowColumns"
          :data-source="editingCard.rows"
          :pagination="false"
          size="small"
          row-key="k"
        >
          <template #bodyCell="{ column, record, index }">
            <template v-if="column.key === 'k'">
              <a-input v-model:value="record.k" placeholder="Voltage" size="small" />
            </template>
            <template v-else-if="column.key === 'v'">
              <a-input v-model:value="record.v" placeholder="120" size="small" />
            </template>
            <template v-else-if="column.key === 'unit'">
              <a-input v-model:value="record.unit" placeholder="V AC" size="small" />
            </template>
            <template v-else-if="column.key === 'hot'">
              <a-switch v-model:checked="record.hot" size="small" />
            </template>
            <template v-else-if="column.key === 'actions'">
              <a-button danger size="small" @click="removeRow(index)">
                删除
              </a-button>
            </template>
          </template>
        </a-table>
        <a-button size="small" style="margin-top: 8px" @click="addRow">
          <template #icon><PlusOutlined /></template>
          添加参数行
        </a-button>

        <a-form-item label="底部说明（支持 HTML）" style="margin-top: 16px">
          <a-textarea v-model:value="editingCard.foot" :rows="2" placeholder="<b>Use:</b> Gas furnaces · HVAC" />
        </a-form-item>
      </a-form>
    </a-modal>
  </div>
</template>

<style scoped>
.thumb {
  width: 48px;
  height: 48px;
  object-fit: cover;
  border-radius: 4px;
  border: 1px solid #f0f0f0;
}

.thumb-placeholder {
  display: inline-flex;
  width: 48px;
  height: 48px;
  align-items: center;
  justify-content: center;
  background: #fafafa;
  border-radius: 4px;
  font-size: 20px;
}

.thumb-wrap {
  position: relative;
  display: inline-block;
}

.thumb-count {
  position: absolute;
  right: 2px;
  bottom: 2px;
  min-width: 18px;
  height: 18px;
  padding: 0 4px;
  border-radius: 9px;
  background: rgba(0, 0, 0, 0.65);
  color: #fff;
  font-size: 11px;
  line-height: 18px;
  text-align: center;
}

.image-list {
  margin-top: 12px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}

.image-list-item {
  display: flex;
  align-items: center;
  gap: 12px;
  padding: 8px;
  border: 1px solid #f0f0f0;
  border-radius: 6px;
  background: #fafafa;
}

.image-list-thumb {
  width: 72px;
  height: 72px;
  object-fit: cover;
  border-radius: 4px;
  flex-shrink: 0;
}

.image-list-path {
  flex: 1;
  min-width: 0;
  word-break: break-all;
}
</style>
