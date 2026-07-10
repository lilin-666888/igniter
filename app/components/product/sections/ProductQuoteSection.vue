<script setup lang="ts">
defineProps<{
  num: string
  headingHtml: string
  lead?: string
  sectionId?: string
  quoteNote?: string
  why: string[]
}>()
</script>

<template>
  <section :id="sectionId" class="s quote-sec">
    <div class="wrap">
      <div>
        <div class="sec-num">{{ num }}</div>
        <h2 v-html="headingHtml" />
        <p v-if="lead" class="sec-lead">{{ lead }}</p>
        <ul class="quote-why">
          <li v-for="(item, index) in why" :key="index" v-html="item" />
        </ul>
      </div>
      <div class="quote-form-card">
        <div class="qquote-tag">Free Quote · Reply in 24h</div>
        <div class="qquote-title">Request a quote</div>
        <div v-if="quoteNote" class="qquote-note">{{ quoteNote }}</div>
        <QuoteInquiryForm variant="card" submit-label="Request a Quote →" />
      </div>
    </div>
  </section>
</template>
