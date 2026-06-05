<script setup lang="ts">
import { contactInfo, navLinks, topbarItems } from "~/data/site";

const route = useRoute();

function isActive(to: string) {
  if (to === "/") return route.path === "/";
  return route.path === to || route.path.startsWith(`${to}/`);
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
          :class="{ 'has-dropdown': link.columns?.length }"
        >
          <NuxtLink
            :to="link.to"
            class="nav-link"
            :class="{ active: isActive(link.to) }"
          >
            {{ link.label }}
            <span
              v-if="link.columns?.length"
              class="nav-caret"
              aria-hidden="true"
              >▾</span
            >
          </NuxtLink>

          <div v-if="link.columns?.length" class="nav-dropdown">
            <div class="nav-dropdown-panel">
              <div class="nav-dropdown-grid">
                <div
                  v-for="column in link.columns"
                  :key="column.title"
                  class="nav-dropdown-col"
                >
                  <div class="nav-dropdown-col-title">{{ column.title }}</div>
                  <ul class="nav-dropdown-list">
                    <li v-for="child in column.links" :key="child.to">
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
