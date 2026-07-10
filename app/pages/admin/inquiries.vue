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

const statusOptions = [
  { value: 'new', label: 'new' },
  { value: 'assigned', label: 'assigned' },
  { value: 'quoted', label: 'quoted' },
  { value: 'won', label: 'won' },
  { value: 'lost', label: 'lost' },
  { value: 'closed', label: 'closed' },
]

const statusColors: Record<string, string> = {
  new: 'blue',
  assigned: 'cyan',
  quoted: 'orange',
  won: 'green',
  lost: 'red',
  closed: 'default',
}

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

const columns = [
  { title: '客户', dataIndex: 'name', key: 'name', width: 120 },
  {
    title: '联系',
    key: 'contact',
    width: 220,
  },
  {
    title: '留言',
    dataIndex: 'message',
    key: 'message',
    ellipsis: true,
  },
  {
    title: '来源',
    dataIndex: 'page_url',
    key: 'page_url',
    ellipsis: true,
    width: 180,
  },
  {
    title: '时间',
    key: 'created_at',
    width: 170,
  },
  {
    title: '状态',
    key: 'status',
    width: 140,
  },
]
</script>

<template>
  <div>
    <AdminPageHeader title="询盘" description="来自联系表单的报价请求" />

    <a-spin :spinning="loading">
      <a-empty v-if="!loading && items.length === 0" description="暂无询盘" />

      <a-table
        v-else
        :columns="columns"
        :data-source="items"
        :pagination="{ pageSize: 10, showTotal: (t: number) => `共 ${t} 条` }"
        row-key="id"
      >
        <template #bodyCell="{ column, record }">
          <template v-if="column.key === 'contact'">
            <a-space direction="vertical" :size="0">
              <a :href="`mailto:${record.email}`">{{ record.email }}</a>
              <a-typography-text type="secondary">
                {{ record.phone || '—' }}
              </a-typography-text>
            </a-space>
          </template>
          <template v-else-if="column.key === 'message'">
            {{ record.message || '（无留言）' }}
          </template>
          <template v-else-if="column.key === 'created_at'">
            {{ new Date(record.created_at).toLocaleString() }}
          </template>
          <template v-else-if="column.key === 'status'">
            <a-select
              :value="record.status"
              size="small"
              style="width: 120px"
              @change="(val: string) => updateStatus(record, val)"
            >
              <a-select-option
                v-for="opt in statusOptions"
                :key="opt.value"
                :value="opt.value"
              >
                <a-tag :color="statusColors[opt.value]" style="margin: 0">
                  {{ opt.label }}
                </a-tag>
              </a-select-option>
            </a-select>
          </template>
        </template>
      </a-table>
    </a-spin>
  </div>
</template>
