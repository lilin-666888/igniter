<template>
  <div class="admin-shell">
    <aside class="admin-sidebar">
      <div class="admin-brand">Ceramitell <span>Admin</span></div>
      <nav class="admin-nav">
        <NuxtLink to="/admin">概览</NuxtLink>
        <NuxtLink to="/admin/site">站点设置</NuxtLink>
        <NuxtLink to="/admin/navigation">导航菜单</NuxtLink>
        <NuxtLink to="/admin/footer">页脚</NuxtLink>
        <NuxtLink to="/admin/homepage">首页内容</NuxtLink>
        <NuxtLink to="/admin/products">产品分类</NuxtLink>
        <NuxtLink to="/admin/inquiries">询盘</NuxtLink>
      </nav>
      <button class="admin-logout" type="button" @click="logout">
        退出登录
      </button>
    </aside>
    <main class="admin-main">
      <slot />
    </main>
  </div>
</template>

<script setup lang="ts">
const { $supabase } = useNuxtApp();
const router = useRouter();

async function logout() {
  await $supabase.auth.signOut();
  router.push("/admin/login");
}
</script>

<style scoped>
.admin-shell {
  display: grid;
  grid-template-columns: 240px 1fr;
  min-height: 100vh;
  background: #f4f6f9;
  font-family: var(--sans, system-ui, sans-serif);
  color: #0a2647;
}
.admin-sidebar {
  background: #0a2647;
  color: #fff;
  padding: 24px 16px;
  display: flex;
  flex-direction: column;
  gap: 24px;
}
.admin-brand {
  font-weight: 800;
  font-size: 18px;
  letter-spacing: 0.04em;
}
.admin-brand span {
  color: #f26419;
}
.admin-nav {
  display: flex;
  flex-direction: column;
  gap: 4px;
  flex: 1;
}
.admin-nav a {
  color: #000;
  text-decoration: none;
  padding: 10px 12px;
  border-radius: 4px;
  font-size: 14px;
}
.admin-nav a:hover,
.admin-nav a.router-link-active {
  background: rgba(242, 100, 25, 0.2);
  color: #fff;
}
.admin-logout {
  background: transparent;
  border: 1px solid rgba(255, 255, 255, 0.3);
  color: #fff;
  padding: 10px;
  cursor: pointer;
  border-radius: 4px;
}
.admin-main {
  padding: 32px;
  overflow: auto;
}
@media (max-width: 900px) {
  .admin-shell {
    grid-template-columns: 1fr;
  }
  .admin-sidebar {
    flex-direction: row;
    flex-wrap: wrap;
    align-items: center;
  }
  .admin-nav {
    flex-direction: row;
    flex-wrap: wrap;
  }
}
</style>
