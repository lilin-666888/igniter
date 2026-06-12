<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const { adminFetch } = useAdminApi()
const contactInfo = ref<Record<string, string>>({})
const topbarItems = ref<unknown[]>([])
const saving = ref(false)
const message = ref('')

onMounted(async () => {
  const data = await adminFetch<Record<string, unknown>>('/api/admin/settings')
  contactInfo.value = (data.contact_info as Record<string, string>) ?? {}
  topbarItems.value = (data.topbar_items as unknown[]) ?? []
})

async function save() {
  saving.value = true
  message.value = ''
  try {
    await adminFetch('/api/admin/settings/contact_info', {
      method: 'PUT',
      body: { value: contactInfo.value },
    })
    await adminFetch('/api/admin/settings/topbar_items', {
      method: 'PUT',
      body: { value: topbarItems.value },
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
    <AdminPageHeader title="站点设置" description="联系方式与顶栏滚动文案" />
    <div class="panel">
      <h2>联系方式</h2>
      <div class="fields">
        <label>邮箱 <input v-model="contactInfo.email" /></label>
        <label>电话 <input v-model="contactInfo.phone" /></label>
        <label>展示文案 <input v-model="contactInfo.display" /></label>
      </div>
      <h2>顶栏</h2>
      <AdminJsonEditor v-model="topbarItems" />
      <AdminSaveBar :saving="saving" :message="message" @save="save" />
    </div>
  </div>
</template>

<style scoped>
.panel { background: #fff; border: 1px solid #dde3ea; padding: 24px; }
h2 { font-size: 16px; margin: 0 0 12px; }
.fields { display: grid; gap: 12px; margin-bottom: 24px; }
label { display: flex; flex-direction: column; gap: 4px; font-size: 12px; font-weight: 600; }
input { padding: 8px 10px; border: 1px solid #ccd3dc; }
</style>
