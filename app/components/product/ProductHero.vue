<script setup lang="ts">
import type { ProductPage } from '~/data/products/types'

defineProps<{
  page: ProductPage
}>()
</script>

<template>
  <section class="prod-hero">
    <div class="wrap">
      <div>
        <span class="ph-eyebrow">{{ page.hero.eyebrow }}</span>
        <h1>
          {{ page.hero.title }}<br v-if="page.hero.titleHighlight" /><span
            v-if="page.hero.titleHighlight"
            class="hl"
            >{{ page.hero.titleHighlight }}</span
          >
        </h1>
        <p class="ph-sub" v-html="page.hero.subtitle" />
        <div class="ph-statbar">
          <div v-for="stat in page.hero.stats" :key="stat.lbl">
            <div class="num">{{ stat.num }}</div>
            <div class="lbl">{{ stat.lbl }}</div>
          </div>
        </div>
        <div v-if="page.heroCtas" class="hero-ctas">
          <a class="btn-primary" :href="page.heroCtas.primary.href">{{
            page.heroCtas.primary.label
          }}</a>
          <a
            v-if="page.heroCtas.secondary"
            class="btn-ghost btn-ghost--on-dark"
            :href="page.heroCtas.secondary.href"
            >{{ page.heroCtas.secondary.label }}</a
          >
        </div>
      </div>

      <div v-if="page.heroSide === 'quote'" class="qquote">
        <div class="qquote-tag">Free Quote · Reply in 24h</div>
        <div class="qquote-title">Request a quote</div>
        <div class="qquote-note">
          Tell us your application, spec, or part number. Our team replies within
          one business day.
        </div>
        <QuoteInquiryForm variant="inline" submit-label="Request a Quote →" />
      </div>

      <div v-else-if="page.spotlight" class="spotlight">
        <div class="spotlight-tag">{{ page.spotlight.tag }}</div>
        <div
          v-for="row in page.spotlight.rows"
          :key="row.k"
          class="spotlight-row"
        >
          <span class="k">{{ row.k }}</span>
          <span class="v">{{ row.v }}</span>
        </div>
      </div>
    </div>
    <div class="prod-hero-stripe" />
  </section>
</template>
