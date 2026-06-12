<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const { adminFetch } = useAdminApi()
const contactInfo = ref<Record<string, string>>({})
const topbarItems = ref<unknown[]>([])
const saving = ref(false)
const message = ref('')

function syncTopbarDisplay() {
  const { email, phone } = contactInfo.value
  if (email && phone) {
    contactInfo.value.display = `${email} · ${phone}`
  }
}

onMounted(async () => {
  const data = await adminFetch<Record<string, unknown>>('/api/admin/settings')
  contactInfo.value = (data.contact_info as Record<string, string>) ?? {}
  topbarItems.value = (data.topbar_items as unknown[]) ?? []
  syncTopbarDisplay()
})

watch(
  () => [contactInfo.value.email, contactInfo.value.phone],
  syncTopbarDisplay,
)

async function save() {
  saving.value = true
  message.value = ''
  try {
    syncTopbarDisplay()
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
        <label>销售邮箱（询盘通知将发送到此地址）<input v-model="contactInfo.email" type="email" /></label>
        <label>工程邮箱 <input v-model="contactInfo.engineering_email" /></label>
        <label>电话 / WhatsApp <input v-model="contactInfo.phone" /></label>
        <label>微信 <input v-model="contactInfo.wechat" /></label>
        <label>顶栏展示文案（保存时自动根据邮箱+电话生成）<input v-model="contactInfo.display" readonly /></label>
        <label>LinkedIn <input v-model="contactInfo.linkedin" /></label>
        <label>办公地址 <textarea v-model="contactInfo.address" rows="3" /></label>
        <label>工厂地址 <textarea v-model="contactInfo.factory" rows="2" /></label>
        <label>营业时间 <textarea v-model="contactInfo.business_hours" rows="2" /></label>
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
input, textarea { padding: 8px 10px; border: 1px solid #ccd3dc; font: inherit; }
</style>
