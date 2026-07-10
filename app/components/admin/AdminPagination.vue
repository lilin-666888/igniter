<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    page: number
    totalPages: number
    total: number
    pageSize?: number
  }>(),
  { pageSize: 10 },
)

const emit = defineEmits<{
  change: [page: number]
}>()
</script>

<template>
  <div v-if="totalPages > 1" class="admin-pagination">
    <a-pagination
      :current="page"
      :total="total"
      :page-size="pageSize"
      :show-size-changer="false"
      :show-total="(t: number) => `共 ${t} 条`"
      @change="(p: number) => emit('change', p)"
    />
  </div>
</template>

<style scoped>
.admin-pagination {
  margin: 24px 0;
  display: flex;
  justify-content: flex-end;
}
</style>
