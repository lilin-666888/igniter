<script setup lang="ts">
const props = withDefaults(
  defineProps<{
    variant?: 'inline' | 'card' | 'contact' | 'homepage'
    productContext?: string
    submitLabel?: string
    messageRequired?: boolean
    messageLabel?: string
    messagePlaceholder?: string
    showTrust?: boolean
    showPromises?: boolean
    showFine?: boolean
  }>(),
  {
    variant: 'inline',
    submitLabel: 'Request a Quote →',
    messageRequired: true,
    messageLabel: 'Requirements / Notes',
    messagePlaceholder: 'Application, material, dimensions, annual volume',
    showPromises: false,
    showFine: false,
  },
)

const route = useRoute()
const { email } = useContact()

const form = reactive({ name: '', email: '', phone: '', message: '' })
const submitting = ref(false)
const statusMessage = ref('')
const statusType = ref<'success' | 'error' | ''>('')

const isHomepage = computed(() => props.variant === 'homepage')
const isContact = computed(() => props.variant === 'contact')
const fieldClass = computed(() => (isHomepage.value ? 'contact-field' : 'qq-field'))
const rowClass = computed(() => (isHomepage.value ? 'contact-row' : 'qq-row'))
const submitClass = computed(() => (isHomepage.value ? 'contact-submit' : 'qq-submit'))
const formClass = computed(() => {
  const classes = ['quote-inquiry-form', `quote-inquiry-form--${props.variant}`]
  if (isContact.value) classes.push('qq-form')
  return classes
})

const showTrustLine = computed(() => {
  if (props.showTrust !== undefined) return props.showTrust
  return props.variant === 'inline' || props.variant === 'card'
})

const showFineLine = computed(() => props.showFine || props.variant === 'homepage')

async function onSubmit() {
  submitting.value = true
  statusMessage.value = ''
  statusType.value = ''
  try {
    await submitInquiry({
      name: form.name,
      email: form.email,
      phone: form.phone || undefined,
      message: form.message || undefined,
      product_context: props.productContext || route.path,
    })
    statusType.value = 'success'
    statusMessage.value = 'Submitted — we will reply within 24 hours.'
    form.name = ''
    form.email = ''
    form.phone = ''
    form.message = ''
  } catch {
    statusType.value = 'error'
    statusMessage.value = `Submission failed. Please email ${email.value} directly.`
  } finally {
    submitting.value = false
  }
}
</script>

<template>
  <form :class="formClass" @submit.prevent="onSubmit">
    <div :class="isHomepage ? 'contact-fields' : undefined">
      <div :class="fieldClass">
        <label>
          {{ isContact ? 'Your Name' : 'Name' }}
          <span v-if="isContact" class="req">*</span>
          <span v-else style="color: var(--orange)">*</span>
        </label>
        <input
          v-model="form.name"
          type="text"
          :placeholder="isContact ? 'e.g. Marco Rossi' : 'Your name'"
          required
        />
      </div>

      <div v-if="isContact" :class="rowClass">
        <div :class="fieldClass">
          <label>Email <span class="req">*</span></label>
          <input v-model="form.email" type="email" placeholder="you@company.com" required />
        </div>
        <div :class="fieldClass">
          <label>Phone / WhatsApp</label>
          <input v-model="form.phone" type="tel" placeholder="+1 / +39 / +86 ..." />
        </div>
      </div>

      <template v-else>
        <div :class="fieldClass">
          <label>Email <span style="color: var(--orange)">*</span></label>
          <input v-model="form.email" type="email" placeholder="you@company.com" required />
        </div>
        <div :class="fieldClass">
          <label>
            Phone
            <span
              style="color: var(--ink-faint); font-weight: 400; letter-spacing: 0"
            >(optional)</span>
          </label>
          <input v-model="form.phone" type="tel" placeholder="+1 / +39 / +86 ..." />
        </div>
      </template>

      <div :class="fieldClass">
        <label>
          <template v-if="isContact">
            What do you need?
            <span style="color: var(--ink-faint); font-weight: 400">(optional)</span>
          </template>
          <template v-else>
            {{ messageLabel }}
            <span v-if="messageRequired" style="color: var(--orange)">*</span>
          </template>
        </label>
        <textarea
          v-model="form.message"
          :placeholder="messagePlaceholder"
          :required="messageRequired"
        />
      </div>
    </div>

    <button type="submit" :class="submitClass" :disabled="submitting">
      {{ submitting ? 'Sending…' : submitLabel }}
    </button>

    <p
      v-if="statusMessage"
      class="quote-inquiry-status"
      :class="{
        'quote-inquiry-status--success': statusType === 'success',
        'quote-inquiry-status--error': statusType === 'error',
      }"
    >
      {{ statusMessage }}
    </p>

    <div v-if="showPromises" class="qq-promise">
      <div class="qq-promise-item">
        <div class="num">24h</div>
        <div class="lbl">Reply Time</div>
      </div>
      <div class="qq-promise-item">
        <div class="num">Free</div>
        <div class="lbl">Samples</div>
      </div>
      <div class="qq-promise-item">
        <div class="num">48h</div>
        <div class="lbl">Sample Dispatch</div>
      </div>
      <div class="qq-promise-item">
        <div class="num">NDA</div>
        <div class="lbl">On Request</div>
      </div>
    </div>

    <div v-if="showTrustLine" class="qq-trust">🔒 Reply within 24h · NDA available · No spam</div>

    <div v-if="showFineLine" class="contact-fine">
      No spam. No sales scripts. Engineer reads this within 24h.
    </div>
  </form>
</template>
