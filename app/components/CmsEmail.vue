<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    kind?: 'sales' | 'engineering'
    link?: boolean
  }>(),
  {
    kind: 'engineering',
    link: true,
  },
)

const { email, engineeringEmail } = useContact()
const value = computed(() => (props.kind === 'sales' ? email.value : engineeringEmail.value))
</script>

<template>
  <a
    v-if="link"
    v-bind="$attrs"
    :href="`mailto:${value}`"
    :style="kind === 'engineering' ? { color: 'var(--orange)' } : undefined"
  >{{ value }}</a>
  <span v-else v-bind="$attrs">{{ value }}</span>
</template>
