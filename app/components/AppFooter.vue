<script setup lang="ts">
const { footerColumns, footerLegal } = useSiteCms()
const { email, phone, engineeringEmail, wechat, whatsappUrl } = useContact()

const columns = computed(() =>
  footerColumns.value.map((col) => {
    if (col.title !== 'Reach Us') return col
    const links: { label: string; to: string }[] = [
      { label: email.value, to: `mailto:${email.value}` },
      { label: engineeringEmail.value, to: `mailto:${engineeringEmail.value}` },
    ]
    if (whatsappUrl.value) {
      links.push({ label: `WhatsApp: ${phone.value}`, to: whatsappUrl.value })
    }
    if (wechat.value) {
      links.push({ label: `WeChat: ${wechat.value}`, to: '' })
    }
    return { ...col, links }
  }),
)

function isExternal(to: string) {
  return /^(https?:|mailto:|tel:)/.test(to);
}
</script>

<template>
  <footer>
    <div class="wrap">
      <div class="foot-grid">
        <div class="foot-col foot-brand">
          <div class="foot-logo">
            <div class="logo-mark">
              <svg viewBox="0 0 42 42" fill="none">
                <rect
                  x="1"
                  y="1"
                  width="40"
                  height="40"
                  stroke="#fff"
                  stroke-width="2"
                />
                <path
                  d="M21 12 L21 30 M14 23 L21 30 L28 23"
                  stroke="#F26419"
                  stroke-width="3"
                  stroke-linecap="square"
                  stroke-linejoin="miter"
                />
              </svg>
            </div>
            <div class="logo-text foot-logo-text">
              CERAMI<b>TELL</b><small>Advanced Industrial Ceramics</small>
            </div>
          </div>
          <div class="foot-brand-copy">
            <p>
              Direct manufacturer of advanced ceramic components. Silicon
              nitride, alumina, zirconia, silicon carbide, aluminum nitride.
            </p>
            <p>
              <b>Pingxiang, Jiangxi, China</b><br />OEM Manufacturer Since 2014
            </p>
          </div>
        </div>
        <div
          v-for="col in columns"
          :key="col.title"
          class="foot-col foot-links-col"
        >
          <h5>{{ col.title }}</h5>
          <ul class="foot-link-list">
            <li v-for="(link, i) in col.links" :key="i">
              <NuxtLink v-if="link.to && !isExternal(link.to)" :to="link.to">{{
                link.label
              }}</NuxtLink>
              <a
                v-else-if="link.to"
                :href="link.to"
                rel="noopener noreferrer"
                >{{ link.label }}</a
              >
              <span v-else class="foot-plain">{{ link.label }}</span>
            </li>
          </ul>
        </div>
      </div>
      <div class="foot-bottom">
        <span
          >© 2026 Ceramitell · OEM Ceramic Igniters & Industrial Ceramics</span
        >
        <span class="foot-legal">
          <NuxtLink
            v-for="item in footerLegal"
            :key="item.label"
            :to="item.to!"
            >{{ item.label }}</NuxtLink
          >
        </span>
      </div>
    </div>
  </footer>
</template>
