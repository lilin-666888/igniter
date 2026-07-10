<script setup lang="ts">
defineProps<{
  saving?: boolean
  message?: string
}>()

defineEmits<{ save: [] }>()
</script>

<template>
  <div class="admin-save-bar">
    <a-space>
      <a-typography-text v-if="message" :type="message.includes('失败') ? 'danger' : 'success'">
        {{ message }}
        <template v-if="message === '已保存'"> · 返回前台页面即可看到更新</template>
      </a-typography-text>
      <a-button type="primary" :loading="saving" @click="$emit('save')">
        保存
      </a-button>
    </a-space>
  </div>
</template>

<style scoped>
.admin-save-bar {
  margin-top: 24px;
  padding-top: 16px;
  border-top: 1px solid #f0f0f0;
}
</style>
