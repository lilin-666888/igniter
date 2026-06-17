<script setup lang="ts">
import ArticleSi3n4VsAlumina from '~/components/blog/ArticleSi3n4VsAlumina.vue'
import { getBlogPost, getRelatedPosts } from '~/data/blog'

const route = useRoute()
const slug = computed(() => route.params.slug as string)
const post = computed(() => getBlogPost(slug.value))

if (!post.value) {
  throw createError({ statusCode: 404, statusMessage: 'Article not found' })
}

const relatedPosts = computed(() => getRelatedPosts(post.value?.relatedSlugs ?? []))

const articleComponents: Record<string, typeof ArticleSi3n4VsAlumina> = {
  'si3n4-vs-alumina-igniter-guide': ArticleSi3n4VsAlumina,
}

const ArticleBody = computed(() => articleComponents[slug.value])

useHead({
  title: `${post.value.title} | Ceramitell`,
  meta: [{
    name: 'description',
    content: post.value.excerpt,
  }],
})

function postLink(postSlug: string) {
  return `/blogDetail/${postSlug}`
}
</script>

<template>
  <div v-if="post" class="blog-detail-page">
    <div class="breadcrumb">
      <div class="wrap">
        <NuxtLink to="/">Home</NuxtLink>
        <span class="sep">/</span>
        <NuxtLink to="/blog">Blog</NuxtLink>
        <span class="sep">/</span>
        <span>{{ post.breadcrumbTitle ?? post.title }}</span>
      </div>
    </div>

    <section class="article-hero">
      <div class="article-hero-stripe" />
      <div class="wrap hero-wrap">
        <div class="article-hero-meta">
          <span class="hero-cat">{{ post.category }}</span>
          <span class="hero-date">{{ post.date }}</span>
          <span class="hero-read">{{ post.readTime }}</span>
        </div>
        <h1>{{ post.title }}</h1>
        <p v-if="post.heroSub" class="article-hero-sub">{{ post.heroSub }}</p>
        <p v-else class="article-hero-sub">{{ post.excerpt }}</p>
        <div v-if="post.author" class="author-row">
          <div class="author-avatar">{{ post.author.avatar }}</div>
          <div>
            <div class="author-name">{{ post.author.name }}</div>
            <div class="author-title">{{ post.author.title }}</div>
          </div>
          <div class="article-share">
            <span class="share-btn">Share</span>
            <span class="share-btn">LinkedIn</span>
            <span class="share-btn">Copy link</span>
          </div>
        </div>
      </div>
      <div v-if="post.heroIcon" class="wrap">
        <div class="article-hero-img">
          <div class="img-ph">
            <div class="icon">{{ post.heroIcon }}</div>
            <div class="lbl">{{ post.heroLabel }}</div>
          </div>
          <div v-if="post.heroCaption" class="caption">{{ post.heroCaption }}</div>
        </div>
      </div>
    </section>

    <div class="article-layout">
      <article class="article-body">
        <component :is="ArticleBody" v-if="ArticleBody" />
        <template v-else>
          <p>{{ post.excerpt }}</p>
          <div class="article-footnote">
            Full article content coming soon. <NuxtLink to="/contact">Contact our engineering team</NuxtLink> for technical guidance on this topic.
          </div>
        </template>
      </article>

      <aside v-if="post.toc?.length || post.productLink" class="sidebar">
        <div v-if="post.toc?.length" class="toc-card">
          <div class="toc-label">In this article</div>
          <ul class="toc-list">
            <li v-for="(item, index) in post.toc" :key="item.id">
              <a :href="`#${item.id}`" :class="{ active: index === 0 }">
                <span class="toc-num">{{ item.num }}</span>{{ item.label }}
              </a>
            </li>
          </ul>
        </div>

        <div class="sidebar-cta">
          <div class="sidebar-cta-eyebrow">Ready to switch?</div>
          <h4>Request BLK samples for your application</h4>
          <p>Free samples dispatched within 48 hours. Include your current igniter part number for fitment verification.</p>
          <NuxtLink to="/contact">Request Free Samples →</NuxtLink>
        </div>

        <div v-if="post.productLink" class="sidebar-product">
          <div class="sp-label">Referenced Product</div>
          <div class="sp-img">{{ post.productLink.icon }}</div>
          <div class="sp-name">{{ post.productLink.name }}</div>
          <div class="sp-desc">{{ post.productLink.desc }}</div>
          <NuxtLink :to="post.productLink.to" class="sp-link">View full specifications →</NuxtLink>
        </div>
      </aside>
    </div>

    <section v-if="relatedPosts.length" class="related-section">
      <div class="wrap">
        <div class="related-label">Continue reading</div>
        <h2>Related <span>articles</span>.</h2>
        <div class="related-grid">
          <NuxtLink
            v-for="related in relatedPosts"
            :key="related.slug"
            :to="postLink(related.slug)"
            class="related-card"
          >
            <div class="rc-img">{{ related.cardIcon }}</div>
            <div class="rc-body">
              <div class="rc-cat">{{ related.category }}</div>
              <div class="rc-title">{{ related.title }}</div>
              <div class="rc-desc">{{ related.excerpt }}</div>
              <span class="rc-link">Read article →</span>
            </div>
          </NuxtLink>
        </div>
      </div>
    </section>

    <section class="article-cta">
      <div class="wrap">
        <h2>Ready to <span>test it yourself</span>?</h2>
        <p>Free BLK samples dispatched within 48 hours. Tell us your current igniter part number and we confirm fit before shipping.</p>
        <div class="cta-row">
          <NuxtLink to="/contact" class="btn-primary">Request Free Samples →</NuxtLink>
          <NuxtLink to="/products/silicon-nitride-igniters-final" class="btn-ghost-light">View BLK Full Specs</NuxtLink>
        </div>
      </div>
    </section>
  </div>
