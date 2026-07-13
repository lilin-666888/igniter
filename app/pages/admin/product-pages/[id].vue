<script setup lang="ts">
import { ArrowLeftOutlined, PlusOutlined } from '@ant-design/icons-vue'
import type { ProductPage } from '~/data/products/types'
import type { LineupItemForm } from '~/components/admin/AdminLineupEditor.vue'

definePageMeta({ layout: 'admin', middleware: 'admin' })

type Category = { id: string; slug: string; title: string }
type SkuPageOption = { id: string; slug: string; title: string }

const route = useRoute()
const router = useRouter()
const { adminFetch } = useAdminApi()

const isNew = computed(() => route.params.id === 'new')
const pageId = computed(() => (isNew.value ? '' : String(route.params.id)))
const activeTab = ref('basic')

const categories = ref<Category[]>([])
const skuPages = ref<SkuPageOption[]>([])
const lineupItems = ref<LineupItemForm[]>([])
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

if (route.params.id === 'new') {
  if (route.query.type === 'sku') form.value.page_type = 'sku'
  else if (route.query.type === 'category') form.value.page_type = 'category'
}

async function loadCategories() {
  const res = await adminFetch<Array<{ id: string; slug: string; label: string }>>('/api/admin/product-menu')
  categories.value = res.map(g => ({ id: g.id, slug: g.slug, title: g.label }))
}

async function loadSkuPages() {
  const res = await adminFetch<{ items: SkuPageOption[] }>('/api/admin/product-pages?page=1&limit=200&page_type=sku')
  skuPages.value = res.items
}

async function loadLineup() {
  if (isNew.value || form.value.page_type !== 'category') return
  const items = await adminFetch<LineupItemForm[]>(`/api/admin/product-pages/${pageId.value}/lineup-items`)
  lineupItems.value = items.map(item => ({
    id: item.id,
    name: item.name,
    icon: item.icon,
    description: item.description,
    chips: item.chips ?? [],
    materialLabel: item.materialLabel ?? '',
    materialPath: item.materialPath ?? '',
    linkPath: item.linkPath ?? '',
    linkPageId: item.linkPageId,
    linkLabel: item.linkLabel,
    imageSrc: item.imageSrc ?? '',
    flagship: item.flagship,
    badge: item.badge ?? '',
    sortOrder: item.sortOrder,
    published: item.published,
  }))
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
      lineupItems: LineupItemForm[]
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
      hero: {
        ...p.hero,
        titleHighlight: p.hero.titleHighlight ?? '',
        stats: [...(p.hero.stats ?? [])],
      },
      breadcrumb: [...p.breadcrumb],
      hero_ctas: p.heroCtas ?? null,
      spotlight: p.spotlight ?? null,
      sections: [...p.sections],
    }
    lineupItems.value = (data.lineupItems ?? []).map(item => ({
      id: item.id,
      name: item.name,
      icon: item.icon,
      description: item.description,
      chips: item.chips ?? [],
      materialLabel: item.materialLabel ?? '',
      materialPath: item.materialPath ?? '',
      linkPath: item.linkPath ?? '',
      linkPageId: item.linkPageId,
      linkLabel: item.linkLabel,
      imageSrc: item.imageSrc ?? '',
      flagship: item.flagship,
      badge: item.badge ?? '',
      sortOrder: item.sortOrder,
      published: item.published,
    }))
  } finally {
    loading.value = false
  }
}

onMounted(async () => {
  await Promise.all([loadCategories(), loadSkuPages()])
  await loadPage()
})

function onCategoryChange(categoryId: string | undefined) {
  if (!categoryId) return
  const cat = categories.value.find(c => c.id === categoryId)
  if (cat && form.value.page_type === 'category') {
    form.value.slug = cat.slug
    form.value.parent_slug = ''
    form.value.parent_label = ''
  }
}

function addHeroStat() {
  form.value.hero.stats.push({ num: '', lbl: '' })
}

