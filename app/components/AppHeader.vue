<script setup lang="ts">
const { navLinks, topbarItems } = useSiteCms();
const { topbarDisplay } = useContact();

const route = useRoute();
const mobileOpen = ref(false);
const mobileExpanded = ref<Record<string, boolean>>({});

function isActive(to: string) {
  const path = to.split("#")[0];
  if (path === "/") return route.path === "/";
  return route.path === path || route.path.startsWith(`${path}/`);
}

function hasGroupChildren(link: (typeof navLinks.value)[number]) {
  return link.groups?.some((group) => group.links.length > 0) ?? false;
}

function toggleMobile() {
  mobileOpen.value = !mobileOpen.value;
}

function toggleMobileSection(navTo: string) {
  mobileExpanded.value[navTo] = !mobileExpanded.value[navTo];
}

function isMobileSectionOpen(navTo: string) {
  return mobileExpanded.value[navTo] ?? false;
}

function closeMobile() {
  mobileOpen.value = false;
}

watch(() => route.fullPath, closeMobile);

function onEscape(event: KeyboardEvent) {
  if (event.key === "Escape") closeMobile();
}

watch(mobileOpen, (open) => {
  if (!import.meta.client) return;
  document.body.style.overflow = open ? "hidden" : "";
  if (open) {
    window.addEventListener("keydown", onEscape);
  } else {
    window.removeEventListener("keydown", onEscape);
  }
});

onBeforeUnmount(() => {
  if (import.meta.client) {
    document.body.style.overflow = "";
    window.removeEventListener("keydown", onEscape);
  }
});
</script>

<template>
  <div class="topbar">
    <div class="wrap">
      <div class="left">
        <span v-for="(item, i) in topbarItems" :key="i">
          <span v-if="item.dot" class="dot" />
          {{ item.text }}
        </span>
      </div>
      <div class="right">{{ topbarDisplay }}</div>
    </div>
  </div>

  <nav :class="{ 'nav--mobile-open': mobileOpen }">
    <div class="wrap">
      <NuxtLink to="/" class="logo" @click="closeMobile">
        <div class="logo-mark">
          <svg viewBox="0 0 42 42" fill="none">
            <rect
              x="1"
              y="1"
              width="40"
              height="40"
              stroke="#0A2647"
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
        <div class="logo-text">
          CERAMI<b>TELL</b><small>Advanced Industrial Ceramics</small>
        </div>
      </NuxtLink>

      <div class="nav-links">
        <div
          v-for="link in navLinks"
          :key="link.to"
          class="nav-item"
          :class="{ 'has-dropdown': link.groups?.length }"
        >
          <NuxtLink
            :to="link.to"
            class="nav-link"
            :class="{ active: isActive(link.to) }"
          >
            {{ link.label }}
            <span
              v-if="link.groups?.length"
              class="nav-caret"
              aria-hidden="true"
              >▾</span
            >
          </NuxtLink>

          <div
            v-if="link.groups?.length"
            class="nav-dropdown"
            :class="{ 'nav-dropdown--flat': !hasGroupChildren(link) }"
          >
            <div class="nav-dropdown-panel">
              <div
                v-if="hasGroupChildren(link)"
                class="nav-mega nav-mega--columns"
              >
                <div
                  v-for="group in link.groups"
                  :key="group.label"
                  class="nav-mega-column"
                >
                  <NuxtLink
                    v-if="group.to"
                    :to="group.to"
                    class="nav-mega-heading"
                    :class="{ active: isActive(group.to) }"
                  >
                    {{ group.label }}
                  </NuxtLink>
                  <span v-else class="nav-mega-heading">{{ group.label }}</span>
                  <ul v-if="group.links.length" class="nav-mega-list">
                    <li
                      v-for="child in group.links"
                      :key="child.to + child.label"
                    >
                      <NuxtLink
                        :to="child.to"
                        class="nav-mega-link"
                        :class="{ active: isActive(child.to) }"
                      >
                        {{ child.label }}
                      </NuxtLink>
                    </li>
                  </ul>
                </div>
              </div>

              <ul v-else class="nav-mega-list nav-mega-list--flat">
                <li v-for="group in link.groups" :key="group.label">
                  <NuxtLink
                    v-if="group.to"
                    :to="group.to"
                    class="nav-mega-link"
                    :class="{ active: isActive(group.to) }"
                  >
                    {{ group.label }}
                  </NuxtLink>
                  <span v-else class="nav-mega-link">{{ group.label }}</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>

      <div class="nav-actions">
        <NuxtLink class="nav-cta" to="/contact">Request a Quote</NuxtLink>
        <button
          type="button"
          class="nav-toggle"
          :aria-expanded="mobileOpen"
          aria-controls="mobile-nav"
          aria-label="Toggle navigation menu"
          @click="toggleMobile"
        >
          <span class="nav-toggle-bar" />
          <span class="nav-toggle-bar" />
          <span class="nav-toggle-bar" />
        </button>
      </div>
    </div>
  </nav>

  <Teleport to="body">
    <div
      class="nav-mobile-overlay"
      :class="{ open: mobileOpen }"
      :aria-hidden="!mobileOpen"
      @click="closeMobile"
    />

    <aside
      id="mobile-nav"
      class="nav-mobile-drawer"
      :class="{ open: mobileOpen }"
      :aria-hidden="!mobileOpen"
      role="dialog"
      aria-modal="true"
      aria-label="Site navigation"
    >
      <div class="nav-mobile-head">
        <span class="nav-mobile-title">Menu</span>
        <button
          type="button"
          class="nav-mobile-close"
          aria-label="Close navigation menu"
          @click="closeMobile"
        >
          ×
        </button>
      </div>

      <div class="nav-mobile-inner">
        <div v-for="link in navLinks" :key="link.to" class="nav-mobile-item">
          <div class="nav-mobile-row">
            <NuxtLink
              :to="link.to"
              class="nav-mobile-link"
              :class="{ active: isActive(link.to) }"
              @click="closeMobile"
            >
              {{ link.label }}
            </NuxtLink>
            <button
              v-if="link.groups?.length"
              type="button"
              class="nav-mobile-expand"
              :aria-expanded="isMobileSectionOpen(link.to)"
              :aria-label="`Expand ${link.label} submenu`"
              @click="toggleMobileSection(link.to)"
            >
              ▾
            </button>
          </div>

          <div
            v-if="link.groups?.length && isMobileSectionOpen(link.to)"
            class="nav-mobile-panel"
          >
            <template v-for="group in link.groups" :key="group.label">
              <NuxtLink
                v-if="group.to"
                :to="group.to"
                class="nav-mobile-sublink nav-mobile-sublink--primary"
                :class="{ active: isActive(group.to) }"
                @click="closeMobile"
              >
                {{ group.label }}
              </NuxtLink>
              <NuxtLink
                v-for="child in group.links"
                :key="child.to + child.label"
                :to="child.to"
                class="nav-mobile-sublink"
                :class="{ active: isActive(child.to) }"
                @click="closeMobile"
              >
                {{ child.label }}
              </NuxtLink>
            </template>
          </div>
        </div>

        <NuxtLink class="nav-mobile-cta" to="/contact" @click="closeMobile"
          >Request a Quote</NuxtLink
        >
      </div>
    </aside>
  </Teleport>
</template>
