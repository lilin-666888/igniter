<script setup lang="ts">
import {
  AppstoreOutlined,
  FileTextOutlined,
  MailOutlined,
  SettingOutlined,
} from '@ant-design/icons-vue'

definePageMeta({ layout: 'admin', middleware: 'admin' })

const links = [
  { to: '/admin/site', title: '站点设置', desc: '联系方式、顶栏文案', icon: SettingOutlined },
  { to: '/admin/products', title: '产品分类', desc: 'Products 导航二级/三级菜单', icon: AppstoreOutlined },
  { to: '/admin/product-pages', title: '产品管理', desc: '分类页与 SKU 详情页内容', icon: FileTextOutlined },
  { to: '/admin/inquiries', title: '询盘', desc: '客户报价请求', icon: MailOutlined },
]
</script>

<template>
  <div>
    <AdminPageHeader
      title="后台概览"
      description="管理网站动态内容。图片上传至七牛云，数据库保存相对路径（如 /uploads/xxx.jpg）。"
    />
    <a-row :gutter="[16, 16]">
      <a-col
        v-for="item in links"
        :key="item.to"
        :xs="24"
        :sm="12"
        :lg="6"
      >
        <NuxtLink :to="item.to" class="overview-link">
          <a-card hoverable>
            <a-space direction="vertical" :size="8">
              <component :is="item.icon" style="font-size: 24px; color: #1677ff" />
              <a-typography-title :level="5" style="margin: 0">
                {{ item.title }}
              </a-typography-title>
              <a-typography-text type="secondary">
                {{ item.desc }}
              </a-typography-text>
            </a-space>
          </a-card>
        </NuxtLink>
      </a-col>
    </a-row>
  </div>
</template>

<style scoped>
.overview-link {
  display: block;
  color: inherit;
  text-decoration: none;
}
</style>