</template>

<style>
.blog-detail-page .wrap { max-width: 1260px; }
.blog-detail-page .hero-wrap { max-width: 1180px; }

.breadcrumb {
  background: var(--bg-soft);
  border-bottom: 1px solid var(--line);
  padding: 12px 0;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.05em;
  color: var(--ink-faint);
}

.breadcrumb .wrap { display: flex; gap: 8px; align-items: center; padding: 0 40px; }
.breadcrumb a { color: var(--ink-faint); }
.breadcrumb a:hover { color: var(--orange); }
.breadcrumb .sep { color: var(--line); }

.article-hero {
  background: var(--navy);
  padding: 64px 0 0;
  position: relative;
  overflow: hidden;
}

.article-hero::after {
  content: '';
  position: absolute;
  top: 0;
  right: 0;
  width: 40%;
  height: 100%;
  background: linear-gradient(135deg, transparent, rgba(242, 100, 25, 0.06));
  pointer-events: none;
}

.article-hero-stripe {
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--orange), var(--gold) 60%, var(--orange));
}

.article-hero .wrap { position: relative; }

.article-hero-meta {
  display: flex;
  align-items: center;
  gap: 20px;
  flex-wrap: wrap;
  margin-bottom: 24px;
}

.hero-cat {
  background: var(--orange);
  color: #fff;
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.14em;
  text-transform: uppercase;
  padding: 5px 12px;
  font-weight: 600;
}

.hero-date,
.hero-read {
  font-family: var(--mono);
  font-size: 11px;
  color: rgba(255, 255, 255, 0.5);
  letter-spacing: 0.04em;
}

.article-hero h1 {
  font-family: var(--cond);
  font-size: 52px;
  font-weight: 800;
  color: #fff;
  line-height: 1.04;
  letter-spacing: -0.025em;
  margin-bottom: 20px;
  max-width: 860px;
}

.article-hero-sub {
  font-size: 17px;
  color: rgba(255, 255, 255, 0.78);
  line-height: 1.6;
  max-width: 740px;
  margin-bottom: 40px;
}

.author-row {
  display: flex;
  align-items: center;
  gap: 16px;
  padding: 20px 0 28px;
  border-top: 1px solid rgba(255, 255, 255, 0.1);
}

.author-avatar {
  width: 44px;
  height: 44px;
  border-radius: 50%;
  background: rgba(255, 255, 255, 0.12);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 18px;
  flex-shrink: 0;
}

