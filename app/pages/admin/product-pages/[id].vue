<script setup lang="ts">
import type { ProductPage } from '~/data/products/types'

definePageMeta({ layout: 'admin', middleware: 'admin' })

type Category = { id: string; slug: string; title: string }

const route = useRoute()
const router = useRouter()
const { adminFetch } = useAdminApi()

const isNew = computed(() => route.params.id === 'new')
const pageId = computed(() => (isNew.value ? '' : String(route.params.id)))

const categories = ref<Category[]>([])
const saving = ref(false)
const message = ref('')
const loading = ref(!isNew.value)

const form = ref({
  category_id: '' as string,
  slug: '',
  page_type: 'category' as 'category' | 'sku',
  parent_slug: '',
  parent_label: '',
  sort_order: 0,
  published: true,
  hero_side: 'quote' as 'quote' | 'spotlight',
  seo: { title: '', description: '', keywords: '' },
  hero: {
    eyebrow: '',
    title: '',
    titleHighlight: '',
    subtitle: '',
    stats: [] as { num: string; lbl: string }[],
  },
  breadcrumb: [] as { label: string; to?: string }[],
  hero_ctas: null as ProductPage['heroCtas'] | null,
  spotlight: null as ProductPage['spotlight'] | null,
  sections: [] as ProductPage['sections'],
})

async function loadCategories() {
  const res = await adminFetch<{ items: { id: string; slug: string; title: string }[] }>(
    '/api/admin/product-categories?page=1&limit=100',
  )
  categories.value = res.items.map(c => ({ id: c.id, slug: c.slug, title: c.title }))
}

async function loadPage() {
  if (isNew.value) return
  loading.value = true
  try {
    const data = await adminFetch<{
      id: string
      category_id: string | null
      sort_order: number
      published: boolean
      page: ProductPage
    }>(`/api/admin/product-pages/${pageId.value}`)

    const p = data.page
    form.value = {
      category_id: data.category_id ?? '',
      slug: p.slug,
      page_type: p.pageType,
      parent_slug: p.parent?.slug ?? '',
      parent_label: p.parent?.label ?? '',
      sort_order: data.sort_order,
      published: data.published,
      hero_side: p.heroSide,
      seo: { ...p.seo, keywords: p.seo.keywords ?? '' },
      hero: { ...p.hero },
      breadcrumb: [...p.breadcrumb],
      hero_ctas: p.heroCtas ?? null,
      spotlight: p.spotlight ?? null,
      sections: [...p.sections],
    }
  } finally {
    loading.value = false
  }
}

onMounted(async () => {
  await loadCategories()
  await loadPage()
})

function buildPayload() {
  return {
    category_id: form.value.category_id || null,
    slug: form.value.slug,
    page_type: form.value.page_type,
    parent_slug: form.value.parent_slug || null,
    parent_label: form.value.parent_label || null,
    sort_order: form.value.sort_order,
    published: form.value.published,
    hero_side: form.value.hero_side,
    seo: {
      title: form.value.seo.title,
      description: form.value.seo.description,
      ...(form.value.seo.keywords ? { keywords: form.value.seo.keywords } : {}),
    },
    breadcrumb: form.value.breadcrumb,
    hero: form.value.hero,
    hero_ctas: form.value.hero_ctas,
    spotlight: form.value.spotlight,
    sections: form.value.sections,
  }
}

async function save() {
  saving.value = true
  message.value = ''
  try {
    const payload = buildPayload()
    if (isNew.value) {
      const created = await adminFetch<{ id: string }>('/api/admin/product-pages', {
        method: 'POST',
        body: payload,
      })
      message.value = '已创建'
      await router.replace(`/admin/product-pages/${created.id}`)
      await loadPage()
    } else {
      await adminFetch(`/api/admin/product-pages/${pageId.value}`, {
        method: 'PUT',
        body: payload,
      })
      message.value = '已保存'
    }
  } catch (e: unknown) {
    message.value = e instanceof Error ? e.message : '保存失败'
  } finally {
    saving.value = false
  }
}
</script>

<template>
  <div>
    <AdminPageHeader
      :title="isNew ? '新增产品页面' : '编辑产品页面'"
      description="页面内容由 JSON 配置，与前台 ProductPageRenderer 一致"
    />

    <p v-if="loading">加载中…</p>

    <template v-else>
      <div class="back">
        <NuxtLink to="/admin/product-pages">← 返回列表</NuxtLink>
      </div>

      <section class="card">
        <h3>基本信息</h3>
        <div class="grid">
          <label>Slug <input v-model="form.slug" required /></label>
          <label>
            类型
            <select v-model="form.page_type">
              <option value="category">二级分类页</option>
              <option value="sku">三级 SKU 页</option>
            </select>
          </label>
          <label>
            所属分类
            <select v-model="form.category_id">
              <option value="">无</option>
              <option v-for="cat in categories" :key="cat.id" :value="cat.id">
                {{ cat.title }}
              </option>
            </select>
          </label>
          <label>排序 <input v-model.number="form.sort_order" type="number" /></label>
          <label class="check">
            <input v-model="form.published" type="checkbox" /> 已发布
          </label>
        </div>
        <div class="grid">
          <label>父级 Slug <input v-model="form.parent_slug" /></label>
          <label>父级名称 <input v-model="form.parent_label" /></label>
          <label>
            Hero 侧栏
            <select v-model="form.hero_side">
              <option value="quote">报价表单</option>
              <option value="spotlight">参数速览</option>
            </select>
          </label>
        </div>
      </section>

      <section class="card">
        <h3>SEO</h3>
        <label>Title <input v-model="form.seo.title" /></label>
        <label>Description <textarea v-model="form.seo.description" rows="2" /></label>
        <label>Keywords <input v-model="form.seo.keywords" /></label>
      </section>

      <section class="card">
        <AdminJsonEditor v-model="form.hero" label="Hero (JSON)" />
      </section>

      <section class="card">
        <AdminJsonEditor v-model="form.breadcrumb" label="面包屑 (JSON)" />
      </section>

      <section v-if="form.hero_side === 'spotlight'" class="card">
        <AdminJsonEditor v-model="form.spotlight" label="Spotlight (JSON)" />
        <AdminJsonEditor v-model="form.hero_ctas" label="Hero CTAs (JSON)" />
      </section>

      <section class="card">
        <AdminJsonEditor v-model="form.sections" label="页面模块 sections (JSON)" />
      </section>

      <AdminSaveBar :saving="saving" :message="message" @save="save" />
    </template>
  </div>
</template>

<style scoped>
.back { margin-bottom: 16px; }
.back a { color: #0a2647; font-weight: 600; }
.card {
  background: #fff;
  border: 1px solid #dde3ea;
  padding: 20px;
  margin-bottom: 16px;
}
.card h3 { margin: 0 0 14px; font-size: 16px; }
.grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(180px, 1fr));
  gap: 12px;
  margin-bottom: 12px;
}
label {
  display: flex;
  flex-direction: column;
  gap: 4px;
  font-size: 12px;
  margin-bottom: 10px;
}
label.check { flex-direction: row; align-items: center; }
input, textarea, select {
  padding: 8px;
  border: 1px solid #ccd3dc;
  font-size: 14px;
}
</style>
