<script setup lang="ts">
defineProps<{
  title: string
  description?: string
}>()
</script>

<template>
  <div class="admin-page-header">
    <a-typography-title :level="3" style="margin: 0">
      {{ title }}
    </a-typography-title>
    <a-typography-paragraph v-if="description" type="secondary" style="margin: 8px 0 0">
      {{ description }}
    </a-typography-paragraph>
    <slot />
  </div>
</template>

<style scoped>
.admin-page-header {
  margin-bottom: 24px;
}
</style>
