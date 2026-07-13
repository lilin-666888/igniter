<script setup lang="ts">
import { Modal, message } from 'ant-design-vue'
import { PlusOutlined, UploadOutlined } from '@ant-design/icons-vue'

export type LineupItemForm = {
  id?: string
  name: string
  icon: string
  description: string
  chips: string[]
  materialLabel: string
  materialPath: string
  linkPath: string
  linkPageId?: string
  linkLabel: string
  imageSrc: string
  flagship: boolean
  badge: string
  sortOrder: number
  published: boolean
}

const props = defineProps<{
  pageId: string
  items: LineupItemForm[]
  skuPages: Array<{ id: string; slug: string; title: string }>
}>()

const emit = defineEmits<{
  refresh: []
}>()

const { adminFetch, uploadImage } = useAdminApi()
const saving = ref(false)
const uploading = ref(false)
const modalOpen = ref(false)
const editing = ref<LineupItemForm | null>(null)

const columns = [
  { title: '产品名称', dataIndex: 'name', key: 'name' },
  { title: '图片', key: 'image', width: 72 },
  { title: '跳转', key: 'link', ellipsis: true },
  { title: '排序', dataIndex: 'sortOrder', key: 'sortOrder', width: 72 },
  { title: '状态', key: 'published', width: 88 },
  { title: '操作', key: 'actions', width: 140 },
]

function openCreate() {
  editing.value = {
    name: '',
    icon: '🔥',
    description: '',
    chips: [],
    materialLabel: '',
    materialPath: '',
    linkPath: '',
    linkLabel: 'View Details →',
    imageSrc: '',
    flagship: false,
    badge: '',
    sortOrder: props.items.length,
    published: true,
  }
  modalOpen.value = true
}

function openEdit(item: LineupItemForm) {
  editing.value = {
    ...item,
    chips: [...item.chips],
  }
  modalOpen.value = true
}

function onSelectSkuPage(pageId?: string) {
  if (!editing.value) return
  if (!pageId) {
    editing.value.linkPageId = undefined
    return
  }
  const page = props.skuPages.find(p => p.id === pageId)
  editing.value.linkPageId = pageId
  if (page) editing.value.linkPath = `/products/${page.slug}`
}

async function saveItem() {
  if (!editing.value) return
  saving.value = true
  try {
    const payload = {
      name: editing.value.name,
      icon: editing.value.icon,
      description: editing.value.description,
      chips: editing.value.chips,
      material_label: editing.value.materialLabel || null,
      material_path: editing.value.materialPath || null,
      link_path: editing.value.linkPath || null,
      link_page_id: editing.value.linkPageId || null,
      link_label: editing.value.linkLabel,
      image_src: editing.value.imageSrc || null,
      flagship: editing.value.flagship,
      badge: editing.value.badge || null,
      sort_order: editing.value.sortOrder,
      published: editing.value.published,
    }

    if (editing.value.id) {
      await adminFetch(`/api/admin/product-pages/lineup-items/${editing.value.id}`, {
        method: 'PUT',
        body: payload,
      })
      message.success('产品已更新')
    } else {
      await adminFetch(`/api/admin/product-pages/${props.pageId}/lineup-items`, {
        method: 'POST',
        body: payload,
      })
      message.success('产品已添加')
    }

    modalOpen.value = false
    emit('refresh')
  } catch (e: unknown) {
    message.error(e instanceof Error ? e.message : '保存失败')
  } finally {
    saving.value = false
  }
}

function removeItem(item: LineupItemForm) {
  if (!item.id) return
  Modal.confirm({
    title: `确定删除「${item.name}」？`,
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: async () => {
      await adminFetch(`/api/admin/product-pages/lineup-items/${item.id}`, { method: 'DELETE' })
      message.success('已删除')
      emit('refresh')
    },
  })
}

const chipsInput = computed({
  get: () => editing.value?.chips.join(', ') ?? '',
  set: (val: string) => {
    if (!editing.value) return
    editing.value.chips = val.split(',').map(s => s.trim()).filter(Boolean)
  },
})

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
    if (editing.value) editing.value.imageSrc = path
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

function clearImage() {
  if (editing.value) editing.value.imageSrc = ''
}
</script>

