<script setup lang="ts">
import type { ProductPage, ProductSection } from '~/data/products/types'
import ProductAnchorSpecsSection from '~/components/product/sections/ProductAnchorSpecsSection.vue'
import ProductAppUsesSection from '~/components/product/sections/ProductAppUsesSection.vue'
import ProductBenefitsSection from '~/components/product/sections/ProductBenefitsSection.vue'
import ProductCasectaSection from '~/components/product/sections/ProductCasectaSection.vue'
import ProductCertGridSection from '~/components/product/sections/ProductCertGridSection.vue'
import ProductDownloadsSection from '~/components/product/sections/ProductDownloadsSection.vue'
import ProductFaqSection from '~/components/product/sections/ProductFaqSection.vue'
import ProductLineupSection from '~/components/product/sections/ProductLineupSection.vue'
import ProductQuoteSection from '~/components/product/sections/ProductQuoteSection.vue'
import ProductRelatedSection from '~/components/product/sections/ProductRelatedSection.vue'
import ProductSpecGridSection from '~/components/product/sections/ProductSpecGridSection.vue'

defineProps<{
  page: ProductPage
}>()

function sectionKey(section: ProductSection, index: number) {
  return `${section.type}-${index}`
}
</script>

<template>
  <div>
    <ProductBreadcrumb :items="page.breadcrumb" />
    <ProductHero :page="page" />
    <ProductCertStrip />

    <template v-for="(section, index) in page.sections" :key="sectionKey(section, index)">
      <ProductLineupSection
        v-if="section.type === 'lineup'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :items="section.items"
      />

      <ProductBenefitsSection
        v-else-if="section.type === 'benefits' || section.type === 'grade-guide'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :soft-bg="section.softBg"
        :items="section.items"
      />

      <ProductAppUsesSection
        v-else-if="section.type === 'app-uses'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :items="section.items"
      />

      <ProductFaqSection
        v-else-if="section.type === 'faq'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :soft-bg="section.softBg"
        :items="section.items"
      />

      <ProductCasectaSection v-else-if="section.type === 'casecta'" />

      <ProductSpecGridSection
        v-else-if="section.type === 'spec-grid'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :columns="section.columns"
        :items="section.items"
        :groups="section.groups"
        :footnote="section.footnote"
      />

      <ProductAnchorSpecsSection
        v-else-if="section.type === 'anchor-specs'"
        :section-id="section.id"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :table="section.table"
        :items="section.items"
        :soft-bg="section.softBg"
      />

      <ProductDownloadsSection
        v-else-if="section.type === 'downloads'"
        :section-id="section.id"
        :num="section.num"
        :heading-html="section.headingHtml"
        :soft-bg="section.softBg"
        :items="section.items"
      />

      <ProductCertGridSection
        v-else-if="section.type === 'cert-grid'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :items="section.items"
      />

      <ProductQuoteSection
        v-else-if="section.type === 'quote'"
        :section-id="section.id"
        :num="section.num"
        :heading-html="section.headingHtml"
        :lead="section.lead"
        :quote-note="section.quoteNote"
        :why="section.why"
      />

      <ProductRelatedSection
        v-else-if="section.type === 'related'"
        :num="section.num"
        :heading-html="section.headingHtml"
        :items="section.items"
      />
    </template>
  </div>
</template>
