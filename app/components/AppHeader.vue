<script setup lang="ts">
import { contactInfo, navLinks, topbarItems } from '~/data/site'

const route = useRoute()
const activeGroupByNav = ref<Record<string, number>>({})

function isActive(to: string) {
  const path = to.split('#')[0]
  if (path === '/') return route.path === '/'
  return route.path === path || route.path.startsWith(`${path}/`)
}

function activeGroupIndex(navTo: string) {
  return activeGroupByNav.value[navTo] ?? 0
}

function setActiveGroup(navTo: string, index: number) {
  activeGroupByNav.value[navTo] = index
}

function onNavItemEnter(navTo: string) {
  if (activeGroupByNav.value[navTo] === undefined) {
    activeGroupByNav.value[navTo] = 0
  }
}

function activeGroup(link: (typeof navLinks)[number]) {
  const index = activeGroupIndex(link.to)
  return link.groups?.[index]
}
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
      <div class="right">{{ contactInfo.display }}</div>
    </div>
  </div>

  <nav>
    <div class="wrap">
      <NuxtLink to="/" class="logo">
        <div class="logo-mark">
          <svg viewBox="0 0 42 42" fill="none">
            <rect x="1" y="1" width="40" height="40" stroke="#0A2647" stroke-width="2" />
            <path d="M21 12 L21 30 M14 23 L21 30 L28 23" stroke="#F26419" stroke-width="3" stroke-linecap="square" stroke-linejoin="miter" />
          </svg>
        </div>
        <div class="logo-text">CERAMI<b>TELL</b><small>Advanced Industrial Ceramics</small></div>
      </NuxtLink>

      <div class="nav-links">
        <div
          v-for="link in navLinks"
          :key="link.to"
          class="nav-item"
          :class="{ 'has-dropdown': link.groups?.length }"
          @mouseenter="onNavItemEnter(link.to)"
        >
          <NuxtLink
            :to="link.to"
            class="nav-link"
            :class="{ active: isActive(link.to) }"
          >
            {{ link.label }}
            <span v-if="link.groups?.length" class="nav-caret" aria-hidden="true">▾</span>
          </NuxtLink>

          <div v-if="link.groups?.length" class="nav-dropdown">
            <div class="nav-dropdown-panel">
              <div class="nav-flyout">
                <ul class="nav-flyout-primary">
                  <li
                    v-for="(group, index) in link.groups"
                    :key="group.label"
                    class="nav-flyout-primary-item"
                    :class="{ active: activeGroupIndex(link.to) === index }"
                    @mouseenter="setActiveGroup(link.to, index)"
                  >
                    <NuxtLink
                      v-if="group.to"
                      :to="group.to"
                      class="nav-flyout-primary-link"
                      :class="{ active: isActive(group.to) }"
                    >
                      {{ group.label }}
                    </NuxtLink>
                    <span v-else class="nav-flyout-primary-link">{{ group.label }}</span>
                  </li>
                </ul>

                <div v-if="activeGroup(link)" class="nav-flyout-secondary">
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

      <NuxtLink class="nav-cta" to="/contact">Request a Quote</NuxtLink>
    </div>
  </nav>
</template>