<template>
  <div>
    <a-space style="margin-bottom: 12px">
      <a-button type="primary" @click="openCreate">
        <template #icon>
          <PlusOutlined />
        </template>
        添加产品
      </a-button>
    </a-space>

    <a-table
      :columns="columns"
      :data-source="items"
      :pagination="false"
      row-key="id"
      size="small"
    >
      <template #bodyCell="{ column, record }">
        <template v-if="column.key === 'image'">
          <img
            v-if="record.imageSrc"
            :src="record.imageSrc"
            alt=""
            class="lineup-thumb"
          >
          <span v-else class="lineup-thumb-placeholder">{{ record.icon || '—' }}</span>
        </template>
        <template v-else-if="column.key === 'link'">
          <a-typography-text code>{{ record.linkPath || '—' }}</a-typography-text>
        </template>
        <template v-else-if="column.key === 'published'">
          <a-tag :color="record.published ? 'success' : 'default'">
            {{ record.published ? '已发布' : '草稿' }}
          </a-tag>
        </template>
        <template v-else-if="column.key === 'actions'">
          <a-space>
            <a-button size="small" @click="openEdit(record as LineupItemForm)">
              编辑
            </a-button>
            <a-button size="small" danger @click="removeItem(record as LineupItemForm)">
              删除
            </a-button>
          </a-space>
        </template>
      </template>
      <template #emptyText>
        暂无产品，点击「添加产品」创建
      </template>
    </a-table>

    <a-modal
      v-model:open="modalOpen"
      :title="editing?.id ? '编辑产品' : '添加产品'"
      :confirm-loading="saving"
      ok-text="保存"
      cancel-text="取消"
      width="720px"
      @ok="saveItem"
    >
      <a-form v-if="editing" layout="vertical">
        <a-row :gutter="16">
          <a-col :span="16">
            <a-form-item label="产品名称" required>
              <a-input v-model:value="editing.name" placeholder="Si₃N₄ Hot Surface Igniter · CN-300" />
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="图标 Emoji">
              <a-input v-model:value="editing.icon" />
            </a-form-item>
          </a-col>
        </a-row>
        <a-form-item label="描述">
          <a-textarea v-model:value="editing.description" :rows="3" />
        </a-form-item>
        <a-form-item label="列表图片（单张，显示在前台产品卡片）">
          <a-space align="start" wrap>
            <a-upload
              :show-upload-list="false"
              accept="image/*"
              :custom-request="handleUpload"
            >
              <a-button :loading="uploading">
                <template #icon><UploadOutlined /></template>
                上传图片
              </a-button>
            </a-upload>
            <a-button v-if="editing.imageSrc" @click="clearImage">
              清除图片
            </a-button>
          </a-space>
          <div v-if="editing.imageSrc" class="lineup-image-preview">
            <img :src="editing.imageSrc" alt="预览">
            <a-typography-text code>{{ editing.imageSrc }}</a-typography-text>
          </div>
          <a-typography-text v-else type="secondary" style="display: block; margin-top: 8px">
            未上传时前台显示占位图标
          </a-typography-text>
        </a-form-item>
        <a-form-item label="标签（逗号分隔）">
          <a-input v-model:value="chipsInput" placeholder="Cycle life 100K+, Heat-up 3 s" />
        </a-form-item>
        <a-row :gutter="16">
          <a-col :span="12">
            <a-form-item label="材料标签">
              <a-input v-model:value="editing.materialLabel" placeholder="Si₃N₄" />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="材料链接">
              <a-input v-model:value="editing.materialPath" placeholder="/materials/silicon-nitride" />
            </a-form-item>
          </a-col>
        </a-row>
        <a-form-item label="关联 SKU 页">
          <a-select
            :value="editing.linkPageId"
            allow-clear
            placeholder="选择三级产品页（可选）"
            @change="onSelectSkuPage"
          >
            <a-select-option v-for="page in skuPages" :key="page.id" :value="page.id">
              {{ page.title }} ({{ page.slug }})
            </a-select-option>
          </a-select>
        </a-form-item>
        <a-row :gutter="16">
          <a-col :span="14">
            <a-form-item label="跳转链接">
              <a-input v-model:value="editing.linkPath" placeholder="/products/silicon-nitride-igniters-final" />
            </a-form-item>
          </a-col>
          <a-col :span="10">
            <a-form-item label="链接文字">
              <a-input v-model:value="editing.linkLabel" />
            </a-form-item>
          </a-col>
        </a-row>
        <a-row :gutter="16">
          <a-col :span="8">
            <a-form-item label="排序">
              <a-input-number v-model:value="editing.sortOrder" style="width: 100%" />
            </a-form-item>
          </a-col>
          <a-col :span="8">
            <a-form-item label="角标">
              <a-input v-model:value="editing.badge" placeholder="★ Flagship" />
            </a-form-item>
          </a-col>
          <a-col :span="4">
            <a-form-item label="旗舰">
              <a-switch v-model:checked="editing.flagship" />
            </a-form-item>
          </a-col>
          <a-col :span="4">
            <a-form-item label="发布">
              <a-switch v-model:checked="editing.published" />
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-modal>
  </div>
</template>

<style scoped>
.lineup-thumb {
  width: 48px;
  height: 48px;
  object-fit: cover;
  border-radius: 4px;
  border: 1px solid #f0f0f0;
}

.lineup-thumb-placeholder {
  display: inline-flex;
  width: 48px;
  height: 48px;
  align-items: center;
  justify-content: center;
  background: #fafafa;
  border-radius: 4px;
  font-size: 20px;
}

.lineup-image-preview {
  margin-top: 12px;
  display: flex;
  flex-direction: column;
  gap: 8px;
}

.lineup-image-preview img {
  max-width: 240px;
  max-height: 140px;
  object-fit: contain;
  border: 1px solid #f0f0f0;
  border-radius: 4px;
}
</style>
