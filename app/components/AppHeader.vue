<script setup lang="ts">
const { navLinks, topbarItems } = useSiteCms();
const { topbarDisplay } = useContact();

const route = useRoute();
const activeGroupByNav = ref<Record<string, number>>({});
const mobileOpen = ref(false);
const mobileExpanded = ref<Record<string, boolean>>({});

function isActive(to: string) {
  const path = to.split("#")[0];
  if (path === "/") return route.path === "/";
  return route.path === path || route.path.startsWith(`${path}/`);
}

function activeGroupIndex(navTo: string) {
  return activeGroupByNav.value[navTo] ?? 0;
}

function setActiveGroup(navTo: string, index: number) {
  activeGroupByNav.value[navTo] = index;
}

function onNavItemEnter(navTo: string) {
  if (activeGroupByNav.value[navTo] === undefined) {
    activeGroupByNav.value[navTo] = 0;
  }
}

function activeGroup(link: (typeof navLinks.value)[number]) {
  const index = activeGroupIndex(link.to);
  return link.groups?.[index];
}

function hasSecondaryGroups(link: (typeof navLinks.value)[number]) {
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
          @mouseenter="onNavItemEnter(link.to)"
        >
          <div class="nav-link" :class="{ active: isActive(link.to) }">
            {{ link.label }}
            <span
              v-if="link.groups?.length"
              class="nav-caret"
              aria-hidden="true"
              >▾</span
            >
          </div>

          <div
            v-if="link.groups?.length"
            class="nav-dropdown"
            :class="{ 'nav-dropdown--flat': !hasSecondaryGroups(link) }"
          >
            <div class="nav-dropdown-panel">
              <div
                class="nav-flyout"
                :class="{ 'nav-flyout--flat': !hasSecondaryGroups(link) }"
              >
                <ul class="nav-flyout-primary">
                  <li
                    v-for="(group, index) in link.groups"
                    :key="group.label"
                    class="nav-flyout-primary-item"
                    :class="{
                      active:
                        hasSecondaryGroups(link) &&
                        activeGroupIndex(link.to) === index,
                    }"
                    @mouseenter="
                      hasSecondaryGroups(link) && setActiveGroup(link.to, index)
                    "
                  >
                    <NuxtLink
                      v-if="group.to"
                      :to="group.to"
                      class="nav-flyout-primary-link"
                      :class="{ active: isActive(group.to) }"
                    >
                      {{ group.label }}
                    </NuxtLink>
                    <span v-else class="nav-flyout-primary-link">{{
                      group.label
                    }}</span>
                  </li>
                </ul>

                <div
                  v-if="
                    hasSecondaryGroups(link) && activeGroup(link)?.links.length
                  "
                  class="nav-flyout-secondary"
                >
                  <div class="nav-flyout-secondary-title">
                    {{ activeGroup(link)!.label }}
                  </div>
                  <ul class="nav-flyout-secondary-list">
                    <li
                      v-for="child in activeGroup(link)!.links"
                      :key="child.to + child.label"
                    >
                      <NuxtLink
                        :to="child.to"
                        class="nav-dropdown-link"
                        :class="{ active: isActive(child.to) }"
                      >
                        {{ child.label }}
                      </NuxtLink>
                    </li>
                  </ul>
                </div>
              </div>
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

<style scoped>
.nav-link {
  cursor: pointer;
}
</style>