function removeHeroStat(index: number) {
  form.value.hero.stats.splice(index, 1)
}

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
      :title="isNew ? '新增产品页' : '编辑产品页'"
      :description="form.page_type === 'category' ? '二级分类页：管理 Hero、产品列表与其他模块' : '三级 SKU 页：管理详情页内容'"
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

      <template v-if="!loading || isNew">
        <a-tabs v-model:active-key="activeTab">
          <a-tab-pane key="basic" tab="基本信息">
            <a-form layout="vertical">
              <a-row :gutter="16">
                <a-col :xs="24" :md="8">
                  <a-form-item label="页面类型" required>
                    <a-select v-model:value="form.page_type" :disabled="!isNew">
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
                  <a-form-item label="Slug" required>
                    <a-input v-model:value="form.slug" />
                  </a-form-item>
                </a-col>
                <a-col :xs="24" :md="8">
                  <a-form-item label="所属二级分类">
                    <a-select
                      v-model:value="form.category_id"
                      allow-clear
                      placeholder="无"
                      @change="onCategoryChange"
                    >
                      <a-select-option v-for="cat in categories" :key="cat.id" :value="cat.id">
                        {{ cat.title }}
                      </a-select-option>
                    </a-select>
                  </a-form-item>
                </a-col>
                <template v-if="form.page_type === 'sku'">
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
                </template>
                <a-col :xs="24" :md="8">
                  <a-form-item label="排序">
                    <a-input-number v-model:value="form.sort_order" style="width: 100%" />
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
                <a-col :xs="24" :md="8">
                  <a-form-item label="已发布">
                    <a-switch v-model:checked="form.published" />
                  </a-form-item>
                </a-col>
              </a-row>
            </a-form>
          </a-tab-pane>

          <a-tab-pane key="hero" tab="SEO & Hero">
            <a-card title="SEO" size="small" style="margin-bottom: 16px">
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

            <a-card title="Hero" size="small">
              <a-form layout="vertical">
                <a-row :gutter="16">
                  <a-col :span="24">
                    <a-form-item label="Eyebrow">
                      <a-input v-model:value="form.hero.eyebrow" />
                    </a-form-item>
                  </a-col>
                  <a-col :xs="24" :md="12">
                    <a-form-item label="标题">
                      <a-input v-model:value="form.hero.title" />
                    </a-form-item>
                  </a-col>
                  <a-col :xs="24" :md="12">
                    <a-form-item label="标题高亮">
                      <a-input v-model:value="form.hero.titleHighlight" />
                    </a-form-item>
                  </a-col>
                  <a-col :span="24">
                    <a-form-item label="副标题（支持 HTML）">
                      <a-textarea v-model:value="form.hero.subtitle" :rows="3" />
                    </a-form-item>
                  </a-col>
                </a-row>

                <a-divider orientation="left">
                  统计数字
                </a-divider>
                <a-space direction="vertical" style="width: 100%; margin-bottom: 12px">
                  <a-row v-for="(stat, idx) in form.hero.stats" :key="idx" :gutter="8" align="middle">
                    <a-col :span="8">
                      <a-input v-model:value="stat.num" placeholder="100K+" />
                    </a-col>
                    <a-col :span="12">
                      <a-input v-model:value="stat.lbl" placeholder="Cycle Life" />
                    </a-col>
                    <a-col :span="4">
                      <a-button danger size="small" @click="removeHeroStat(idx)">
                        删除
                      </a-button>
                    </a-col>
                  </a-row>
                </a-space>
                <a-button @click="addHeroStat">
                  <template #icon>
                    <PlusOutlined />
                  </template>
                  添加统计项
                </a-button>
              </a-form>
            </a-card>

            <template v-if="form.hero_side === 'spotlight'">
              <a-card title="Spotlight" size="small" style="margin-top: 16px">
                <AdminJsonEditor v-model="form.spotlight" />
              </a-card>
              <a-card title="Hero CTAs" size="small" style="margin-top: 16px">
                <AdminJsonEditor v-model="form.hero_ctas" />
              </a-card>
            </template>
          </a-tab-pane>

          <a-tab-pane
            v-if="form.page_type === 'category' && !isNew"
            key="lineup"
            tab="产品列表"
          >
            <a-typography-paragraph type="secondary">
              二级分类页中展示的产品卡片（如 CN-300）。可关联三级 SKU 页作为跳转目标。
            </a-typography-paragraph>
            <AdminLineupEditor
              :page-id="pageId"
              :items="lineupItems"
              :sku-pages="skuPages"
              @refresh="loadLineup"
            />
          </a-tab-pane>

          <a-tab-pane key="sections" tab="页面模块">
            <a-typography-paragraph type="secondary" style="margin-bottom: 12px">
              {{
                form.page_type === 'category'
                  ? 'Benefits、FAQ、应用场景等模块。产品列表请在「产品列表」Tab 管理。'
                  : '产品规格（Spec Grid）支持表格编辑与图片上传；FAQ、Downloads 等模块仍用 JSON 编辑。'
              }}
            </a-typography-paragraph>
            <AdminSectionsEditor v-model="form.sections" />
          </a-tab-pane>
        </a-tabs>

        <AdminSaveBar :saving="saving" :message="message" @save="save" />
      </template>
    </a-spin>
  </div>
</template>
