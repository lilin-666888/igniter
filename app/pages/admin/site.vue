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

    <a-card title="联系方式" style="margin-bottom: 16px">
      <a-form layout="vertical">
        <a-row :gutter="16">
          <a-col :xs="24" :md="12">
            <a-form-item label="销售邮箱（询盘通知将发送到此地址）">
              <a-input v-model:value="contactInfo.email" type="email" />
            </a-form-item>
          </a-col>
          <a-col :xs="24" :md="12">
            <a-form-item label="工程邮箱">
              <a-input v-model:value="contactInfo.engineering_email" />
            </a-form-item>
          </a-col>
          <a-col :xs="24" :md="12">
            <a-form-item label="电话 / WhatsApp">
              <a-input v-model:value="contactInfo.phone" />
            </a-form-item>
          </a-col>
          <a-col :xs="24" :md="12">
            <a-form-item label="微信">
              <a-input v-model:value="contactInfo.wechat" />
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="顶栏展示文案（保存时自动根据邮箱+电话生成）">
              <a-input v-model:value="contactInfo.display" readonly />
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="LinkedIn">
              <a-input v-model:value="contactInfo.linkedin" />
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="办公地址">
              <a-textarea v-model:value="contactInfo.address" :rows="3" />
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="工厂地址">
              <a-textarea v-model:value="contactInfo.factory" :rows="2" />
            </a-form-item>
          </a-col>
          <a-col :span="24">
            <a-form-item label="营业时间">
              <a-textarea v-model:value="contactInfo.business_hours" :rows="2" />
            </a-form-item>
          </a-col>
        </a-row>
      </a-form>
    </a-card>

    <a-card title="顶栏">
      <AdminJsonEditor v-model="topbarItems" />
    </a-card>

    <AdminSaveBar :saving="saving" :message="message" @save="save" />
  </div>
</template>
