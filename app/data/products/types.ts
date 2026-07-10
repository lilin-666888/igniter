export type ProductPageType = 'category' | 'sku'

export type BreadcrumbItem = {
  label: string
  to?: string
}

export type HeroStat = {
  num: string
  lbl: string
}

export type SpotlightRow = {
  k: string
  v: string
}

export type LineupItem = {
  name: string
  icon?: string
  desc: string
  chips: string[]
  materialLabel?: string
  materialTo?: string
  linkTo?: string
  linkLabel?: string
  flagship?: boolean
  badge?: string
}

export type BenefitItem = {
  title: string
  body: string
}

export type AppUseItem = {
  icon: string
  title: string
  desc: string
  grade: string
  to?: string
}

export type FaqItem = {
  q: string
  a: string
}

export type SpecRow = {
  k: string
  v: string
  unit?: string
  hot?: boolean
}

export type SpecCard = {
  model: string
  subtitle: string
  badge?: string
  featured?: boolean
  headGradient?: boolean
  imageIcon?: string
  imageLabel?: string
  imageSrc?: string
  rows: SpecRow[]
  foot: string
}

export type SpecGridGroup = {
  label: string
  labelVariant?: 'gas' | 'fuel' | 'default'
  note?: string
  items: SpecCard[]
}

export type DownloadItem = {
  icon: string
  name: string
  meta: string
  btn: string
  to?: string
}

export type CertCard = {
  mark: string
  scope: string
  tag: string
}

export type RelatedItem = {
  eyebrow: string
  title: string
  desc: string
  to: string
}

export type AnchorSpecsTable = {
  headers: string[]
  rows: string[][]
}

export type SectionBase = {
  num: string
  headingHtml: string
  lead?: string
  softBg?: boolean
}

export type ProductSection =
  | (SectionBase & { type: 'lineup'; items: LineupItem[] })
  | (SectionBase & { type: 'benefits' | 'grade-guide'; items: BenefitItem[] })
  | (SectionBase & { type: 'app-uses'; items: AppUseItem[] })
  | (SectionBase & { type: 'faq'; items: FaqItem[] })
  | { type: 'casecta' }
  | (SectionBase & {
      type: 'spec-grid'
      columns?: 2 | 3
      items?: SpecCard[]
      groups?: SpecGridGroup[]
      footnote?: string
    })
  | (SectionBase & {
      type: 'anchor-specs'
      id: string
      table: AnchorSpecsTable
      items?: BenefitItem[]
    })
  | (SectionBase & { type: 'downloads'; id?: string; items: DownloadItem[] })
  | (SectionBase & { type: 'cert-grid'; items: CertCard[] })
  | (SectionBase & {
      type: 'quote'
      id?: string
      quoteNote?: string
      why: string[]
    })
  | (SectionBase & { type: 'related'; items: RelatedItem[] })

export interface ProductPage {
  slug: string
  pageType: ProductPageType
  parent?: { slug: string; label: string }
  seo: {
    title: string
    description: string
    keywords?: string
  }
  breadcrumb: BreadcrumbItem[]
  hero: {
    eyebrow: string
    title: string
    titleHighlight?: string
    subtitle: string
    stats: HeroStat[]
  }
  heroSide: 'quote' | 'spotlight'
  heroCtas?: {
    primary: { label: string; href: string }
    secondary?: { label: string; href: string }
  }
  spotlight?: {
    tag: string
    rows: SpotlightRow[]
  }
  sections: ProductSection[]
}
