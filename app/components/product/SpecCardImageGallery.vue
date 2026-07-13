<script setup lang="ts">
import { normalizeImageList } from '~/utils/spec-card-images'

const props = defineProps<{
  images: string[] | string
  alt: string
  imageIcon?: string
  imageLabel?: string
}>()

const imageList = computed(() => normalizeImageList(props.images))

const current = ref(0)
const lightboxOpen = ref(false)
const lightboxIndex = ref(0)

const hasImages = computed(() => imageList.value.length > 0)
const hasMultiple = computed(() => imageList.value.length > 1)

function goTo(index: number) {
  if (!imageList.value.length) return
  current.value = (index + imageList.value.length) % imageList.value.length
}

function prev() {
  goTo(current.value - 1)
}

function next() {
  goTo(current.value + 1)
}

function openLightbox(index = current.value) {
  lightboxIndex.value = index
  lightboxOpen.value = true
}

function closeLightbox() {
  lightboxOpen.value = false
}

function lightboxPrev() {
  if (!imageList.value.length) return
  lightboxIndex.value = (lightboxIndex.value - 1 + imageList.value.length) % imageList.value.length
}

function lightboxNext() {
  if (!imageList.value.length) return
  lightboxIndex.value = (lightboxIndex.value + 1) % imageList.value.length
}

function onKeydown(e: KeyboardEvent) {
  if (!lightboxOpen.value) return
  if (e.key === 'Escape') closeLightbox()
  if (e.key === 'ArrowLeft') lightboxPrev()
  if (e.key === 'ArrowRight') lightboxNext()
}

watch(lightboxOpen, (open) => {
  if (import.meta.client) {
    document.body.style.overflow = open ? 'hidden' : ''
  }
})

onMounted(() => {
  window.addEventListener('keydown', onKeydown)
})

onUnmounted(() => {
  window.removeEventListener('keydown', onKeydown)
  if (import.meta.client) {
    document.body.style.overflow = ''
  }
})

watch(
  imageList,
  () => {
    current.value = 0
    lightboxIndex.value = 0
  },
)
</script>

<template>
  <div v-if="hasImages" class="spec-img-carousel">
    <button
      type="button"
      class="spec-img-frame"
      :aria-label="`查看 ${alt} 大图`"
      @click="openLightbox(current)"
    >
      <div
        class="spec-img-track"
        :style="{ transform: `translateX(-${current * 100}%)` }"
      >
        <div
          v-for="(src, index) in imageList"
          :key="`${src}-${index}`"
          class="spec-img-slide-wrap"
        >
          <img
            :src="src"
            :alt="`${alt} ${index + 1}`"
            class="spec-img-slide"
          >
        </div>
      </div>
      <span class="spec-img-zoom-hint" aria-hidden="true">🔍</span>
    </button>

    <button
      v-if="hasMultiple"
      type="button"
      class="spec-img-nav spec-img-nav--prev"
      aria-label="上一张"
      @click.stop="prev"
    >
      ‹
    </button>
    <button
      v-if="hasMultiple"
      type="button"
      class="spec-img-nav spec-img-nav--next"
      aria-label="下一张"
      @click.stop="next"
    >
      ›
    </button>

    <div v-if="hasMultiple" class="spec-img-dots">
      <button
        v-for="(_, index) in imageList"
        :key="index"
        type="button"
        class="spec-img-dot"
        :class="{ active: index === current }"
        :aria-label="`第 ${index + 1} 张`"
        @click.stop="goTo(index)"
      />
    </div>
  </div>

  <div v-else class="b-img-ph">
    <div class="bph-icon">{{ imageIcon || '◉' }}</div>
    <div class="bph-lbl">{{ imageLabel || 'Photo' }}</div>
  </div>

  <Teleport to="body">
    <div
      v-if="lightboxOpen && hasImages"
      class="spec-lightbox"
      role="dialog"
      aria-modal="true"
      :aria-label="`${alt} 图片预览`"
      @click.self="closeLightbox"
    >
      <button type="button" class="spec-lightbox-close" aria-label="关闭" @click="closeLightbox">
        ×
      </button>

      <button
        v-if="hasMultiple"
        type="button"
        class="spec-lightbox-nav spec-lightbox-nav--prev"
        aria-label="上一张"
        @click="lightboxPrev"
      >
        ‹
      </button>

      <figure class="spec-lightbox-figure">
        <img
          :src="imageList[lightboxIndex]"
          :alt="`${alt} ${lightboxIndex + 1}`"
          class="spec-lightbox-img"
        >
        <figcaption v-if="hasMultiple" class="spec-lightbox-caption">
          {{ lightboxIndex + 1 }} / {{ imageList.length }}
        </figcaption>
      </figure>

      <button
        v-if="hasMultiple"
        type="button"
        class="spec-lightbox-nav spec-lightbox-nav--next"
        aria-label="下一张"
        @click="lightboxNext"
      >
        ›
      </button>
    </div>
  </Teleport>
</template>
