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
  <div class="editor">
    <label v-if="label">{{ label }}</label>
    <textarea v-model="text" rows="16" @input="onInput" />
    <p v-if="parseError" class="error">{{ parseError }}</p>
  </div>
</template>

<style scoped>
.editor { display: flex; flex-direction: column; gap: 8px; }
label { font-size: 12px; font-weight: 600; color: #445; }
textarea {
  font-family: ui-monospace, monospace;
  font-size: 13px;
  padding: 12px;
  border: 1px solid #ccd3dc;
  width: 100%;
  box-sizing: border-box;
}
.error { color: #c0392b; font-size: 13px; margin: 0; }
</style>
