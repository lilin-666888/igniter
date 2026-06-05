<script setup lang="ts">
import { footerColumns, footerLegal } from '~/data/site'
</script>

<template>
  <footer>
    <div class="wrap">
      <div class="foot-grid">
        <div class="foot-col fb-right">
          <div class="logo" style="margin-bottom:18px;">
            <div class="logo-mark">
              <svg viewBox="0 0 42 42" fill="none">
                <rect x="1" y="1" width="40" height="40" stroke="#fff" stroke-width="2" />
                <path d="M21 12 L21 30 M14 23 L21 30 L28 23" stroke="#F26419" stroke-width="3" stroke-linecap="square" stroke-linejoin="miter" />
              </svg>
            </div>
            <div class="logo-text" style="color:#fff;">
              CERAMI<b>TELL</b><small style="color:rgba(255,255,255,0.5);">Advanced Industrial Ceramics</small>
            </div>
          </div>
          <p>Direct manufacturer of advanced ceramic components. Silicon nitride, alumina, zirconia, silicon carbide, aluminum nitride.</p>
          <p><b>Pingxiang, Jiangxi, China</b><br>OEM Manufacturer Since 2014</p>
        </div>
        <div v-for="col in footerColumns" :key="col.title" class="foot-col">
          <h5>{{ col.title }}</h5>
          <template v-for="(link, i) in col.links" :key="i">
            <NuxtLink v-if="link.to" :to="link.to">{{ link.label }}</NuxtLink>
            <a v-else>{{ link.label }}</a>
          </template>
        </div>
      </div>
      <div class="foot-bottom">
        <span>© 2026 Ceramitell · OEM Ceramic Igniters & Industrial Ceramics</span>
        <span>
          <a v-for="item in footerLegal" :key="item">{{ item }}</a>
        </span>
      </div>
    </div>
  </footer>
</template>
