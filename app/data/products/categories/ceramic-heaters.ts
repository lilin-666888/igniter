import type { ProductPage } from '../types'

export const ceramicHeaters: ProductPage = {
  slug: 'ceramic-heaters',
  pageType: 'category',
  seo: {
    title: 'Ceramic Heaters & Heating Elements | OEM Heating Solutions',
    description:
      'Ceramic heaters and heating elements for industrial heating systems requiring rapid heat-up, efficient thermal performance, and temperatures up to 1600°C.',
    keywords:
      'ceramic heaters, ceramic heating element, ceramic heating elements, ceramic heater element, ceramic heater elements, ptc ceramic heater, ptc heater ceramic, ptc ceramic heating, ceramic ptc heating',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Heaters' },
  ],
  hero: {
    eyebrow: 'Product Category 02 · Industrial Heating',
    title: 'Ceramic heaters &',
    titleHighlight: 'heating elements.',
    subtitle:
      'Si₃N₄, SiC, Al₂O₃, and AlN heating elements for industrial furnaces, semiconductor equipment, and high-temperature process engineering. Operating temperatures to <b>1600°C</b>. Custom voltages and precision geometries to OEM drawing.',
    stats: [
      { num: '5', lbl: 'Heater Types' },
      { num: '1600°C', lbl: 'Max Temp' },
      { num: 'Custom', lbl: 'Voltage & Size' },
      { num: 'ISO 9001', lbl: 'Certified' },
    ],
  },
  heroSide: 'quote',
  sections: [
    {
      type: 'lineup',
      num: '01 · The Heater Lineup',
      headingHtml:
        'Five heater types, <span class="accent">one manufacturer</span>.',
      lead: 'From the highest-temperature SiC element to precision AlN wafer-chuck heaters — all available to OEM drawing.',
      items: [
        {
          name: 'Silicon Nitride Heaters',
          icon: '🔆',
          desc: 'High-cycle Si₃N₄ flat and rod heaters for pellet stoves, industrial furnaces, and wafer-chuck temperature control. Ultra-fast thermal response.',
          chips: ['Up to 1300°C', 'Fast response', 'Compact'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
          flagship: true,
          badge: '★ Flagship',
        },
        {
          name: 'Silicon Nitride Heating Plates',
          icon: '⬛',
          desc: 'Flat Si₃N₄ heating plates for uniform surface heating. Used in press-sintering equipment, wafer-chuck heaters, and analytical instrument platforms.',
          chips: ['Flat geometry', 'Uniform heat', 'Custom size'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'Silicon Carbide Heaters',
          icon: '🌡️',
          desc: 'SiC rod and tube heaters for extreme-temperature industrial furnaces. Continuous operation to 1600°C — the highest in our range.',
          chips: ['Up to 1600°C', 'Industrial', 'Rod & tube'],
          materialLabel: 'SiC',
          materialTo: '/materials/silicon-carbide',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'Alumina Ceramic Heaters',
          icon: '⚪',
          desc: 'Al₂O₃ resistive heaters for medium-temperature applications up to 1200°C. Cost-optimised where Si₃N₄ lifetime is not required.',
          chips: ['Up to 1200°C', 'Cost-effective', 'Resistive'],
          materialLabel: 'Al₂O₃',
          materialTo: '/materials/alumina',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'Aluminum Nitride Heaters',
          icon: '💡',
          desc: 'AlN heaters for semiconductor wafer-chuck and precision thermal management. Highest thermal conductivity of any ceramic heater — fast, uniform heating.',
          chips: ['High conductivity', 'Wafer chuck', 'Precision'],
          materialLabel: 'AlN',
          materialTo: '/materials/aluminum-nitride',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
      ],
    },
    {
      type: 'benefits',
      num: '02 · Why Buy From Ceramitell',
      headingHtml:
        'What heating engineers <span class="accent">come to us for</span>.',
      lead: 'Direct manufacturer. DFM support for custom geometries. Stable supply across all four ceramic heater materials.',
      softBg: true,
      items: [
        {
          title: 'Up to 1600°C service',
          body: 'SiC heating elements operate continuously at 1600°C — the highest-temperature ceramic heater in our range, for glass, metal, and advanced materials furnaces.',
        },
        {
          title: 'Custom geometry to drawing',
          body: 'Send STEP, DWG, or PDF — DFM quote within 48 hours, prototypes in 7–14 days. Flat plates, rods, tubes, and complex profiles.',
        },
        {
          title: 'All four ceramic materials',
          body: 'One supplier covers Si₃N₄, SiC, Al₂O₃, and AlN heating elements — simplify your vendor list.',
        },
        {
          title: 'Voltage-matched to your system',
          body: '120V/230V standard; custom DC voltages on production orders. Resistance tolerance ±5% standard, ±2% on request.',
        },
        {
          title: 'Fast sample dispatch',
          body: 'Stock Si₃N₄ heater samples dispatch within 48 hours. Custom prototype: 7–14 days.',
        },
        {
          title: 'ISO 9001 quality system',
          body: 'Full PPAP-level documentation available for OEM qualification programs.',
        },
      ],
    },
    {
      type: 'app-uses',
      num: '03 · Applications',
      headingHtml:
        'Where ceramic heaters <span class="accent">are specified</span>.',
      lead: 'From semiconductor wafer-chucks to industrial glass furnaces.',
      items: [
        {
          icon: '🏭',
          title: 'Industrial Furnaces',
          desc: 'SiC and Si₃N₄ elements for glass, metal, and advanced-material furnaces above 1000°C.',
          grade: 'SiC or Si₃N₄',
          to: '/applications',
        },
        {
          icon: '💻',
          title: 'Semiconductor',
          desc: 'AlN wafer-chuck heaters for CVD/PVD chamber temperature control.',
          grade: 'AlN Heaters',
          to: '/applications',
        },
        {
          icon: '🧪',
          title: 'Laboratory Equipment',
          desc: 'Al₂O₃ tube-furnace elements and muffle furnace heaters for analytical instruments.',
          grade: 'Al₂O₃ Heaters',
          to: '/applications',
        },
        {
          icon: '⚗️',
          title: 'Chemical Processing',
          desc: 'Si₃N₄ immersion heaters for corrosive fluid heating and chemical bath control.',
          grade: 'Si₃N₄ Heaters',
          to: '/applications',
        },
        {
          icon: '🔥',
          title: 'Appliances & Ignition',
          desc: 'Si₃N₄ flat heaters for residential pellet stove ignition and auxiliary heating.',
          grade: 'Si₃N₄ Heaters',
          to: '/applications',
        },
        {
          icon: '📐',
          title: 'Custom Application',
          desc: 'Send your spec — we recommend material, geometry, and voltage within 48 hours.',
          grade: 'Contact an engineer',
          to: '/applications',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'faq',
      num: '04 · FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team. Need more? Email us with your drawing, duty cycle, or part number.',
      items: [
        {
          q: 'Max operating temperature?',
          a: 'SiC: 1600°C. Si₃N₄: 1300°C surface. Al₂O₃: 1200°C. AlN: 800°C for precision apps.',
        },
        {
          q: 'Can you match my heater geometry?',
          a: 'Send STEP/DWG/PDF — DFM review and quote within 48 hours.',
        },
        {
          q: 'What voltages are available?',
          a: '120V/230V AC standard. Custom DC on production orders.',
        },
        {
          q: 'Sample lead time?',
          a: 'Stock Si₃N₄: 48h. Custom prototype: 7–14 days.',
        },
        {
          q: 'OEM/private-label?',
          a: 'Laser marking on metal components, free on production orders of 500+ units.',
        },
        {
          q: 'Certifications?',
          a: 'ISO 9001. CE marking for EU. RoHS/REACH declarations. PPAP available.',
        },
      ],
    },
  ],
}
