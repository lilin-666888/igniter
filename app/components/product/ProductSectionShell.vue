<script setup lang="ts">
defineProps<{
  num?: string
  headingHtml: string
  lead?: string
  softBg?: boolean
  sectionId?: string
  quoteSec?: boolean
}>()
</script>

<template>
  <section
    :id="sectionId"
    :class="['s', { 's--soft': softBg, 'quote-sec': quoteSec }]"
  >
    <div class="wrap">
      <div v-if="num" class="sec-num">{{ num }}</div>
      <h2 v-html="headingHtml" />
      <p v-if="lead" class="sec-lead" v-html="lead" />
      <slot />
    </div>
  </section>
</template>
