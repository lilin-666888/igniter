<script setup lang="ts">
const props = defineProps<{
  page: number
  totalPages: number
  total: number
}>()

const emit = defineEmits<{
  change: [page: number]
}>()
</script>

<template>
  <div v-if="totalPages > 1" class="pager">
    <button type="button" :disabled="page <= 1" @click="emit('change', page - 1)">
      上一页
    </button>
    <span>第 {{ page }} / {{ totalPages }} 页（共 {{ total }} 条）</span>
    <button
      type="button"
      :disabled="page >= totalPages"
      @click="emit('change', page + 1)"
    >
      下一页
    </button>
  </div>
</template>

<style scoped>
.pager {
  display: flex;
  align-items: center;
  gap: 16px;
  margin: 20px 0;
  font-size: 14px;
  color: #556;
}
.pager button {
  padding: 6px 14px;
  border: 1px solid #ccd3dc;
  background: #fff;
  cursor: pointer;
}
.pager button:disabled {
  opacity: 0.4;
  cursor: not-allowed;
}
</style>