.author-name {
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  color: #fff;
}

.author-title {
  font-family: var(--mono);
  font-size: 10.5px;
  color: rgba(255, 255, 255, 0.5);
  letter-spacing: 0.04em;
  margin-top: 3px;
}

.article-share {
  margin-left: auto;
  display: flex;
  gap: 12px;
}

.share-btn {
  font-family: var(--mono);
  font-size: 11px;
  color: rgba(255, 255, 255, 0.5);
  border: 1px solid rgba(255, 255, 255, 0.2);
  padding: 7px 14px;
  letter-spacing: 0.04em;
  transition: all 0.15s;
  cursor: pointer;
}

.share-btn:hover {
  color: #fff;
  border-color: rgba(255, 255, 255, 0.5);
}

.article-hero-img { margin-top: 40px; }

.article-hero-img .img-ph {
  width: 100%;
  height: 440px;
  background: linear-gradient(145deg, #1a2d45, #0d1e33);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 14px;
}

.article-hero-img .icon { font-size: 64px; opacity: 0.35; }

.article-hero-img .lbl {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  color: rgba(255, 255, 255, 0.3);
  text-transform: uppercase;
  text-align: center;
  max-width: 300px;
  line-height: 1.5;
}

.article-hero-img .caption {
  background: rgba(0, 0, 0, 0.3);
  padding: 12px 20px;
  font-family: var(--mono);
  font-size: 10.5px;
  color: rgba(255, 255, 255, 0.45);
  letter-spacing: 0.04em;
}

.article-layout {
  display: grid;
  grid-template-columns: 1fr 300px;
  gap: 60px;
  align-items: start;
  padding: 64px 40px 80px;
  max-width: 1260px;
  margin: 0 auto;
}

.article-body { min-width: 0; }

.article-body p {
  font-size: 16.5px;
  color: var(--ink-soft);
  line-height: 1.75;
  margin-bottom: 24px;
}

.article-body p strong { color: var(--ink); font-weight: 700; }

.article-body h2 {
  font-family: var(--cond);
  font-size: 34px;
  font-weight: 800;
  color: var(--navy);
  line-height: 1.1;
  letter-spacing: -0.015em;
  margin: 52px 0 18px;
  padding-top: 52px;
  border-top: 1px solid var(--line);
}

.article-body h2:first-of-type {
  margin-top: 0;
  padding-top: 0;
  border-top: none;
}

.article-body h3 {
  font-family: var(--cond);
  font-size: 24px;
  font-weight: 700;
  color: var(--navy);
  margin: 32px 0 12px;
}

.article-body ul,
.article-body ol {
  margin: 0 0 24px 24px;
}

.article-body li {
  font-size: 16px;
  color: var(--ink-soft);
  line-height: 1.7;
  margin-bottom: 8px;
}

.article-body li strong { color: var(--ink); }

.article-img { margin: 36px 0; }

.article-img .img-ph {
  background: linear-gradient(145deg, #e8edf5, #d4dce8);
  display: flex;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  gap: 12px;
  padding: 48px 24px;
}

.article-img .icon { font-size: 48px; opacity: 0.35; }

.article-img .lbl {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.1em;
  color: #8794a6;
  text-transform: uppercase;
  text-align: center;
  max-width: 260px;
  line-height: 1.5;
}

.article-img .caption-text {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-faint);
  letter-spacing: 0.04em;
  margin-top: 12px;
  text-align: center;
}

.pullquote {
  border-left: 4px solid var(--orange);
  background: var(--bg-soft);
  padding: 28px 32px;
  margin: 36px 0;
}

.pullquote p {
  font-family: var(--cond);
  font-size: 24px;
  font-weight: 700;
  color: var(--navy);
  line-height: 1.3;
  margin-bottom: 0 !important;
  font-style: italic;
}

.pullquote cite {
  display: block;
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-faint);
  letter-spacing: 0.05em;
  margin-top: 12px;
}

.data-table { margin: 36px 0; overflow-x: auto; }

.data-table table {
  width: 100%;
  border-collapse: collapse;
  font-size: 14px;
}

