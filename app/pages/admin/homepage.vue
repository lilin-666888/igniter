<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const { adminFetch } = useAdminApi()

const sections = [
  { key: 'hero_stats', label: 'Hero 统计', type: 'setting' },
  { key: 'spec_card_specs', label: '规格卡片', type: 'setting' },
  { key: 'spotlight_stats', label: '材料亮点', type: 'setting' },
  { key: 'quote_outcomes', label: '报价成果', type: 'setting' },
  { key: 'entry_cards', label: '入口卡片', type: 'content' },
  { key: 'testimonials', label: '客户证言', type: 'content' },
  { key: 'resource_cards', label: '资源卡片', type: 'content' },
  { key: 'techman_cards', label: '技术手册', type: 'content' },
  { key: 'contact_promises', label: '联系承诺', type: 'content' },
  { key: 'certifications', label: '认证徽章', type: 'content' },
]

const active = ref('hero_stats')
const jsonValue = ref<unknown>([])
const saving = ref(false)
const message = ref('')

const activeMeta = computed(() => sections.find(s => s.key === active.value)!)

async function load() {
  message.value = ''
  const key = active.value
  const meta = sections.find(s => s.key === key)!
  if (meta.type === 'setting') {
    const data = await adminFetch<Record<string, unknown>>('/api/admin/settings')
    jsonValue.value = data[key] ?? []
  } else {
    const items = await adminFetch<Array<{ data: unknown }>>(
      `/api/admin/content-items?section=${key}`,
    )
    jsonValue.value = items.map(i => i.data)
  }
}

onMounted(load)
watch(active, load)

async function save() {
  saving.value = true
  message.value = ''
  try {
    const key = active.value
    if (activeMeta.value.type === 'setting') {
      await adminFetch(`/api/admin/settings/${key}`, {
        method: 'PUT',
        body: { value: jsonValue.value },
      })
    } else {
      const existing = await adminFetch<Array<{ id: string }>>(
        `/api/admin/content-items?section=${key}`,
      )
      for (const row of existing) {
        await adminFetch(`/api/admin/content-items/${row.id}`, { method: 'DELETE' })
      }
      const arr = jsonValue.value as unknown[]
      for (let i = 0; i < arr.length; i++) {
        await adminFetch('/api/admin/content-items', {
          method: 'POST',
          body: { section: key, sort_order: i, data: arr[i], published: true },
        })
      }
    }
    message.value = '已保存'
  } catch (e: unknown) {
    message.value = e instanceof Error ? e.message : '保存失败'
  } finally {
    saving.value = false
  }
}
</script>

<template>
  <div>
    <AdminPageHeader title="首页内容" description="按区块编辑首页动态数据" />
    <div class="layout">
      <aside class="tabs">
        <button
          v-for="s in sections"
          :key="s.key"
          type="button"
          :class="{ active: active === s.key }"
          @click="active = s.key"
        >
          {{ s.label }}
        </button>
      </aside>
      <div class="panel">
        <AdminJsonEditor v-model="jsonValue" :label="activeMeta.label" />
        <AdminSaveBar :saving="saving" :message="message" @save="save" />
      </div>
    </div>
  </div>
</template>

<style scoped>
.layout { display: grid; grid-template-columns: 200px 1fr; gap: 16px; }
.tabs { display: flex; flex-direction: column; gap: 4px; }
.tabs button {
  text-align: left;
  padding: 10px 12px;
  border: 1px solid #dde3ea;
  background: #fff;
  cursor: pointer;
  font-size: 13px;
}
.tabs button.active {
  border-color: #f26419;
  background: #fff5ef;
}
.panel { background: #fff; border: 1px solid #dde3ea; padding: 24px; }
</style>
