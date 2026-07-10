<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

type Category = {
  id?: string
  slug: string
  title: string
  description: string
  meta: string
  emoji: string
  href: string
  image_path?: string | null
  sort_order: number
  published: boolean
}

type Paginated<T> = {
  items: T[]
  total: number
  page: number
  pageSize: number
  totalPages: number
}

const { adminFetch, uploadImage } = useAdminApi()
const items = ref<Category[]>([])
const saving = ref(false)
const message = ref('')
const page = ref(1)
const pageSize = 10
const total = ref(0)
const totalPages = ref(1)
const search = ref('')

async function load() {
  const params = new URLSearchParams({
    page: String(page.value),
    limit: String(pageSize),
  })
  if (search.value) params.set('search', search.value)

  const res = await adminFetch<Paginated<Category>>(
    `/api/admin/product-categories?${params}`,
  )
  items.value = res.items
  total.value = res.total
  totalPages.value = res.totalPages
}

onMounted(load)

watch(page, load)

async function onSearch() {
  page.value = 1
  await load()
}

async function addItem() {
  items.value.push({
    slug: `category-${Date.now()}`,
    title: '新分类',
    description: '',
    meta: '',
    emoji: '📦',
    href: '/products',
    sort_order: items.value.length,
    published: true,
  })
}

async function saveAll() {
  saving.value = true
  message.value = ''
  try {
    for (const item of items.value) {
      const payload = { ...item }
      delete payload.id
      if (item.id) {
        await adminFetch(`/api/admin/product-categories/${item.id}`, {
          method: 'PUT',
          body: payload,
        })
      } else {
        const created = await adminFetch<Category>('/api/admin/product-categories', {
          method: 'POST',
          body: payload,
        })
        item.id = created.id
      }
    }
    message.value = '已保存'
    await load()
  } catch (e: unknown) {
    message.value = e instanceof Error ? e.message : '保存失败'
  } finally {
    saving.value = false
  }
}

async function removeItem(item: Category) {
  if (item.id && !confirm('确定删除？')) return
  if (item.id) {
    await adminFetch(`/api/admin/product-categories/${item.id}`, { method: 'DELETE' })
  }
  await load()
}

async function onImage(item: Category, e: Event) {
  const file = (e.target as HTMLInputElement).files?.[0]
  if (!file) return
  const { path } = await uploadImage(file)
  item.image_path = path
}
</script>

<template>
  <div>
    <AdminPageHeader
      title="产品分类"
      description="管理 Products 下的分类（导航与目录），支持分页"
    />

    <div class="toolbar">
      <input v-model="search" type="search" placeholder="搜索标题或 slug…" @keyup.enter="onSearch" />
      <button type="button" @click="onSearch">搜索</button>
      <button type="button" class="primary" @click="addItem">+ 新增</button>
      <NuxtLink to="/admin/product-pages" class="link">管理产品页面 →</NuxtLink>
    </div>

    <div v-for="(item, idx) in items" :key="item.id ?? idx" class="card">
      <div class="row">
        <label>Emoji <input v-model="item.emoji" class="short" /></label>
        <label>标题 <input v-model="item.title" /></label>
        <label>Slug <input v-model="item.slug" class="short" /></label>
        <label class="check">
          <input v-model="item.published" type="checkbox" /> 已发布
        </label>
      </div>
      <label>描述 <textarea v-model="item.description" rows="2" /></label>
      <div class="row">
        <label>Meta <input v-model="item.meta" /></label>
        <label>链接 <input v-model="item.href" /></label>
        <label>排序 <input v-model.number="item.sort_order" type="number" class="short" /></label>
      </div>
      <div class="img-row">
        <img v-if="item.image_path" :src="item.image_path" alt="" class="thumb" />
        <label>图片 <input type="file" accept="image/*" @change="onImage(item, $event)" /></label>
        <span v-if="item.image_path" class="path">{{ item.image_path }}</span>
      </div>
      <button type="button" class="danger" @click="removeItem(item)">删除</button>
    </div>

    <AdminPagination
      :page="page"
      :total-pages="totalPages"
      :total="total"
      @change="(p) => (page = p)"
    />

    <AdminSaveBar :saving="saving" :message="message" @save="saveAll" />
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
.toolbar input[type='search'] {
  padding: 8px 12px;
  border: 1px solid #ccd3dc;
  min-width: 200px;
}
.toolbar button,
.link {
  padding: 8px 16px;
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
.card {
  background: #fff;
  border: 1px solid #dde3ea;
  padding: 16px;
  margin-bottom: 12px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.row { display: flex; gap: 12px; flex-wrap: wrap; align-items: flex-end; }
label { display: flex; flex-direction: column; gap: 4px; font-size: 12px; flex: 1; min-width: 140px; }
label.check { flex-direction: row; align-items: center; flex: 0; min-width: auto; }
input, textarea { padding: 8px; border: 1px solid #ccd3dc; }
.short { max-width: 120px; }
.img-row { display: flex; align-items: center; gap: 12px; flex-wrap: wrap; }
.thumb { width: 64px; height: 64px; object-fit: cover; border: 1px solid #ddd; }
.path { font-size: 12px; color: #667; font-family: monospace; }
.danger {
  align-self: flex-start;
  background: transparent;
  border: 1px solid #c0392b;
  color: #c0392b;
  padding: 6px 12px;
  cursor: pointer;
}
</style>
