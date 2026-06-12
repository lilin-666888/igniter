<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

type Inquiry = {
  id: string
  name: string
  email: string
  phone: string | null
  message: string | null
  page_url: string | null
  status: string
  created_at: string
}

const { adminFetch } = useAdminApi()
const items = ref<Inquiry[]>([])
const loading = ref(true)

const statusOptions = ['new', 'assigned', 'quoted', 'won', 'lost', 'closed']

onMounted(async () => {
  try {
    items.value = await adminFetch<Inquiry[]>('/api/admin/inquiries')
  } finally {
    loading.value = false
  }
})

async function updateStatus(item: Inquiry, status: string) {
  await adminFetch(`/api/admin/inquiries/${item.id}`, {
    method: 'PATCH',
    body: { status },
  })
  item.status = status
}
</script>

<template>
  <div>
    <AdminPageHeader title="询盘" description="来自联系表单的报价请求" />
    <p v-if="loading">加载中…</p>
    <div v-else-if="items.length === 0" class="empty">暂无询盘</div>
    <div v-else class="list">
      <article v-for="item in items" :key="item.id" class="item">
        <div class="head">
          <strong>{{ item.name }}</strong>
          <span>{{ new Date(item.created_at).toLocaleString() }}</span>
        </div>
        <p><a :href="`mailto:${item.email}`">{{ item.email }}</a> · {{ item.phone || '—' }}</p>
        <p v-if="item.page_url" class="muted">来源：{{ item.page_url }}</p>
        <p class="msg">{{ item.message || '（无留言）' }}</p>
        <select :value="item.status" @change="updateStatus(item, ($event.target as HTMLSelectElement).value)">
          <option v-for="s in statusOptions" :key="s" :value="s">{{ s }}</option>
        </select>
      </article>
    </div>
  </div>
</template>

<style scoped>
.empty { color: #667; }
.list { display: flex; flex-direction: column; gap: 12px; }
.item {
  background: #fff;
  border: 1px solid #dde3ea;
  padding: 16px;
}
.head { display: flex; justify-content: space-between; margin-bottom: 8px; }
.muted { color: #667; font-size: 13px; }
.msg { white-space: pre-wrap; margin: 8px 0; }
select { margin-top: 8px; padding: 6px; }
</style>
