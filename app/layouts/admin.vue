<script setup lang="ts">
import {
  AppstoreOutlined,
  DashboardOutlined,
  FileTextOutlined,
  LogoutOutlined,
  MailOutlined,
  SettingOutlined,
} from '@ant-design/icons-vue'
import zhCN from 'ant-design-vue/es/locale/zh_CN'

const route = useRoute()
const router = useRouter()
const { $supabase } = useNuxtApp()

const selectedKeys = computed(() => {
  const path = route.path
  if (path.startsWith('/admin/product-pages')) return ['/admin/product-pages']
  if (path.startsWith('/admin/products')) return ['/admin/products']
  return [path]
})

const menuItems = [
  { key: '/admin', icon: () => h(DashboardOutlined), label: '概览' },
  { key: '/admin/site', icon: () => h(SettingOutlined), label: '站点设置' },
  { key: '/admin/products', icon: () => h(AppstoreOutlined), label: '产品分类' },
  { key: '/admin/product-pages', icon: () => h(FileTextOutlined), label: '产品管理' },
  { key: '/admin/inquiries', icon: () => h(MailOutlined), label: '询盘' },
]

function onMenuClick({ key }: { key: string }) {
  router.push(key)
}

async function logout() {
  await $supabase.auth.signOut()
  router.push('/admin/login')
}
</script>

<template>
  <a-config-provider :locale="zhCN">
    <a-layout class="admin-layout">
      <a-layout-sider
        :width="220"
        theme="dark"
        breakpoint="lg"
        collapsible
      >
        <div class="admin-logo">
          Ceramitell <span>Admin</span>
        </div>
        <a-menu
          theme="dark"
          mode="inline"
          :selected-keys="selectedKeys"
          :items="menuItems"
          @click="onMenuClick"
        />
        <div class="admin-logout-wrap">
          <a-button type="text" block class="admin-logout-btn" @click="logout">
            <template #icon>
              <LogoutOutlined />
            </template>
            退出登录
          </a-button>
        </div>
      </a-layout-sider>
      <a-layout>
        <a-layout-content class="admin-content">
          <slot />
        </a-layout-content>
      </a-layout>
    </a-layout>
  </a-config-provider>
</template>

<style scoped>
.admin-layout {
  min-height: 100vh;
}

.admin-logo {
  color: #fff;
  font-weight: 700;
  font-size: 17px;
  padding: 20px 16px 12px;
  letter-spacing: 0.02em;
}

.admin-logo span {
  color: #f26419;
}

.admin-content {
  margin: 24px;
  padding: 24px;
  background: #fff;
  border-radius: 8px;
  min-height: calc(100vh - 48px);
}

.admin-logout-wrap {
  padding: 12px;
  margin-top: auto;
}

.admin-logout-btn {
  color: rgba(255, 255, 255, 0.85) !important;
  text-align: left;
}

.admin-logout-btn:hover {
  color: #fff !important;
  background: rgba(255, 255, 255, 0.08) !important;
}

:deep(.ant-layout-sider-children) {
  display: flex;
  flex-direction: column;
}
</style>
