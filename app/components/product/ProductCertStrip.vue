<script setup lang="ts">
import { productCertStripBadges } from '~/data/products/shared'
</script>

<template>
  <section class="cert-strip">
    <div class="wrap">
      <div class="cs-label">Certifications &amp; Standards</div>
      <div class="cs-badges">
        <span v-for="badge in productCertStripBadges" :key="badge">{{
          badge
        }}</span>
      </div>
    </div>
  </section>
</template>
