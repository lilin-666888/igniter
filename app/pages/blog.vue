<script setup lang="ts">
import type { BlogCategory } from '~/data/blog'

const {
  blogCategories,
  blogPosts,
  featuredPost,
} = useBlogList()

useHead({
  title: 'Engineering Blog — Ceramitell Advanced Industrial Ceramics',
  meta: [{
    name: 'description',
    content: "Technical articles, application guides, and material science insights from Ceramitell's ceramic engineering team.",
  }],
})

const activeCategory = ref<BlogCategory>('All Articles')
const searchQuery = ref('')

const filteredPosts = computed(() => {
  const query = searchQuery.value.trim().toLowerCase()
  return blogPosts.value.filter((post) => {
    if (post.featured) return false
    const matchesCategory = activeCategory.value === 'All Articles' || post.category === activeCategory.value
    const matchesSearch = !query
      || post.title.toLowerCase().includes(query)
      || post.excerpt.toLowerCase().includes(query)
      || post.category.toLowerCase().includes(query)
    return matchesCategory && matchesSearch
  })
})

const gridCount = computed(() => {
  const count = filteredPosts.value.length + (featuredPost.value && matchesFeatured.value ? 1 : 0)
  return `${count} article${count === 1 ? '' : 's'} · sorted by date`
})

const matchesFeatured = computed(() => {
  const featured = featuredPost.value
  if (!featured) return false
  const query = searchQuery.value.trim().toLowerCase()
  const matchesCategory = activeCategory.value === 'All Articles' || featured.category === activeCategory.value
  const matchesSearch = !query
    || featured.title.toLowerCase().includes(query)
    || featured.excerpt.toLowerCase().includes(query)
  return matchesCategory && matchesSearch
})

function postLink(slug: string) {
  return `/blogDetail/${slug}`
}
</script>

<template>
  <div class="blog-page">
    <div class="breadcrumb">
      <div class="wrap">
        <NuxtLink to="/">Home</NuxtLink>
        <span class="sep">/</span>
        <span>Engineering Blog</span>
      </div>
    </div>

    <section class="blog-hero">
      <div class="blog-hero-stripe" />
      <div class="wrap">
        <div class="blog-hero-eyebrow">Ceramitell · Engineering Blog</div>
        <h1>Ceramic engineering, <span>explained.</span></h1>
        <p class="blog-hero-sub">Technical guides, material comparisons, application case studies, and industry analysis from our ceramic engineering team. Written for engineers who specify advanced ceramics.</p>
        <form class="search-bar" @submit.prevent>
          <input v-model="searchQuery" type="text" placeholder="Search articles — e.g. Si₃N₄ thermal shock, pellet stove igniter life...">
          <button type="submit">Search →</button>
        </form>
      </div>
    </section>

    <div class="cat-tabs">
      <div class="inner">
        <button
          v-for="category in blogCategories"
          :key="category"
          type="button"
          class="cat-tab"
          :class="{ active: activeCategory === category }"
          @click="activeCategory = category"
        >
          {{ category }}
        </button>
      </div>
    </div>

    <div v-if="featuredPost && matchesFeatured" class="featured-wrap">
      <div class="featured-label">★ Featured Article</div>
      <NuxtLink :to="postLink(featuredPost.slug)" class="featured-card">
        <div class="featured-img">
          <div class="featured-img-badge">{{ featuredPost.category }}</div>
          <div class="ph-icon">{{ featuredPost.cardIcon }}</div>
          <div class="ph-lbl">{{ featuredPost.cardLabel }}</div>
        </div>
        <div class="featured-body">
          <div class="article-meta">
            <span class="article-cat">{{ featuredPost.category }}</span>
            <span class="article-date">{{ featuredPost.date }}</span>
            <span class="article-read">{{ featuredPost.readTime }}</span>
          </div>
          <h2>{{ featuredPost.title }}</h2>
          <p>{{ featuredPost.excerpt }}</p>
          <span class="read-more">Read the full guide →</span>
          <div v-if="featuredPost.tags?.length" class="article-tags">
            <span v-for="tag in featuredPost.tags" :key="tag" class="tag">{{ tag }}</span>
          </div>
        </div>
      </NuxtLink>
    </div>

    <div class="grid-section">
      <div class="grid-header">
        <div class="grid-title">Latest Articles</div>
        <div class="grid-count">{{ gridCount }}</div>
      </div>
      <div class="article-grid">
        <NuxtLink
          v-for="post in filteredPosts"
          :key="post.slug"
          :to="postLink(post.slug)"
          class="article-card"
        >
          <div
            class="card-img"
            :class="post.cardImgClass"
            :style="post.cardStyle"
          >
            <div class="icon" :style="post.cardStyle ? 'opacity:.4' : undefined">{{ post.cardIcon }}</div>
            <div class="lbl" :style="post.cardStyle?.includes('#0d2010') ? 'color:rgba(200,255,200,.3)' : post.cardStyle ? 'color:rgba(180,220,255,.3)' : undefined">{{ post.cardLabel }}</div>
          </div>
          <div class="card-body">
            <div class="article-meta">
              <span class="article-cat">{{ post.category }}</span>
              <span class="article-date">{{ post.date }}</span>
            </div>
            <h3>{{ post.title }}</h3>
            <p>{{ post.excerpt }}</p>
            <div class="card-footer">
              <span class="read">Read article →</span>
              <span class="time">{{ post.readTime }}</span>
            </div>
          </div>
        </NuxtLink>
      </div>
    </div>

    <section class="newsletter">
      <div class="wrap">
        <div>
          <div class="nl-eyebrow">Engineering Newsletter</div>
          <div class="nl-title">Technical insights,<br>monthly.</div>
          <p class="nl-sub">New application guides, material science articles, and case studies from our engineering team. No sales content. Unsubscribe any time.</p>
        </div>
        <div>
          <form class="nl-form" @submit.prevent>
            <input type="email" placeholder="your@company.com">
            <button type="submit">Subscribe →</button>
          </form>
          <div class="nl-note">🔒 No spam · Technical content only · Unsubscribe any time</div>
        </div>
      </div>
    </section>

    <div class="load-more">
      <button type="button" class="btn-outline">Load more articles</button>
    </div>
  </div>