.data-table th {
  background: var(--navy);
  color: #fff;
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.1em;
  text-transform: uppercase;
  padding: 12px 16px;
  text-align: left;
}

.data-table td {
  padding: 12px 16px;
  border-bottom: 1px solid var(--line);
  color: var(--ink-soft);
  vertical-align: top;
}

.data-table tr:nth-child(even) td { background: var(--bg-soft); }
.data-table td.highlight { font-weight: 700; color: var(--orange); }
.data-table tr.winner td { background: rgba(242, 100, 25, 0.05); border-left: 3px solid var(--orange); }

.table-note {
  font-family: var(--mono);
  font-size: 11px;
  color: var(--ink-faint);
  margin-top: 10px;
  letter-spacing: 0.03em;
}

.takeaway {
  background: var(--navy);
  color: #fff;
  padding: 32px 36px;
  margin: 40px 0;
  position: relative;
}

.takeaway::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--orange), var(--gold));
}

.takeaway-label {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.18em;
  color: var(--gold);
  text-transform: uppercase;
  margin-bottom: 12px;
  font-weight: 600;
}

.takeaway p {
  font-size: 16px;
  color: rgba(255, 255, 255, 0.85);
  line-height: 1.65;
  margin-bottom: 0 !important;
}

.takeaway p strong { color: var(--gold-soft); }

.article-footnote {
  font-size: 13px;
  color: var(--ink-faint);
  line-height: 1.6;
  padding: 24px 0;
  border-top: 1px solid var(--line);
  margin-top: 48px;
}

.article-footnote a { color: var(--orange); font-weight: 600; }

.sidebar { position: sticky; top: 88px; }

.toc-card {
  background: var(--bg-soft);
  border: 1px solid var(--line);
  padding: 28px;
  margin-bottom: 24px;
}

.toc-label {
  font-family: var(--mono);
  font-size: 10.5px;
  letter-spacing: 0.15em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 16px;
  font-weight: 600;
}

.toc-list { list-style: none; display: flex; flex-direction: column; gap: 2px; }

.toc-list a {
  font-size: 13.5px;
  color: var(--ink-soft);
  display: flex;
  gap: 10px;
  padding: 7px 10px;
  border-left: 2px solid transparent;
  transition: all 0.15s;
  line-height: 1.4;
}

.toc-list a:hover {
  color: var(--navy);
  border-left-color: var(--orange);
  background: rgba(242, 100, 25, 0.04);
}

.toc-list a.active {
  color: var(--navy);
  border-left-color: var(--orange);
  font-weight: 600;
}

.toc-list .toc-num {
  font-family: var(--mono);
  font-size: 10px;
  color: var(--ink-faint);
  flex-shrink: 0;
  margin-top: 2px;
}

.sidebar-cta {
  background: var(--navy);
  padding: 28px;
  margin-bottom: 24px;
  position: relative;
  overflow: hidden;
}

.sidebar-cta::before {
  content: '';
  position: absolute;
  top: 0;
  left: 0;
  right: 0;
  height: 3px;
  background: linear-gradient(90deg, var(--orange), var(--gold));
}

.sidebar-cta-eyebrow {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.14em;
  color: var(--gold);
  text-transform: uppercase;
  margin-bottom: 10px;
}

.sidebar-cta h4 {
  font-family: var(--cond);
  font-size: 22px;
  font-weight: 800;
  color: #fff;
  line-height: 1.2;
  margin-bottom: 12px;
}

.sidebar-cta p {
  font-size: 13px;
  color: rgba(255, 255, 255, 0.7);
  line-height: 1.55;
  margin-bottom: 18px;
}

.sidebar-cta a {
  display: block;
  text-align: center;
  background: var(--orange);
  color: #fff;
  font-family: var(--cond);
  font-size: 15px;
  font-weight: 700;
  padding: 11px 20px;
  transition: background 0.15s;
}

.sidebar-cta a:hover { background: var(--orange-deep); }

.sidebar-product {
  border: 1px solid var(--line);
  padding: 22px;
}

.sp-label {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 12px;
}

