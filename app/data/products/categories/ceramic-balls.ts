import type { ProductPage } from '../types'

export const ceramicBalls: ProductPage = {
  slug: 'ceramic-balls',
  pageType: 'category',
  seo: {
    title: 'Precision Ceramic Balls | G3–G60 Bearing Ball Solutions',
    description:
      'Precision ceramic balls in silicon nitride and zirconia grades, available from G3–G60 and Ø0.4–100mm for bearings, aerospace, and industrial applications.',
    keywords:
      'ceramic balls, ceramic ball, ceramic ball bearings, ceramic ball bearing, bearing ceramic ball, china ceramic ball, chinese ceramic balls',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Balls' },
  ],
  hero: {
    eyebrow: 'Product Category 05 · Precision Balls',
    title: 'Precision ceramic balls,',
    titleHighlight: 'Si₃N₄ and ZrO₂.',
    subtitle:
      'Bearing-grade ceramic balls for precision bearings, ball screws, pumps, valves, and check valves. Grade <b>G3 to G60</b>, diameter 0.4mm to 100mm. Si₃N₄ (lighter, harder) and ZrO₂ (denser, tougher) from stock.',
    stats: [
      { num: 'G3–G60', lbl: 'Grade Range' },
      { num: '0.4–100mm', lbl: 'Diameter' },
      { num: '2 Materials', lbl: 'Si₃N₄ & ZrO₂' },
      { num: 'P0–P5', lbl: 'Bearing Precision' },
    ],
  },
  heroSide: 'quote',
  sections: [
    {
      type: 'lineup',
      num: '01 · Ceramic Ball Types',
      headingHtml: 'Two materials, <span class="accent">every grade</span>.',
      lead: 'Si₃N₄ for high-speed and high-temperature bearing applications; ZrO₂ for corrosive environments and electrical insulation.',
      items: [
        {
          name: 'Silicon Nitride Balls',
          icon: '⚫',
          desc: 'Si₃N₄ ceramic balls for precision bearings, ball screws, and high-speed spindles. 60% lighter than steel, hardness 78 HRC, non-magnetic, lubrication-free capable.',
          chips: ['Ø 0.4–100mm', 'G3–G60', '78 HRC', 'Non-magnetic'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/products/silicon-nitride-balls',
          linkLabel: 'View specs →',
          flagship: true,
          badge: '★ Recommended',
        },
        {
          name: 'Zirconia Balls',
          icon: '🔵',
          desc: 'ZrO₂ ceramic balls for corrosive-media pumps, check valves, and food/pharmaceutical equipment. Higher density than Si₃N₄ — ideal for valve seats and grinding applications.',
          chips: ['Ø 0.4–50.8mm', 'G3–G60', 'Corrosion-resistant', 'Electrical insulator'],
          materialLabel: 'ZrO₂',
          materialTo: '/materials/zirconia',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
      ],
    },
    {
      type: 'grade-guide',
      num: '02 · Grade Guide',
      headingHtml: 'Choosing the right <span class="accent">grade</span>.',
      lead: 'ISO 3290 grade number = max allowable deviation in micrometres. Lower grade = tighter tolerance = higher precision. Choose based on your bearing accuracy class (P0–P5) and operating speed.',
      softBg: true,
      items: [
        {
          title: 'G3 / G5 — Precision Bearing Grade',
          body: 'For high-precision angular contact bearings, spindle bearings, and gyroscope bearings. Max deviation ≤0.08µm (G3). Aerospace and semiconductor spindle applications.',
        },
        {
          title: 'G10 / G16 — High-Precision Grade',
          body: 'Standard for P4 and P2 bearing accuracy class. CNC spindle bearings, dental turbines, and precision instrument bearings.',
        },
        {
          title: 'G25 / G40 — Standard Engineering Grade',
          body: 'General-purpose bearings, ball screws, and pump check valves. P0–P6 accuracy class. Cost-effective for high-volume industrial applications.',
        },
        {
          title: 'G60 — Commercial Grade',
          body: 'For valve seats, flow metering, and applications where chemical or thermal resistance matters more than roundness tolerance.',
        },
      ],
    },
    {
      type: 'app-uses',
      num: '03 · Applications',
      headingHtml: 'Where ceramic balls <span class="accent">outperform steel</span>.',
      lead: 'Any bearing, pump, or valve that fails in steel due to speed, temperature, corrosion, or magnetism.',
      items: [
        {
          icon: '⚙️',
          title: 'Precision Bearings',
          desc: 'Si₃N₄ balls for angular contact, deep groove, and hybrid ceramic bearings. 3× longer life vs steel at high speed.',
          grade: 'Si₃N₄ G3–G16',
          to: '/applications',
        },
        {
          icon: '🔩',
          title: 'Ball Screws',
          desc: 'Ceramic balls for CNC and semiconductor lithography ball screws. Zero stick-slip, lubrication-free.',
          grade: 'Si₃N₄ G10–G25',
          to: '/applications',
        },
        {
          icon: '💧',
          title: 'Pumps & Valves',
          desc: 'ZrO₂ balls for check valves and pump seats in corrosive chemical and food-process environments.',
          grade: 'ZrO₂ G25–G60',
          to: '/applications',
        },
        {
          icon: '🔬',
          title: 'Medical & Dental',
          desc: 'Si₃N₄ balls for dental turbines and surgical instrument bearings. Biocompatible, autoclavable.',
          grade: 'Si₃N₄ G5–G16',
          to: '/applications',
        },
        {
          icon: '✈️',
          title: 'Aerospace',
          desc: 'G3 Si₃N₄ balls for gyroscope and navigation system bearings. Zero magnetic signature.',
          grade: 'Si₃N₄ G3–G5',
          to: '/applications',
        },
        {
          icon: '🏭',
          title: 'Grinding Media',
          desc: 'ZrO₂ balls for wet and dry milling of ceramic slurries, pigments, and battery materials.',
          grade: 'ZrO₂ G40–G60',
          to: '/applications',
        },
      ],
    },
    {
      type: 'faq',
      num: '04 · FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      softBg: true,
      items: [
        {
          q: 'Grade for my bearing?',
          a: 'Match to accuracy class: P2→G5, P4→G10–G16, P5→G16–G25, P0→G25–G60. Send bearing model number to confirm.',
        },
        {
          q: 'MOQ?',
          a: 'Stock sizes: no MOQ for samples. Custom <5mm: 200pc min. Large diameter >50mm: quote on request.',
        },
        {
          q: 'Si₃N₄ vs ZrO₂?',
          a: 'Si₃N₄: lighter (3.2 g/cm³), harder (HRC 78), better for high-speed/high-temp. ZrO₂: denser (6.0), tougher, better for corrosive media.',
        },
        {
          q: 'Surface finish?',
          a: 'Standard Ra ≤0.01µm (mirror). Custom Ra to specification. Lapping to P2/G3 on request.',
        },
        {
          q: 'Stock availability?',
          a: 'Common bearing ball sizes in both materials held in stock. Standard sizes dispatch within 48h.',
        },
        {
          q: 'Aerospace/medical certs?',
          a: 'Material cert with every shipment. XRF analysis available. AS9100 and medical traceability on OEM programs.',
        },
      ],
    },
    { type: 'casecta' },
  ],
}
