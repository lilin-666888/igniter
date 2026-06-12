<script setup lang="ts">
definePageMeta({ layout: 'admin', middleware: 'admin' })

const links = [
  { to: '/admin/site', title: '站点设置', desc: '联系方式、顶栏文案' },
  { to: '/admin/navigation', title: '导航菜单', desc: '主导航结构' },
  { to: '/admin/footer', title: '页脚', desc: '页脚链接与法律信息' },
  { to: '/admin/homepage', title: '首页内容', desc: '统计、证言、资源卡片等' },
  { to: '/admin/products', title: '产品分类', desc: '首页产品目录卡片' },
  { to: '/admin/inquiries', title: '询盘', desc: '客户报价请求' },
]
</script>

<template>
  <div>
    <h1 class="page-title">后台概览</h1>
    <p class="page-desc">管理网站动态内容。图片上传后保存相对路径（如 /uploads/xxx.jpg）。</p>
    <div class="card-grid">
      <NuxtLink v-for="item in links" :key="item.to" :to="item.to" class="card">
        <h2>{{ item.title }}</h2>
        <p>{{ item.desc }}</p>
      </NuxtLink>
    </div>
  </div>
</template>

<style scoped>
.page-title { margin: 0 0 8px; font-size: 28px; }
.page-desc { color: #667; margin: 0 0 24px; }
.card-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(220px, 1fr));
  gap: 16px;
}
.card {
  background: #fff;
  border: 1px solid #dde3ea;
  padding: 20px;
  text-decoration: none;
  color: inherit;
  transition: border-color 0.15s;
}
.card:hover { border-color: #f26419; }
.card h2 { margin: 0 0 8px; font-size: 18px; }
.card p { margin: 0; color: #667; font-size: 14px; }
</style>
