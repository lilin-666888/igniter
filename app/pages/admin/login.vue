<script setup lang="ts">
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
    // 从服务端拉取最新 app_metadata（避免 JWT 里 role 未刷新）
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
  <div class="login-page">
    <form class="login-card" @submit.prevent="onSubmit">
      <h1>Ceramitell 后台</h1>
      <p class="sub">使用 Supabase 管理员账号登录</p>
      <label>邮箱</label>
      <input v-model="email" type="email" required autocomplete="username" />
      <label>密码</label>
      <input v-model="password" type="password" required autocomplete="current-password" />
      <p v-if="errorMsg" class="error">{{ errorMsg }}</p>
      <button type="submit" :disabled="loading">{{ loading ? '登录中…' : '登录' }}</button>
    </form>
  </div>
</template>

<style scoped>
.login-page {
  min-height: 100vh;
  display: grid;
  place-items: center;
  background: #0a2647;
  padding: 24px;
}
.login-card {
  width: 100%;
  max-width: 400px;
  background: #fff;
  padding: 32px;
  display: flex;
  flex-direction: column;
  gap: 10px;
}
h1 {
  margin: 0;
  font-size: 22px;
  color: #0a2647;
}
.sub {
  margin: 0 0 12px;
  color: #667;
  font-size: 14px;
}
label {
  font-size: 12px;
  font-weight: 600;
  color: #445;
}
input {
  padding: 10px 12px;
  border: 1px solid #ccd3dc;
  margin-bottom: 8px;
}
button {
  margin-top: 8px;
  background: #f26419;
  color: #fff;
  border: none;
  padding: 12px;
  font-weight: 700;
  cursor: pointer;
}
button:disabled {
  opacity: 0.6;
}
.error {
  color: #c0392b;
  font-size: 13px;
  margin: 0;
}
</style>
