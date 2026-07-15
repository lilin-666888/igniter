import type { ProductPage } from '../types'

export const grindingMedia: ProductPage = {
  slug: 'grinding-media',
  pageType: 'category',
  seo: {
    title: 'Ceramic Grinding Media | Silicon Nitride & Zirconia Balls',
    description:
      'High-density ceramic grinding media in Si₃N₄ or ZrO₂ type for wet and dry milling, zero metal contamination, battery materials, and high-purity powders.',
    keywords: 'ceramic grinding media',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Grinding Media' },
  ],
  hero: {
    eyebrow: 'Product Category 07 · Grinding Media',
    title: 'Ceramic grinding media,',
    titleHighlight: 'Si₃N₄ and ZrO₂.',
    subtitle:
      'High-density ceramic grinding balls and beads for <b>wet and dry milling</b> of battery cathode materials, pigments, coatings, and mineral slurries. Zero metal contamination — critical for battery and electronics applications.',
    stats: [
      { num: '2', lbl: 'Media Types' },
      { num: '0.4–100mm', lbl: 'Bead Size' },
      { num: 'Zero', lbl: 'Metal Contamination' },
      { num: 'Battery-Grade', lbl: 'Purity' },
    ],
  },
  heroSide: 'quote',
  sections: [
    {
      type: 'lineup',
      num: '01 · Grinding Media Types',
      headingHtml: 'Two ceramic media, <span class="accent">matched to your mill</span>.',
      lead: 'Si₃N₄ for the hardest materials and highest purity; ZrO₂ for general-purpose high-energy milling of battery and pigment slurries.',
      items: [
        {
          name: 'Si₃N₄ Grinding Balls',
          icon: '⚫',
          desc: 'Silicon nitride grinding balls for hard mineral milling and ultra-high-purity applications. Hardness 78 HRC — outlasts zirconia media 3–5× in abrasive slurries.',
          chips: ['Ø 0.4–100mm', '78 HRC', 'Zero contamination', 'High-purity'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
          flagship: true,
          badge: '★ Highest Performance',
        },
        {
          name: 'ZrO₂ Grinding Balls',
          icon: '⬜',
          desc: 'Zirconia grinding balls for battery cathode/anode slurry milling, pigment dispersion, and mineral processing. High density (6.0 g/cm³) delivers excellent milling energy.',
          chips: ['Ø 0.4–50.8mm', '6.0 g/cm³', 'Battery-grade', 'Coatings/mining'],
          materialLabel: 'ZrO₂',
          materialTo: '/materials/zirconia',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
      ],
    },
    {
      type: 'benefits',
      num: '02 · Why Ceramic Grinding Media',
      headingHtml: 'Why ceramic media <span class="accent">replaces steel</span>.',
      lead: 'Metal contamination ruins battery electrode performance. Ceramic media eliminates the risk.',
      softBg: true,
      items: [
        {
          title: 'Zero iron contamination',
          body: 'Steel media contaminate battery slurries with Fe ions that degrade cathode performance. Ceramic media contributes zero metal ions.',
        },
        {
          title: 'Longer media life',
          body: 'Si₃N₄ outlasts alumina 3–5× and steel 10–20× in hard abrasive slurries — lower total cost of ownership.',
        },
        {
          title: 'Higher milling energy (ZrO₂)',
          body: 'ZrO₂ density 6.0 g/cm³ vs alumina 3.9 g/cm³ — more impact energy per ball, reducing milling time.',
        },
        {
          title: 'Consistent particle size distribution',
          body: 'Uniform sphericity and low size variance give reproducible D50 — critical for battery electrode control.',
        },
        {
          title: 'Battery, coatings, mining applications',
          body: 'LFP/NMC cathode slurry, lithium carbonate, pigment dispersions, TiO₂, and mineral concentrates.',
        },
        {
          title: 'Stock in all standard sizes',
          body: '0.4mm to 100mm across both materials. Stock sizes dispatch within 48 hours.',
        },
      ],
    },
    {
      type: 'app-uses',
      num: '03 · Applications',
      headingHtml: 'What our customers <span class="accent">mill with ceramic</span>.',
      lead: 'Battery materials, pigments, coatings, minerals — any slurry where contamination, purity, or wear life is critical.',
      items: [
        {
          icon: '🔋',
          title: 'Battery Materials',
          desc: 'NMC/LFP cathode slurry, lithium carbonate, and solid-state electrolyte powder milling. Zero Fe contamination critical.',
          grade: 'ZrO₂ or Si₃N₄',
          to: '/applications',
        },
        {
          icon: '🎨',
          title: 'Pigments & Coatings',
          desc: 'TiO₂, carbon black, and organic pigment dispersions for paints, inks, and coatings.',
          grade: 'ZrO₂',
          to: '/applications',
        },
        {
          icon: '⛏️',
          title: 'Mining & Minerals',
          desc: 'Hard mineral concentration and ceramic powder milling — silica, alumina, and advanced ceramic feedstocks.',
          grade: 'Si₃N₄',
          to: '/applications',
        },
        {
          icon: '💊',
          title: 'Pharmaceutical & Food',
          desc: 'Particle size reduction for drug formulation and food ingredient processing.',
          grade: 'ZrO₂',
          to: '/applications',
        },
        {
          icon: '🔬',
          title: 'Advanced Ceramics',
          desc: 'Milling of ceramic precursor powders for sintering — Si₃N₄, SiC, AlN, ZrO₂ feedstock.',
          grade: 'Si₃N₄',
          to: '/applications',
        },
        {
          icon: '⚗️',
          title: 'Chemical Processing',
          desc: 'Catalyst milling, chemical reaction intermediates, and specialty dispersion applications.',
          grade: 'ZrO₂ or Si₃N₄',
          to: '/applications',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'faq',
      num: '04 · FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team. Need more? Email us with your mill type, feed size, or purity target.',
      items: [
        {
          q: 'Which media for battery cathode?',
          a: 'ZrO₂ standard for NMC/LFP slurry. Si₃N₄ for ultra-high-purity or very hard feed materials.',
        },
        {
          q: 'What bead size?',
          a: 'Typically 10× the feed D90. For D50 < 1µm, use beads ≤0.5mm. Send feed size and target — we\'ll recommend.',
        },
        {
          q: 'Lead time?',
          a: 'Common sizes in stock: 48h. Non-stock: 2–4 weeks. Sample 1kg: no MOQ.',
        },
        {
          q: 'Media load calculation?',
          a: 'Standard fill 50–60% of mill volume. ZrO₂ (6.0 g/cm³) loads heavier than alumina — we\'ll advise on your mill.',
        },
        {
          q: 'Documentation?',
          a: 'Material cert with every shipment. XRF purity analysis available. Trace metal content cert for battery manufacturer qualification.',
        },
        {
          q: 'Wear rate vs alumina?',
          a: 'ZrO₂ wear rate typically 3–5× lower than alumina. Si₃N₄: 5–10× lower. Less contamination, longer intervals.',
        },
      ],
    },
  ],
}
