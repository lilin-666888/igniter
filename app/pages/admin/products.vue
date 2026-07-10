<script setup lang="ts">
import { Modal, message } from 'ant-design-vue'
import { PlusOutlined } from '@ant-design/icons-vue'

definePageMeta({ layout: 'admin', middleware: 'admin' })

type MenuItem = {
  id: string
  groupId: string
  label: string
  path: string
  sortOrder: number
  published: boolean
}

type MenuGroup = {
  id: string
  slug: string
  label: string
  path: string
  sortOrder: number
  published: boolean
  items: MenuItem[]
}

const { adminFetch } = useAdminApi()
const groups = ref<MenuGroup[]>([])
const loading = ref(true)
const saving = ref(false)

const groupModalOpen = ref(false)
const itemModalOpen = ref(false)
const editingGroup = ref<Partial<MenuGroup> | null>(null)
const editingItem = ref<Partial<MenuItem> & { groupId?: string } | null>(null)

async function load() {
  loading.value = true
  try {
    groups.value = await adminFetch<MenuGroup[]>('/api/admin/product-menu')
  } finally {
    loading.value = false
  }
}

onMounted(load)

const groupColumns = [
  { title: '二级分类', dataIndex: 'label', key: 'label' },
  { title: 'Slug', dataIndex: 'slug', key: 'slug', width: 180 },
  { title: '链接', dataIndex: 'path', key: 'path', ellipsis: true },
  { title: '排序', dataIndex: 'sortOrder', key: 'sortOrder', width: 80 },
  { title: '状态', key: 'published', width: 90 },
  { title: '操作', key: 'actions', width: 220 },
]

const itemColumns = [
  { title: '三级菜单', dataIndex: 'label', key: 'label' },
  { title: '链接', dataIndex: 'path', key: 'path', ellipsis: true },
  { title: '排序', dataIndex: 'sortOrder', key: 'sortOrder', width: 80 },
  { title: '状态', key: 'published', width: 90 },
  { title: '操作', key: 'actions', width: 160 },
]

function openCreateGroup() {
  editingGroup.value = {
    label: '',
    slug: '',
    path: '/products/',
    sortOrder: groups.value.length,
    published: true,
  }
  groupModalOpen.value = true
}

function openEditGroup(group: MenuGroup) {
  editingGroup.value = { ...group }
  groupModalOpen.value = true
}

function openCreateItem(group: MenuGroup) {
  editingItem.value = {
    groupId: group.id,
    label: '',
    path: '/products/',
    sortOrder: group.items.length,
    published: true,
  }
  itemModalOpen.value = true
}

function openEditItem(item: MenuItem) {
  editingItem.value = { ...item }
  itemModalOpen.value = true
}

async function saveGroup() {
  if (!editingGroup.value) return
  saving.value = true
  try {
    const payload = {
      label: editingGroup.value.label,
      slug: editingGroup.value.slug,
      path: editingGroup.value.path,
      sort_order: editingGroup.value.sortOrder ?? 0,
      published: editingGroup.value.published ?? true,
    }
    if (editingGroup.value.id) {
      await adminFetch(`/api/admin/product-menu/groups/${editingGroup.value.id}`, {
        method: 'PUT',
        body: payload,
      })
      message.success('二级分类已更新')
    } else {
      await adminFetch('/api/admin/product-menu/groups', {
        method: 'POST',
        body: payload,
      })
      message.success('二级分类已创建')
    }
    groupModalOpen.value = false
    await load()
  } catch (e: unknown) {
    message.error(e instanceof Error ? e.message : '保存失败')
  } finally {
    saving.value = false
  }
}

async function saveItem() {
  if (!editingItem.value?.groupId) return
  saving.value = true
  try {
    const payload = {
      group_id: editingItem.value.groupId,
      label: editingItem.value.label,
      path: editingItem.value.path,
      sort_order: editingItem.value.sortOrder ?? 0,
      published: editingItem.value.published ?? true,
    }
    if (editingItem.value.id) {
      await adminFetch(`/api/admin/product-menu/items/${editingItem.value.id}`, {
        method: 'PUT',
        body: payload,
      })
      message.success('三级菜单已更新')
    } else {
      await adminFetch('/api/admin/product-menu/items', {
        method: 'POST',
        body: payload,
      })
      message.success('三级菜单已创建')
    }
    itemModalOpen.value = false
    await load()
  } catch (e: unknown) {
    message.error(e instanceof Error ? e.message : '保存失败')
  } finally {
    saving.value = false
  }
}

function removeGroup(group: MenuGroup) {
  Modal.confirm({
    title: `确定删除二级分类「${group.label}」？`,
    content: '其下所有三级菜单将一并删除。',
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: async () => {
      await adminFetch(`/api/admin/product-menu/groups/${group.id}`, { method: 'DELETE' })
      message.success('已删除')
      await load()
    },
  })
}

