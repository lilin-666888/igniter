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

const { adminFetch, uploadImage } = useAdminApi()
const items = ref<Category[]>([])
const saving = ref(false)
const message = ref('')

async function load() {
  items.value = await adminFetch<Category[]>('/api/admin/product-categories')
}

onMounted(load)

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
  items.value = items.value.filter(i => i !== item)
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
    <AdminPageHeader title="产品分类" description="首页产品目录卡片，图片存相对路径" />
    <div class="toolbar">
      <button type="button" @click="addItem">+ 新增</button>
    </div>
    <div v-for="(item, idx) in items" :key="item.id ?? idx" class="card">
      <div class="row">
        <label>Emoji <input v-model="item.emoji" class="short" /></label>
        <label>标题 <input v-model="item.title" /></label>
        <label>Slug <input v-model="item.slug" class="short" /></label>
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
    <AdminSaveBar :saving="saving" :message="message" @save="saveAll" />
  </div>
</template>

<style scoped>
.toolbar { margin-bottom: 16px; }
.toolbar button {
  background: #0a2647;
  color: #fff;
  border: none;
  padding: 8px 16px;
  cursor: pointer;
}
.card {
  background: #fff;
  border: 1px solid #dde3ea;
  padding: 16px;
  margin-bottom: 12px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}
.row { display: flex; gap: 12px; flex-wrap: wrap; }
label { display: flex; flex-direction: column; gap: 4px; font-size: 12px; flex: 1; min-width: 140px; }
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