</template>

<style>
.blog-page .wrap { max-width: 1180px; }

.breadcrumb {
  background: var(--bg-soft);
  border-bottom: 1px solid var(--line);
  padding: 12px 0;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.05em;
  color: var(--ink-faint);
}

.breadcrumb .wrap { display: flex; gap: 8px; align-items: center; }
.breadcrumb a { color: var(--ink-faint); }
.breadcrumb a:hover { color: var(--orange); }
.breadcrumb .sep { color: var(--line); }

.blog-hero {
  background: var(--navy);
  padding: 64px 0 72px;
  position: relative;
  overflow: hidden;
}

.blog-hero::after {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  width: 40%;
  height: 100%;
  background: linear-gradient(135deg, transparent, rgba(242, 100, 25, 0.06));
  pointer-events: none;
}

.blog-hero-stripe {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--orange), var(--gold) 60%, var(--orange));
}

.blog-hero .wrap { position: relative; }

.blog-hero-eyebrow {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  color: var(--gold);
  text-transform: uppercase;
  margin-bottom: 16px;
}

.blog-hero h1 {
  font-family: var(--cond);
  font-size: 52px;
  font-weight: 800;
  color: #fff;
  line-height: 1.02;
  letter-spacing: -0.02em;
  margin-bottom: 14px;
}

.blog-hero h1 span { color: var(--gold); }

.blog-hero-sub {
  font-size: 16px;
  color: rgba(255, 255, 255, 0.75);
  max-width: 560px;
  line-height: 1.6;
  margin-bottom: 36px;
}

.search-bar { display: flex; gap: 0; max-width: 580px; }

.search-bar input {
  flex: 1;
  border: none;
  background: rgba(255, 255, 255, 0.1);
  color: #fff;
  font-family: var(--sans);
  font-size: 15px;
  padding: 14px 20px;
  outline: none;
  border: 1px solid rgba(255, 255, 255, 0.2);
  border-right: none;
}

.search-bar input::placeholder { color: rgba(255, 255, 255, 0.4); }

