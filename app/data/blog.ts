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

export const blogPosts: BlogPost[] = [
  {
    slug: 'si3n4-vs-alumina-igniter-guide',
    title: "Si₃N₄ vs Al₂O₃ Ceramic Igniters: The Complete Engineer's Guide",
    excerpt: 'Both materials work. The question is total cost of ownership — field failure rate, warranty exposure, and replacement logistics at your production volume. After 7 years of parallel OEM deployment data, we have the numbers.',
    category: 'Material Guide',
    date: 'June 2025',
    readTime: '12 min read',
    featured: true,
    tags: ['Si₃N₄', 'Al₂O₃', 'Igniters', 'Pellet Stoves', 'OEM'],
    cardIcon: '🔥',
    cardLabel: 'Si₃N₄ vs Al₂O₃ igniter comparison — Replace with article hero image',
    cardImgClass: 'card-img-dark',
    heroSub: 'Both materials work. The question is total cost of ownership — field failure rate, warranty exposure, and replacement logistics at your production volume. After 7 years of parallel OEM data, here is what the numbers show.',
    breadcrumbTitle: 'Si₃N₄ vs Al₂O₃ Igniters',
    author: {
      name: 'Ceramitell Engineering Team',
      title: 'Technical Applications · Hangzhou, China',
      avatar: '👷',
    },
    heroIcon: '🔥',
    heroLabel: 'Si₃N₄ BLK and Al₂O₃ igniters side-by-side — Replace with comparison product photo',
    heroCaption: 'Figure 1 — BLK Si₃N₄ igniter (left) and standard Al₂O₃ hot surface igniter (right). Same flange geometry, different element material. The difference in field life is 3–5×.',
    toc: [
      { id: 'overview', num: '01', label: 'The Short Answer' },
      { id: 'material-properties', num: '02', label: 'Material Properties' },
      { id: 'field-data', num: '03', label: '7 Years of OEM Data' },
      { id: 'when-to-use', num: '04', label: 'When to Use Each Material' },
      { id: 'practical-guidance', num: '05', label: 'Practical Guidance' },
    ],
    relatedSlugs: [
      'thermal-shock-resistance-ceramics',
      'pellet-stove-igniter-specification',
      'hydrogen-appliance-ignition',
    ],
    productLink: {
      name: 'BLK Si₃N₄ Igniter',
      desc: 'Hot surface igniter for pellet stoves, gas furnaces, and boilers. 12V, 120V, 230V variants. 100,000+ cycle life. UL/CE certified.',
      to: '/products/silicon-nitride-igniters-final',
      icon: '🔥',
    },
  },
  {
    slug: 'thermal-shock-resistance-ceramics',
    title: 'Why Thermal Shock Resistance Matters More Than Operating Temperature',
    excerpt: 'Engineers often over-specify maximum operating temperature and under-specify thermal shock resistance. Here is why the delta-T of each ignition cycle matters more than the peak temperature — and what fracture toughness data actually means for field life.',
    category: 'Material Science',
    date: 'May 2025',
    readTime: '9 min read',
    cardIcon: '❄️',
    cardLabel: 'Thermal shock resistance — fracture toughness comparison',
    cardImgClass: 'card-img-dark',
  },
  {
    slug: 'pellet-stove-igniter-specification',
    title: 'How to Specify a Pellet Stove Igniter That Lasts the Full Heating Season',
    excerpt: 'Most igniter failures happen in the first or last month of heating season — when cold-start temperature deltas are largest. This guide walks through the five key parameters that determine whether your igniter makes it through 3,000 cycles or 20,000.',
    category: 'Application Guides',
    date: 'May 2025',
    readTime: '11 min read',
    cardIcon: '🔥',
    cardLabel: 'Pellet stove igniter duty cycle analysis',
    cardImgClass: 'card-img-warm',
  },
  {
    slug: 'aln-thermal-conductivity-semiconductor',
    title: 'AlN vs Al₂O₃ for Wafer Chuck Heaters: Why 170 W/m·K Changes Everything',
    excerpt: 'The difference between ±1°C and ±7°C wafer temperature uniformity is the difference between passing and failing process qualification at 28nm and below. Here is the heat transfer analysis behind the AlN specification.',
    category: 'Application Guides',
    date: 'Apr 2025',
    readTime: '8 min read',
    cardIcon: '💻',
    cardLabel: 'AlN wafer chuck thermal uniformity simulation',
    cardImgClass: 'card-img-dark',
  },
  {
    slug: 'si3n4-grinding-balls-battery',
    title: 'Zero Iron: Why Battery Cathode Manufacturers Switched from Steel to Si₃N₄ Grinding Media',
    excerpt: 'Fe ion contamination from steel grinding media degrades NMC cathode capacity retention by 8–15% after 100 cycles. This case study documents the contamination mechanism, the test protocol, and the switch outcome at a Korean battery cell manufacturer.',
    category: 'Case Studies',
    date: 'Apr 2025',
    readTime: '14 min read',
    cardIcon: '🔋',
    cardLabel: 'Battery cathode slurry milling — Fe contamination test data',
    cardStyle: 'background:linear-gradient(145deg,#0d2010,#1a3a1a);',
  },
  {
    slug: 'ceramic-bearing-selection-guide',
    title: 'Full Ceramic vs Hybrid Bearings: A Decision Framework for Engineers',
    excerpt: 'The question we get asked most by bearing engineers: when does the cost premium of full ceramic (Si₃N₄ rings + balls) justify itself over hybrid (steel rings + Si₃N₄ balls)? Temperature, contamination, and magnetic sensitivity are the three deciding factors.',
    category: 'Engineering FAQs',
    date: 'Mar 2025',
    readTime: '10 min read',
    cardIcon: '⚙️',
    cardLabel: 'Full ceramic vs hybrid bearing selection guide',
    cardImgClass: '',
  },
  {
    slug: 'hydrogen-appliance-ignition',
    title: 'H₂-Ready Appliances: What the EU Hydrogen Transition Means for Igniter Specifications',
    excerpt: 'As EU gas grids move toward 20% H₂ blending, every residential gas appliance OEM faces the same igniter question: does your current igniter design achieve reliable first-attempt ignition on a hydrogen-blended gas mixture? The physics are different from methane.',
    category: 'Industry Analysis',
    date: 'Mar 2025',
    readTime: '13 min read',
    cardIcon: '⚗️',
    cardLabel: 'Hydrogen burner ignition reliability test',
    cardStyle: 'background:linear-gradient(145deg,#0a1428,#1a2d4a);',
  },
]

export function getBlogPost(slug: string) {
  return blogPosts.find((post) => post.slug === slug)
}

export function getFeaturedPost() {
  return blogPosts.find((post) => post.featured) ?? blogPosts[0]
}

export function getRelatedPosts(slugs: string[]) {
  return slugs
    .map((slug) => getBlogPost(slug))
    .filter((post): post is BlogPost => !!post)
}
