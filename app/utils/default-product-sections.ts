import type { ProductPageType, ProductSection } from '~/data/products/types'

/** 二级分类页标准模块（lineup 由「产品列表」Tab 单独管理） */
export function defaultCategorySections(): ProductSection[] {
  return [
    {
      type: 'benefits',
      num: '02 · Why Buy From Ceramitell',
      headingHtml: 'What OEM buyers <span class="accent">come to us for</span>.',
      lead: '',
      softBg: true,
      items: [],
    },
    {
      type: 'app-uses',
      num: '03 · Applications',
      headingHtml: 'Where these products <span class="accent">are used</span>.',
      lead: '',
      items: [],
    },
    { type: 'casecta' },
    {
      type: 'faq',
      num: '04 · Engineering FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team.',
      items: [],
    },
  ]
}

/** 三级 SKU 页标准模块（含规格网格，可添加型号） */
export function defaultSkuSections(): ProductSection[] {
  return [
    {
      type: 'spec-grid',
      num: '01 · Product Specifications',
      headingHtml: 'Product models — <span class="accent">specifications</span>.',
      lead: '',
      columns: 3,
      items: [],
    },
    {
      type: 'downloads',
      id: 'downloads',
      num: '02 · Datasheet & Downloads',
      headingHtml: 'Drawings, datasheets, <span class="accent">and certs</span>.',
      lead: 'Everything your engineering and procurement teams need.',
      softBg: true,
      items: [],
    },
    { type: 'casecta' },
    {
      type: 'cert-grid',
      num: '03 · Certifications & Compliance',
      headingHtml: 'Certified for <span class="accent">global markets</span>.',
      lead: '',
      items: [],
    },
    {
      type: 'quote',
      id: 'quote',
      num: '04 · Get a Quote',
      headingHtml: 'Get a <span class="accent">quote</span>.',
      lead: '',
      quoteNote: '',
      why: [],
    },
    {
      type: 'faq',
      num: '05 · Engineering FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team.',
      softBg: true,
      items: [],
    },
    {
      type: 'related',
      num: '06 · Related',
      headingHtml: 'Explore <span class="accent">further</span>.',
      lead: '',
      items: [],
    },
  ]
}

export function defaultProductSections(pageType: ProductPageType): ProductSection[] {
  return pageType === 'sku' ? defaultSkuSections() : defaultCategorySections()
}