.search-bar button {
  background: var(--orange);
  color: #fff;
  border: none;
  padding: 14px 24px;
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  cursor: pointer;
  flex-shrink: 0;
}

.cat-tabs {
  background: #fff;
  border-bottom: 1px solid var(--line);
  padding: 0 40px;
  overflow-x: auto;
}

.cat-tabs .inner {
  max-width: 1180px;
  margin: 0 auto;
  display: flex;
  gap: 0;
}

.cat-tab {
  font-family: var(--mono);
  font-size: 11.5px;
  letter-spacing: 0.08em;
  color: var(--ink-faint);
  text-transform: uppercase;
  padding: 16px 20px;
  border-bottom: 2px solid transparent;
  white-space: nowrap;
  cursor: pointer;
  transition: color 0.15s, border-color 0.15s;
  background: none;
  border-top: none;
  border-left: none;
  border-right: none;
}

.cat-tab:hover { color: var(--navy); }
.cat-tab.active { color: var(--orange); border-bottom-color: var(--orange); }

.featured-wrap {
  padding: 60px 40px 0;
  max-width: 1260px;
  margin: 0 auto;
}

.featured-label {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.18em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 20px;
}

.featured-card {
  display: grid;
  grid-template-columns: 1fr 1fr;
  gap: 0;
  border: 1px solid var(--line);
  overflow: hidden;
  transition: box-shadow 0.2s;
}

.featured-card:hover { box-shadow: 0 24px 48px -24px rgba(10, 38, 71, 0.18); }

.featured-img {
  background: linear-gradient(145deg, #1a2d45 0%, #0d1e33 100%);
  min-height: 380px;
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 14px;
  position: relative;
}

.featured-img .ph-icon { font-size: 56px; opacity: 0.45; }

.featured-img .ph-lbl {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.08em;
  color: rgba(255, 255, 255, 0.35);
  text-transform: uppercase;
  text-align: center;
  max-width: 200px;
  line-height: 1.5;
}

.featured-img-badge {
  position: absolute;
  top: 20px;
  left: 20px;
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  text-transform: uppercase;
  padding: 5px 12px;
  font-weight: 600;
}

.featured-body {
  padding: 48px 44px;
  display: flex;
  flex-direction: column;
  justify-content: center;
}

.article-meta {
  display: flex;
  gap: 16px;
  align-items: center;
  flex-wrap: wrap;
  margin-bottom: 20px;
}

.article-cat {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.12em;
  color: var(--orange);
  text-transform: uppercase;
  font-weight: 600;
}

.article-date,
.article-read {
  font-family: var(--mono);
  font-size: 10.5px;
  color: var(--ink-faint);
  letter-spacing: 0.04em;
}

.featured-body h2 {
  font-family: var(--cond);
  font-size: 36px;
  font-weight: 800;
  color: var(--navy);
  line-height: 1.08;
  letter-spacing: -0.015em;
  margin-bottom: 16px;
}

.featured-body p {
  font-size: 15.5px;
  color: var(--ink-soft);
  line-height: 1.65;
  margin-bottom: 28px;
}

.read-more {
  display: inline-flex;
  align-items: center;
  gap: 8px;
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  color: var(--orange);
  letter-spacing: 0.02em;
  transition: gap 0.15s;
}

.featured-card:hover .read-more { gap: 14px; }

.article-tags {
  display: flex;
  gap: 8px;
  flex-wrap: wrap;
  margin-top: 20px;
}

.tag {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.06em;
  color: var(--ink-faint);
  background: var(--bg-soft);
  padding: 4px 10px;
}

.grid-section {
  padding: 48px 40px 80px;
  max-width: 1260px;
  margin: 0 auto;
}

.grid-header {
  display: flex;
  justify-content: space-between;
  align-items: baseline;
  margin-bottom: 32px;
}

.grid-title {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 700;
  color: var(--navy);
}

.grid-count {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
}

.article-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 28px;
}

.article-card {
  border: 1px solid var(--line);
  overflow: hidden;
  transition: border-color 0.15s, transform 0.15s, box-shadow 0.15s;
  display: flex;
  flex-direction: column;
}

