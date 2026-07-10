<script setup lang="ts">
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
const categoryId = ref('')
const pageType = ref('')
const search = ref('')

async function loadCategories() {
  const res = await adminFetch<Paginated<Category>>(
    '/api/admin/product-categories?page=1&limit=100',
  )
  categories.value = res.items.map(c => ({
    id: c.id!,
    slug: c.slug,
    title: c.title,
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

function createPage() {
  router.push('/admin/product-pages/new')
}

function editPage(id: string) {
  router.push(`/admin/product-pages/${id}`)
}

async function removePage(item: ProductPageItem) {
  if (!confirm(`确定删除「${item.slug}」？`)) return
  await adminFetch(`/api/admin/product-pages/${item.id}`, { method: 'DELETE' })
  await loadPages()
}
</script>

<template>
  <div>
    <AdminPageHeader
      title="产品页面"
      description="管理 Products 下的分类页与 SKU 详情页，按分类筛选并分页"
    />

    <div class="toolbar">
      <select v-model="categoryId" @change="onFilter">
        <option value="">全部分类</option>
        <option v-for="cat in categories" :key="cat.id" :value="cat.id">
          {{ cat.title }}
        </option>
      </select>
      <select v-model="pageType" @change="onFilter">
        <option value="">全部类型</option>
        <option value="category">二级分类页</option>
        <option value="sku">三级 SKU 页</option>
      </select>
      <input
        v-model="search"
        type="search"
        placeholder="搜索 slug…"
        @keyup.enter="onFilter"
      />
      <button type="button" @click="onFilter">筛选</button>
      <button type="button" class="primary" @click="createPage">+ 新增页面</button>
      <NuxtLink to="/admin/products" class="link">管理分类 →</NuxtLink>
    </div>

    <p v-if="loading">加载中…</p>
    <p v-else-if="items.length === 0" class="empty">暂无产品页面</p>

    <table v-else class="table">
      <thead>
        <tr>
          <th>Slug</th>
          <th>标题</th>
          <th>类型</th>
          <th>排序</th>
          <th>状态</th>
          <th>操作</th>
        </tr>
      </thead>
      <tbody>
        <tr v-for="item in items" :key="item.id">
          <td>
            <code>{{ item.slug }}</code>
          </td>
          <td>{{ item.title }}</td>
          <td>{{ item.pageType === 'category' ? '分类页' : 'SKU' }}</td>
          <td>{{ item.sortOrder }}</td>
          <td>
            <span :class="item.published ? 'on' : 'off'">
              {{ item.published ? '已发布' : '草稿' }}
            </span>
          </td>
          <td class="actions">
            <button type="button" @click="editPage(item.id)">编辑</button>
            <a :href="`/products/${item.slug}`" target="_blank" rel="noopener">预览</a>
            <button type="button" class="danger" @click="removePage(item)">删除</button>
          </td>
        </tr>
      </tbody>
    </table>

    <AdminPagination
      :page="page"
      :total-pages="totalPages"
      :total="total"
      @change="(p) => (page = p)"
    />
  </div>
</template>

<style scoped>
.toolbar {
  display: flex;
  gap: 10px;
  flex-wrap: wrap;
  margin-bottom: 16px;
  align-items: center;
}
.toolbar select,
.toolbar input {
  padding: 8px;
  border: 1px solid #ccd3dc;
}
.toolbar button,
.link {
  padding: 8px 14px;
  border: 1px solid #ccd3dc;
  background: #fff;
  cursor: pointer;
  text-decoration: none;
  color: inherit;
  font-size: 14px;
}
.toolbar .primary {
  background: #0a2647;
  color: #fff;
  border-color: #0a2647;
}
.link { margin-left: auto; }
.empty { color: #667; }
.table {
  width: 100%;
  border-collapse: collapse;
  background: #fff;
  font-size: 14px;
}
.table th,
.table td {
  border: 1px solid #dde3ea;
  padding: 10px 12px;
  text-align: left;
}
.table th { background: #f5f7fa; font-weight: 600; }
.on { color: #1a7f37; }
.off { color: #999; }
.actions { display: flex; gap: 8px; align-items: center; }
.actions button,
.actions a {
  font-size: 13px;
  padding: 4px 8px;
  border: 1px solid #ccd3dc;
  background: #fff;
  cursor: pointer;
  text-decoration: none;
  color: inherit;
}
.danger { color: #c0392b; border-color: #c0392b !important; }
</style>
