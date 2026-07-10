<script setup lang="ts">
import zhCN from 'ant-design-vue/es/locale/zh_CN'

definePageMeta({ layout: false })

const route = useRoute()
const { $supabase } = useNuxtApp()
const email = ref('')
const password = ref('')
const loading = ref(false)
const errorMsg = ref(route.query.error === 'forbidden' ? '该账号无管理员权限' : '')

async function onSubmit() {
  loading.value = true
  errorMsg.value = ''
  try {
    const { error } = await $supabase.auth.signInWithPassword({
      email: email.value.trim(),
      password: password.value,
    })
    if (error) throw error
    await $supabase.auth.refreshSession()
    const { data: { user } } = await $supabase.auth.getUser()
    if (user?.app_metadata?.role !== 'admin') {
      await $supabase.auth.signOut()
      errorMsg.value = '该账号无管理员权限。请联系管理员在数据库 raw_app_meta_data 中设置 role: admin'
      return
    }
    await navigateTo('/admin')
  } catch (e: unknown) {
    errorMsg.value = e instanceof Error ? e.message : '登录失败'
  } finally {
    loading.value = false
  }
}
</script>

<template>
  <a-config-provider :locale="zhCN">
    <div class="login-page">
      <a-card class="login-card" :bordered="false">
        <a-typography-title :level="3" style="margin-top: 0">
          Ceramitell 后台
        </a-typography-title>
        <a-typography-paragraph type="secondary">
          使用 Supabase 管理员账号登录
        </a-typography-paragraph>

        <a-alert
          v-if="errorMsg"
          type="error"
          :message="errorMsg"
          show-icon
          style="margin-bottom: 16px"
        />

        <a-form layout="vertical" @submit.prevent="onSubmit">
          <a-form-item label="邮箱">
            <a-input
              v-model:value="email"
              type="email"
              autocomplete="username"
              placeholder="admin@example.com"
              required
            />
          </a-form-item>
          <a-form-item label="密码">
            <a-input-password
              v-model:value="password"
              autocomplete="current-password"
              placeholder="请输入密码"
              required
            />
          </a-form-item>
          <a-form-item style="margin-bottom: 0">
            <a-button type="primary" html-type="submit" block :loading="loading">
              登录
            </a-button>
          </a-form-item>
        </a-form>
      </a-card>
    </div>
  </a-config-provider>
</template>

<style scoped>
.login-page {
  min-height: 100vh;
  display: grid;
  place-items: center;
  background: linear-gradient(135deg, #001529 0%, #0a2647 100%);
  padding: 24px;
}

.login-card {
  width: 100%;
  max-width: 400px;
  box-shadow: 0 8px 32px rgba(0, 0, 0, 0.2);
}
</style>