function removeItem(item: MenuItem) {
  Modal.confirm({
    title: `确定删除三级菜单「${item.label}」？`,
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: async () => {
      await adminFetch(`/api/admin/product-menu/items/${item.id}`, { method: 'DELETE' })
      message.success('已删除')
      await load()
    },
  })
}
</script>

<template>
  <div>
    <AdminPageHeader
      title="产品分类"
      description="管理 Products 导航下的二级分类与三级菜单"
    />

    <a-space wrap style="margin-bottom: 16px">
      <a-button type="primary" @click="openCreateGroup">
        <template #icon>
          <PlusOutlined />
        </template>
        新增二级分类
      </a-button>
    </a-space>

    <a-spin :spinning="loading">
      <a-empty v-if="!loading && groups.length === 0" description="暂无分类，请新增二级分类" />

      <a-table
        v-else
        :columns="groupColumns"
        :data-source="groups"
        :pagination="false"
        row-key="id"
      >
        <template #bodyCell="{ column, record }">
          <template v-if="column.key === 'slug'">
            <a-typography-text code>{{ record.slug }}</a-typography-text>
          </template>
          <template v-else-if="column.key === 'published'">
            <a-tag :color="record.published ? 'success' : 'default'">
              {{ record.published ? '已发布' : '草稿' }}
            </a-tag>
          </template>
          <template v-else-if="column.key === 'actions'">
            <a-space>
              <a-button size="small" @click="openEditGroup(record as MenuGroup)">
                编辑
              </a-button>
              <a-button size="small" @click="openCreateItem(record as MenuGroup)">
                添加三级
              </a-button>
              <a-button size="small" danger @click="removeGroup(record as MenuGroup)">
                删除
              </a-button>
            </a-space>
          </template>
        </template>

        <template #expandedRowRender="{ record }">
          <a-table
            :columns="itemColumns"
            :data-source="record.items"
            :pagination="false"
            row-key="id"
            size="small"
          >
            <template #bodyCell="{ column, record: item }">
              <template v-if="column.key === 'published'">
                <a-tag :color="item.published ? 'success' : 'default'">
                  {{ item.published ? '已发布' : '草稿' }}
                </a-tag>
              </template>
              <template v-else-if="column.key === 'actions'">
                <a-space>
                  <a-button size="small" @click="openEditItem(item as MenuItem)">
                    编辑
                  </a-button>
                  <a-button size="small" danger @click="removeItem(item as MenuItem)">
                    删除
                  </a-button>
                </a-space>
              </template>
            </template>
            <template #emptyText>
              <a-typography-text type="secondary">暂无三级菜单</a-typography-text>
            </template>
          </a-table>
        </template>
      </a-table>
    </a-spin>

    <a-modal
      v-model:open="groupModalOpen"
      :title="editingGroup?.id ? '编辑二级分类' : '新增二级分类'"
      :confirm-loading="saving"
      ok-text="保存"
      cancel-text="取消"
      @ok="saveGroup"
    >
      <a-form v-if="editingGroup" layout="vertical">
        <a-form-item label="名称" required>
          <a-input v-model:value="editingGroup.label" placeholder="Ceramic Igniters" />
        </a-form-item>
        <a-form-item label="链接路径" required>
          <a-input v-model:value="editingGroup.path" placeholder="/products/ceramic-igniters" />
        </a-form-item>
        <a-form-item label="Slug">
          <a-input v-model:value="editingGroup.slug" placeholder="ceramic-igniters（留空则自动生成）" />
        </a-form-item>
        <a-row :gutter="16">
          <a-col :span="12">
            <a-form-item label="排序">
              <a-input-number v-model:value="editingGroup.sortOrder" style="width: 100%" />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="已发布">
              <a-switch v-model:checked="editingGroup.published" />
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-modal>

    <a-modal
      v-model:open="itemModalOpen"
      :title="editingItem?.id ? '编辑三级菜单' : '新增三级菜单'"
      :confirm-loading="saving"
      ok-text="保存"
      cancel-text="取消"
      @ok="saveItem"
    >
      <a-form v-if="editingItem" layout="vertical">
        <a-form-item label="名称" required>
          <a-input v-model:value="editingItem.label" placeholder="Silicon Nitride Igniters" />
        </a-form-item>
        <a-form-item label="链接路径" required>
          <a-input v-model:value="editingItem.path" placeholder="/products/silicon-nitride-igniters-final" />
        </a-form-item>
        <a-row :gutter="16">
          <a-col :span="12">
            <a-form-item label="排序">
              <a-input-number v-model:value="editingItem.sortOrder" style="width: 100%" />
            </a-form-item>
          </a-col>
          <a-col :span="12">
            <a-form-item label="已发布">
              <a-switch v-model:checked="editingItem.published" />
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-modal>
  </div>
</template>
