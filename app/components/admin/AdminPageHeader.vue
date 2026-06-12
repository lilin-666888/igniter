<script setup lang="ts">
defineProps<{
  title: string
  description?: string
}>()
</script>

<template>
  <div class="header">
    <h1>{{ title }}</h1>
    <p v-if="description">{{ description }}</p>
    <slot />
  </div>
</template>

<style scoped>
.header { margin-bottom: 24px; }
h1 { margin: 0 0 8px; font-size: 24px; }
p { margin: 0; color: #667; font-size: 14px; }
</style>