.sp-img {
  height: 100px;
  background: linear-gradient(145deg, #e8edf5, #d4dce8);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 36px;
  opacity: 0.5;
  margin-bottom: 14px;
}

.sp-name {
  font-family: var(--cond);
  font-size: 18px;
  font-weight: 700;
  color: var(--navy);
  margin-bottom: 6px;
}

.sp-desc {
  font-size: 13px;
  color: var(--ink-soft);
  line-height: 1.5;
  margin-bottom: 16px;
}

.sp-link {
  font-family: var(--cond);
  font-size: 14px;
  font-weight: 700;
  color: var(--orange);
}

.sp-link:hover { text-decoration: underline; }

.related-section {
  background: var(--bg-soft);
  border-top: 1px solid var(--line);
  padding: 64px 0;
}

.related-section .wrap { max-width: 1180px; }

.related-label {
  font-family: var(--mono);
  font-size: 11px;
  letter-spacing: 0.18em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 8px;
}

.related-section h2 {
  font-family: var(--cond);
  font-size: 36px;
  font-weight: 800;
  color: var(--navy);
  margin-bottom: 36px;
}

.related-section h2 span { color: var(--orange); }

.related-grid {
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  gap: 24px;
}

.related-card {
  background: #fff;
  border: 1px solid var(--line);
  overflow: hidden;
  transition: border-color 0.15s, transform 0.15s;
  display: flex;
  flex-direction: column;
}

.related-card:hover {
  border-color: var(--orange);
  transform: translateY(-3px);
}

.rc-img {
  height: 160px;
  background: linear-gradient(145deg, #e8edf5, #d4dce8);
  display: flex;
  align-items: center;
  justify-content: center;
  font-size: 40px;
  opacity: 0.4;
  border-bottom: 1px solid var(--line);
}

.rc-body {
  padding: 20px 22px;
  flex: 1;
  display: flex;
  flex-direction: column;
}

.rc-cat {
  font-family: var(--mono);
  font-size: 10px;
  letter-spacing: 0.12em;
  color: var(--orange);
  text-transform: uppercase;
  margin-bottom: 8px;
}

.rc-title {
  font-family: var(--cond);
  font-size: 20px;
  font-weight: 700;
  color: var(--navy);
  line-height: 1.15;
  margin-bottom: 8px;
}

.rc-desc {
  font-size: 13px;
  color: var(--ink-soft);
  line-height: 1.55;
  flex: 1;
}

.rc-link {
  font-family: var(--cond);
  font-size: 14px;
  font-weight: 700;
  color: var(--orange);
  margin-top: 14px;
  display: block;
}

.article-cta {
  background: var(--navy);
  padding: 72px 0;
  text-align: center;
}

.article-cta h2 {
  font-family: var(--cond);
  font-size: 44px;
  font-weight: 800;
  color: #fff;
  margin-bottom: 14px;
}

.article-cta h2 span { color: var(--gold); }

.article-cta p {
  font-size: 17px;
  color: rgba(255, 255, 255, 0.75);
  max-width: 560px;
  margin: 0 auto 36px;
  line-height: 1.6;
}

.cta-row {
  display: flex;
  gap: 16px;
  justify-content: center;
  flex-wrap: wrap;
}

.btn-primary {
  display: inline-block;
  background: var(--orange);
  color: #fff;
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  padding: 14px 32px;
}

.btn-primary:hover { background: var(--orange-deep); }

.btn-ghost-light {
  display: inline-block;
  border: 2px solid rgba(255, 255, 255, 0.4);
  color: #fff;
  font-family: var(--cond);
  font-size: 16px;
  font-weight: 700;
  padding: 12px 30px;
}

.btn-ghost-light:hover {
  border-color: #fff;
  background: rgba(255, 255, 255, 0.08);
}

@media (max-width: 1024px) {
  .article-layout { grid-template-columns: 1fr; }
  .sidebar { position: static; }
  .related-grid { grid-template-columns: 1fr 1fr; }
}

@media (max-width: 640px) {
  .article-hero h1 { font-size: 34px; }
  .related-grid { grid-template-columns: 1fr; }
  .cta-row { flex-direction: column; align-items: center; }
}
</style>