.article-card:hover {
  border-color: var(--orange);
  transform: translateY(-4px);
  box-shadow: 0 20px 40px -22px rgba(10, 38, 71, 0.15);
}

.card-img {
  height: 200px;
  background: linear-gradient(145deg, #e8edf5 0%, #d4dce8 100%);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 10px;
  position: relative;
  border-bottom: 1px solid var(--line);
  flex-shrink: 0;
}

.card-img .icon { font-size: 44px; opacity: 0.4; }

.card-img .lbl {
  font-family: var(--mono);
  font-size: 9.5px;
  letter-spacing: 0.1em;
  color: #8794a6;
  text-transform: uppercase;
  text-align: center;
  max-width: 150px;
  line-height: 1.5;
}

.card-img-dark {
  background: linear-gradient(145deg, #1a2d45, #0d1e33);
}

.card-img-dark .lbl { color: rgba(255, 255, 255, 0.3); }

.card-img-warm {
  background: linear-gradient(145deg, #2d1a0a, #1a0f05);
}

.card-img-warm .lbl { color: rgba(255, 220, 180, 0.3); }

.card-body {
  padding: 24px 26px;
  display: flex;
  flex-direction: column;
  flex: 1;
}

.card-body h3 {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 800;
  color: var(--navy);
  line-height: 1.12;
  letter-spacing: -0.01em;
  margin-bottom: 10px;
}

.card-body p {
  font-size: 13.5px;
  color: var(--ink-soft);
  line-height: 1.6;
  flex: 1;
  margin-bottom: 18px;
}

.card-footer {
  display: flex;
  justify-content: space-between;
  align-items: center;
  padding-top: 16px;
  border-top: 1px solid var(--line);
  margin-top: auto;
}

.card-footer .read {
  font-family: var(--cond);
  font-size: 14px;
  font-weight: 700;
  color: var(--orange);
}

.card-footer .read:hover { text-decoration: underline; }

.card-footer .time {
  font-family: var(--mono);
  font-size: 10px;
  color: var(--ink-faint);
  letter-spacing: 0.04em;
}

.newsletter {
  background: var(--bg-soft);
  border-top: 1px solid var(--line);
  border-bottom: 1px solid var(--line);
  padding: 52px 0;
}

.newsletter .wrap {
  display: grid;
  grid-template-columns: 1.2fr 1fr;
  gap: 56px;
  align-items: center;
}

.nl-eyebrow {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 12px;
}

.nl-title {
  font-family: var(--cond);
  font-size: 34px;
  font-weight: 800;
  color: var(--navy);
  line-height: 1.1;
  margin-bottom: 10px;
}

.nl-sub {
  font-size: 15px;
  color: var(--ink-soft);
  line-height: 1.6;
}

.nl-form { display: flex; gap: 0; }

.nl-form input {
  flex: 1;
  border: 1px solid var(--line);
  border-right: none;
  font-family: var(--sans);
  font-size: 14px;
  padding: 13px 16px;
  outline: none;
  background: #fff;
}

.nl-form input:focus { border-color: var(--navy); }

.nl-form button {
  background: var(--navy);
  color: #fff;
  border: none;
  padding: 13px 24px;
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  cursor: pointer;
  flex-shrink: 0;
}

.nl-form button:hover { background: #1e3d6b; }

.nl-note {
  font-family: var(--mono);
  font-size: 10.5px;
  color: var(--ink-faint);
  margin-top: 10px;
}

.load-more {
  padding: 16px 40px 80px;
  max-width: 1260px;
  margin: 0 auto;
  text-align: center;
}

.btn-outline {
  display: inline-block;
  border: 2px solid var(--line);
  color: var(--ink-soft);
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  padding: 13px 40px;
  transition: all 0.15s;
  background: #fff;
  cursor: pointer;
}

.btn-outline:hover {
  border-color: var(--navy);
  color: var(--navy);
}

@media (max-width: 1024px) {
  .featured-card,
  .newsletter .wrap { grid-template-columns: 1fr; }
  .article-grid { grid-template-columns: 1fr 1fr; }
}

@media (max-width: 640px) {
  .article-grid { grid-template-columns: 1fr; }
  .blog-hero h1 { font-size: 36px; }
}
</style>
