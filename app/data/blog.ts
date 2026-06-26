export type BlogCategory =
  | 'All Articles'
  | 'Material Science'
  | 'Material Guide'
  | 'Application Guides'
  | 'Engineering FAQs'
  | 'Case Studies'
  | 'Industry Analysis'
  | 'Product Updates'

export type BlogPost = {
  slug: string
  title: string
  excerpt: string
  category: Exclude<BlogCategory, 'All Articles'>
  date: string
  readTime: string
  featured?: boolean
  tags?: string[]
  cardIcon: string
  cardLabel: string
  cardImgClass?: 'card-img-dark' | 'card-img-warm' | ''
  cardStyle?: string
  heroSub?: string
  breadcrumbTitle?: string
  author?: {
    name: string
    title: string
    avatar: string
  }
  heroCaption?: string
  heroIcon?: string
  heroLabel?: string
  toc?: { id: string; num: string; label: string }[]
  relatedSlugs?: string[]
  productLink?: { name: string; desc: string; to: string; icon: string }
  contentHtml?: string
}

export const blogCategories: BlogCategory[] = [
  'All Articles',
  'Material Science',
  'Material Guide',
  'Application Guides',
  'Engineering FAQs',
  'Case Studies',
  'Industry Analysis',
  'Product Updates',
]
