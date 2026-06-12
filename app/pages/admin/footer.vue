<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const { adminFetch } = useAdminApi()
const footerColumns = ref<unknown[]>([])
const footerLegal = ref<unknown[]>([])
const saving = ref(false)
const message = ref('')

onMounted(async () => {
  const data = await adminFetch<Record<string, unknown>>('/api/admin/settings')
  footerColumns.value = (data.footer_columns as unknown[]) ?? []
  footerLegal.value = (data.footer_legal as unknown[]) ?? []
})

async function save() {
  saving.value = true
  message.value = ''
  try {
    await adminFetch('/api/admin/settings/footer_columns', {
      method: 'PUT',
      body: { value: footerColumns.value },
    })
    await adminFetch('/api/admin/settings/footer_legal', {
      method: 'PUT',
      body: { value: footerLegal.value },
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
    <AdminPageHeader title="页脚" description="页脚栏目与法律链接" />
    <div class="panel">
      <h2>栏目</h2>
      <AdminJsonEditor v-model="footerColumns" />
      <h2>法律链接</h2>
      <AdminJsonEditor v-model="footerLegal" />
      <AdminSaveBar :saving="saving" :message="message" @save="save" />
    </div>
  </div>
</template>

<style scoped>
.panel { background: #fff; border: 1px solid #dde3ea; padding: 24px; }
h2 { font-size: 16px; margin: 24px 0 12px; }
h2:first-child { margin-top: 0; }
</style>
