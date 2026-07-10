<script setup lang="ts">
import { pelletStoveCasecta } from '~/data/products/shared'

const data = pelletStoveCasecta
</script>

<template>
  <section class="casecta">
    <div class="wrap">
      <div>
        <div class="casecta-eyebrow">{{ data.eyebrow }}</div>
        <h2 v-html="data.titleHtml" />
        <p>{{ data.body }}</p>
        <div class="casecta-ctas">
          <NuxtLink class="btn-primary" :to="data.primaryCta.to">{{
            data.primaryCta.label
          }}</NuxtLink>
          <NuxtLink class="btn-ghost" :to="data.secondaryCta.to">{{
            data.secondaryCta.label
          }}</NuxtLink>
        </div>
      </div>
      <div class="casecta-side">
        <div class="casecta-side-tag">{{ data.sideTag }}</div>
        <div class="casecta-side-title">{{ data.sideTitle }}</div>
        <ul class="casecta-side-list">
          <li v-for="item in data.sideItems" :key="item.label">
            <b>{{ item.value }}</b> {{ item.label }}
          </li>
        </ul>
      </div>
    </div>
  </section>
</template>
