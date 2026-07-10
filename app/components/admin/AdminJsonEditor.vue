<script setup lang="ts">
const props = defineProps<{
  modelValue: unknown
  label?: string
}>()

const emit = defineEmits<{
  'update:modelValue': [value: unknown]
}>()

const text = ref('')
const parseError = ref('')

watch(
  () => props.modelValue,
  (val) => {
    text.value = JSON.stringify(val, null, 2)
  },
  { immediate: true },
)

function onInput() {
  parseError.value = ''
  try {
    emit('update:modelValue', JSON.parse(text.value))
  } catch {
    parseError.value = 'JSON 格式无效'
  }
}
</script>

<template>
  <a-form-item
    :label="label"
    :validate-status="parseError ? 'error' : undefined"
    :help="parseError || undefined"
    style="margin-bottom: 0"
  >
    <a-textarea
      v-model:value="text"
      :rows="16"
      class="admin-json-editor"
      @input="onInput"
    />
  </a-form-item>
</template>

<style scoped>
.admin-json-editor :deep(textarea) {
  font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, monospace;
  font-size: 13px;
}
</style>
