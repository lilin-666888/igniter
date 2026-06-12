<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const { adminFetch } = useAdminApi()
const navLinks = ref<unknown[]>([])
const saving = ref(false)
const message = ref('')

onMounted(async () => {
  const data = await adminFetch<Record<string, unknown>>('/api/admin/settings')
  navLinks.value = (data.nav_links as unknown[]) ?? []
})

async function save() {
  saving.value = true
  message.value = ''
  try {
    await adminFetch('/api/admin/settings/nav_links', {
      method: 'PUT',
      body: { value: navLinks.value },
    })
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
    <AdminPageHeader
      title="导航菜单"
      description="JSON 编辑主导航结构（label, to, groups）"
    />
    <div class="panel">
      <AdminJsonEditor v-model="navLinks" />
      <AdminSaveBar :saving="saving" :message="message" @save="save" />
    </div>
  </div>
</template>

<style scoped>
.panel { background: #fff; border: 1px solid #dde3ea; padding: 24px; }
</style>
