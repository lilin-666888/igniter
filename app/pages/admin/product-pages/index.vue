<script setup lang="ts">
import { Modal } from 'ant-design-vue'
import { PlusOutlined } from '@ant-design/icons-vue'

definePageMeta({ layout: 'admin', middleware: 'admin' })

type Category = {
  id: string
  slug: string
  title: string
}

type ProductPageItem = {
  id: string
  categoryId: string | null
  slug: string
  pageType: 'category' | 'sku'
  title: string
  sortOrder: number
  published: boolean
}

type Paginated<T> = {
  items: T[]
  total: number
  page: number
  pageSize: number
  totalPages: number
}

const { adminFetch } = useAdminApi()
const router = useRouter()

const categories = ref<Category[]>([])
const items = ref<ProductPageItem[]>([])
const loading = ref(true)
const page = ref(1)
const pageSize = 10
const total = ref(0)
const totalPages = ref(1)
const categoryId = ref<string | undefined>(undefined)
const pageType = ref<string | undefined>(undefined)
const search = ref('')

async function loadCategories() {
  const res = await adminFetch<Array<{ id: string; slug: string; label: string }>>('/api/admin/product-menu')
  categories.value = res.map(g => ({
    id: g.id,
    slug: g.slug,
    title: g.label,
  }))
}

async function loadPages() {
  loading.value = true
  try {
    const params = new URLSearchParams({
      page: String(page.value),
      limit: String(pageSize),
    })
    if (categoryId.value) params.set('category_id', categoryId.value)
    if (pageType.value) params.set('page_type', pageType.value)
    if (search.value) params.set('search', search.value)

    const res = await adminFetch<Paginated<ProductPageItem>>(
      `/api/admin/product-pages?${params}`,
    )
    items.value = res.items
    total.value = res.total
    totalPages.value = res.totalPages
  } finally {
    loading.value = false
  }
}

onMounted(async () => {
  await loadCategories()
  await loadPages()
})

watch(page, loadPages)

async function onFilter() {
  page.value = 1
  await loadPages()
}

function createPage(type: 'category' | 'sku') {
  router.push({ path: '/admin/product-pages/new', query: { type } })
}

function editPage(id: string) {
  router.push(`/admin/product-pages/${id}`)
}

function removePage(item: ProductPageItem) {
  Modal.confirm({
    title: `确定删除「${item.slug}」？`,
    content: '分类页下的产品列表也会一并删除。',
    okText: '删除',
    okType: 'danger',
    cancelText: '取消',
    onOk: async () => {
      await adminFetch(`/api/admin/product-pages/${item.id}`, { method: 'DELETE' })
      await loadPages()
    },
  })
}

function categoryLabel(id: string | null) {
  if (!id) return '—'
  return categories.value.find(c => c.id === id)?.title ?? '—'
}

const columns = [
  { title: 'Slug', dataIndex: 'slug', key: 'slug', width: 200 },
  { title: '标题', dataIndex: 'title', key: 'title', ellipsis: true },
  { title: '类型', key: 'pageType', width: 110 },
  { title: '所属分类', key: 'category', width: 160 },
  { title: '排序', dataIndex: 'sortOrder', key: 'sortOrder', width: 72 },
  { title: '状态', key: 'published', width: 88 },
  { title: '操作', key: 'actions', width: 200 },
]
</script>

<template>
  <div>
    <AdminPageHeader
      title="产品管理"
      description="管理二级分类页与三级 SKU 详情页的内容，替代前端静态写死数据"
    />

    <a-space wrap style="margin-bottom: 16px">
      <a-select
        v-model:value="categoryId"
        placeholder="全部分类"
        allow-clear
        style="width: 180px"
        @change="onFilter"
      >
        <a-select-option v-for="cat in categories" :key="cat.id" :value="cat.id">
          {{ cat.title }}
        </a-select-option>
      </a-select>
      <a-select
        v-model:value="pageType"
        placeholder="全部类型"
        allow-clear
        style="width: 160px"
        @change="onFilter"
      >
        <a-select-option value="category">
          二级分类页
        </a-select-option>
        <a-select-option value="sku">
          三级 SKU 页
        </a-select-option>
      </a-select>
      <a-input-search
        v-model:value="search"
        placeholder="搜索 slug…"
        style="width: 200px"
        allow-clear
        @search="onFilter"
      />
      <a-button type="primary" @click="createPage('category')">
        <template #icon>
          <PlusOutlined />
        </template>
        新增分类页
      </a-button>
      <a-button @click="createPage('sku')">
        <template #icon>
          <PlusOutlined />
        </template>
        新增 SKU 页
      </a-button>
    </a-space>

    <a-spin :spinning="loading">
      <a-table
        :columns="columns"
        :data-source="items"
        :pagination="false"
        row-key="id"
      >
        <template #bodyCell="{ column, record }">
          <template v-if="column.key === 'slug'">
            <a-typography-text code>{{ record.slug }}</a-typography-text>
          </template>
          <template v-else-if="column.key === 'pageType'">
            <a-tag :color="record.pageType === 'category' ? 'blue' : 'purple'">
              {{ record.pageType === 'category' ? '二级' : '三级' }}
            </a-tag>
          </template>
          <template v-else-if="column.key === 'category'">
            {{ categoryLabel(record.categoryId) }}
          </template>
          <template v-else-if="column.key === 'published'">
            <a-tag :color="record.published ? 'success' : 'default'">
              {{ record.published ? '已发布' : '草稿' }}
            </a-tag>
          </template>
          <template v-else-if="column.key === 'actions'">
            <a-space>
              <a-button size="small" @click="editPage(record.id)">
                编辑
              </a-button>
              <a :href="`/products/${record.slug}`" target="_blank" rel="noopener">
                <a-button size="small">预览</a-button>
              </a>
              <a-button size="small" danger @click="removePage(record)">
                删除
              </a-button>
            </a-space>
          </template>
        </template>
        <template #emptyText>
          暂无产品页，请先从静态数据 seed 或手动新增
        </template>
      </a-table>
    </a-spin>

    <AdminPagination
      :page="page"
      :total-pages="totalPages"
      :total="total"
      :page-size="pageSize"
      @change="(p) => (page = p)"
    />
  </div>
</template>
