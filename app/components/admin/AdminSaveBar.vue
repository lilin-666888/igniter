<script setup lang="ts">
defineProps<{
  saving?: boolean
  message?: string
}>()

defineEmits<{ save: [] }>()
</script>

<template>
  <div class="bar">
    <span v-if="message" class="msg">{{ message }}<template v-if="message === '已保存'"> · 返回前台页面即可看到更新</template></span>
    <button type="button" :disabled="saving" @click="$emit('save')">
      {{ saving ? '保存中…' : '保存' }}
    </button>
  </div>
</template>

<style scoped>
.bar {
  display: flex;
  align-items: center;
  gap: 16px;
  margin-top: 16px;
  padding-top: 16px;
  border-top: 1px solid #dde3ea;
}
button {
  background: #f26419;
  color: #fff;
  border: none;
  padding: 10px 20px;
  font-weight: 700;
  cursor: pointer;
}
button:disabled { opacity: 0.6; }
.msg { color: #2d8a4e; font-size: 14px; }
</style>
