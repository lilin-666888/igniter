<script setup lang="ts">
import { ArrowLeftOutlined } from '@ant-design/icons-vue'
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
  const res = await adminFetch<MenuGroup[]>('/api/admin/product-menu')
  categories.value = res.map(g => ({ id: g.id, slug: g.slug, title: g.label }))
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

    <a-spin :spinning="loading">
      <NuxtLink to="/admin/product-pages">
        <a-button type="link" style="padding-left: 0; margin-bottom: 16px">
          <template #icon>
            <ArrowLeftOutlined />
          </template>
          返回列表
        </a-button>
      </NuxtLink>

      <template v-if="!loading">
        <a-card title="基本信息" style="margin-bottom: 16px">
          <a-form layout="vertical">
            <a-row :gutter="16">
              <a-col :xs="24" :md="8">
                <a-form-item label="Slug" required>
                  <a-input v-model:value="form.slug" />
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="类型">
                  <a-select v-model:value="form.page_type">
                    <a-select-option value="category">
                      二级分类页
                    </a-select-option>
                    <a-select-option value="sku">
                      三级 SKU 页
                    </a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="所属分类">
                  <a-select v-model:value="form.category_id" allow-clear placeholder="无">
                    <a-select-option
                      v-for="cat in categories"
                      :key="cat.id"
                      :value="cat.id"
                    >
                      {{ cat.title }}
                    </a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="排序">
                  <a-input-number v-model:value="form.sort_order" style="width: 100%" />
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="已发布">
                  <a-switch v-model:checked="form.published" />
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="父级 Slug">
                  <a-input v-model:value="form.parent_slug" />
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="父级名称">
                  <a-input v-model:value="form.parent_label" />
                </a-form-item>
              </a-col>
              <a-col :xs="24" :md="8">
                <a-form-item label="Hero 侧栏">
                  <a-select v-model:value="form.hero_side">
                    <a-select-option value="quote">
                      报价表单
                    </a-select-option>
                    <a-select-option value="spotlight">
                      参数速览
                    </a-select-option>
                  </a-select>
                </a-form-item>
              </a-col>
            </a-row>
          </a-form>
        </a-card>

        <a-card title="SEO" style="margin-bottom: 16px">
          <a-form layout="vertical">
            <a-form-item label="Title">
              <a-input v-model:value="form.seo.title" />
            </a-form-item>
            <a-form-item label="Description">
              <a-textarea v-model:value="form.seo.description" :rows="2" />
            </a-form-item>
            <a-form-item label="Keywords">
              <a-input v-model:value="form.seo.keywords" />
            </a-form-item>
          </a-form>
        </a-card>

        <a-card title="Hero" style="margin-bottom: 16px">
          <AdminJsonEditor v-model="form.hero" />
        </a-card>

        <a-card title="面包屑" style="margin-bottom: 16px">
          <AdminJsonEditor v-model="form.breadcrumb" />
        </a-card>

        <template v-if="form.hero_side === 'spotlight'">
          <a-card title="Spotlight" style="margin-bottom: 16px">
            <AdminJsonEditor v-model="form.spotlight" />
          </a-card>
          <a-card title="Hero CTAs" style="margin-bottom: 16px">
            <AdminJsonEditor v-model="form.hero_ctas" />
          </a-card>
        </template>

        <a-card title="页面模块 sections" style="margin-bottom: 16px">
          <AdminJsonEditor v-model="form.sections" />
        </a-card>

        <AdminSaveBar :saving="saving" :message="message" @save="save" />
      </template>
    </a-spin>
  </div>
</template>
