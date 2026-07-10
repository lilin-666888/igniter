import type { ProductPage } from '../types'

export const ceramicIgniters: ProductPage = {
  slug: 'ceramic-igniters',
  pageType: 'category',
  seo: {
    title: 'Ceramic Igniters | Hot Surface Ignition for OEM Appliances',
    description:
      'Explore ceramic igniters for pellet stoves, BBQ grills, gas furnaces, water heaters, and HVAC systems. UL/CE certified, OEM-ready, and long service life.',
    keywords: 'ceramic igniter, pellet ceramic igniter',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Igniters' },
  ],
  hero: {
    eyebrow: '★ Flagship Product Category',
    title: 'Ceramic hot surface igniters,',
    titleHighlight: 'built for OEM appliance platforms.',
    subtitle:
      'Si₃N₄, SiC, and Al₂O₃ ceramic igniters for <b>pellet stoves, BBQ grills, gas furnaces, water heaters, boilers, and HVAC platforms</b>. Our flagship CN-300 silicon nitride hot-surface igniter supports high-cycle ignition and OEM fitment, and is UL/CE certified for optimal performance.',
    stats: [
      { num: '5', lbl: 'Igniter Types' },
      { num: '100K+', lbl: 'Cycle Life' },
      { num: '48h', lbl: 'Sample Dispatch' },
      { num: '42', lbl: 'Export Markets' },
    ],
  },
  heroSide: 'quote',
  sections: [
    {
      type: 'lineup',
      num: '01 · The Igniter Lineup',
      headingHtml:
        'Five hot surface igniter types, <span class="accent">one supplier</span>.',
      lead: 'Pick by appliance and duty cycle. Each type has its own spec sheet and stock SKUs — open a product page for full specs and drawings, or send us your part number for a same-week quote.',
      items: [
        {
          name: 'Si₃N₄ Hot Surface Igniter · CN-300',
          icon: '🔥',
          desc: 'Our flagship silicon nitride hot surface igniter for pellet stoves, BBQ grills, gas furnaces, and water heaters. Designed for high-cycle thermal duty, with 12V, 120V, and 230V variants built around a Si₃N₄ heating core.',
          chips: ['Cycle life 100K+', 'Heat-up 3 s', '12–230V', 'UL/CE'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/products/silicon-nitride-igniters-final',
          linkLabel: 'View Details →',
          flagship: true,
          badge: '★ Flagship',
        },
        {
          name: 'Universal Hot Surface Igniter',
          icon: '♨️',
          desc: 'General-purpose hot surface igniter for gas and liquid-fuel appliances. Compatible with most North American and EU gas appliance interfaces, standard mounting flanges.',
          chips: ['Gas + fuel', 'Standard flange', 'NA / EU fit'],
          materialLabel: 'Si₃N₄ or Al₂O₃',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'Alumina (Al₂O₃) Igniter',
          icon: '📜',
          desc: "Lower-cost replacement for older alumina-based ignition systems. Best for low-duty-cycle applications and cost-sensitive volume where Si₃N₄ cycle life isn't required.",
          chips: ['Legacy replace', 'Low-duty', 'Cost-optimized'],
          materialLabel: 'Al₂O₃',
          materialTo: '/materials/alumina',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'SiC Hot Rod Igniter',
          icon: '🌡️',
          desc: 'High-temperature SiC heating element for industrial boilers and commercial water heating. Operates at higher surface temperature (up to 1500°C) than Si₃N₄ alternatives.',
          chips: ['Surface 1500°C', 'Industrial boiler', 'High-temp'],
          materialLabel: 'SiC',
          materialTo: '/materials/silicon-carbide',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
        {
          name: 'Si₃N₄ Glow Plug',
          icon: '🔌',
          desc: 'Cylindrical glow-plug form factor for diesel engines, oil burners, and auxiliary cabin heaters. Sealed metal-sheath construction to automotive-grade vibration spec.',
          chips: ['Diesel / oil', 'Sealed sheath', 'Auto-grade'],
          materialLabel: 'Si₃N₄',
          materialTo: '/materials/silicon-nitride',
          linkTo: '/contact',
          linkLabel: 'Get a quote →',
        },
      ],
    },
    {
      type: 'benefits',
      num: '02 · Why Buy From Ceramitell',
      headingHtml: 'What OEM buyers <span class="accent">come to us for</span>.',
      lead: "We're a direct manufacturer, not a trader. That means engineering answers, drop-in compatibility, and pricing that survives volume — without a middleman markup.",
      softBg: true,
      items: [
        {
          title: 'Drop-in replacements',
          body: 'Send a Norton 271N, White-Rodgers, or Robertshaw part number — we match voltage, power, mounting, and lead config to spec.',
        },
        {
          title: 'Free samples, 48-hour dispatch',
          body: 'Stock BLK SKUs ship from our Hangzhou warehouse within 48 hours — no MOQ on samples, charges credited to first order.',
        },
        {
          title: 'UL / CE certified',
          body: 'BLK series is UL Recognized and CE-marked for the EU. Certification scans available on request for your compliance file.',
        },
        {
          title: 'Private-label at no extra cost',
          body: 'Laser-marked branding on the mounting flange or housing, free on production orders of 1,000+ units. Mutual NDA standard.',
        },
        {
          title: 'DFM on custom parts',
          body: 'Send STEP/PDF/DWG and get a 48-hour DFM reply with material recommendation, then prototypes in 7–14 days.',
        },
        {
          title: 'Direct-manufacturer pricing',
          body: 'One factory, no trading layer. Stable cost at volume and engineers you can reach — not a sales desk reading from a catalog.',
        },
      ],
    },
    {
      type: 'app-uses',
      num: '03 · Where They Fire',
      headingHtml: 'Appliances our igniters <span class="accent">run in</span>.',
      lead: 'From residential pellet stoves to industrial boilers — each application links to a deeper engineering page with the recommended igniter type and case data.',
      items: [
        {
          icon: '🔥',
          title: 'Pellet & Biomass Stoves',
          desc: 'High-cycle residential heating. Our flagship application — Italian OEM ships 180,000 units/year with BLK, −38% warranty returns.',
          grade: 'BLK Si₃N₄',
          to: '/applications/sub-biomass-pellet-stoves',
        },
        {
          icon: '🍖',
          title: 'BBQ & Outdoor Grills',
          desc: 'Fast, reliable ignition for gas grills and outdoor cooking appliances. 3-second heat-up, weather-cycle durable, low-voltage variants available.',
          grade: 'BLK / Universal',
          to: '/applications',
        },
        {
          icon: '♨️',
          title: 'Gas Furnaces & Water Heaters',
          desc: 'Residential and commercial HVAC ignition. Drop-in for major Western furnace OEM igniters across 120V and 230V platforms.',
          grade: 'BLK / Universal',
          to: '/applications',
        },
        {
          icon: '🏭',
          title: 'Industrial Boilers',
          desc: 'High-temperature commercial and industrial heating. SiC hot rod handles higher surface temperatures for demanding boiler duty.',
          grade: 'SiC Hot Rod',
          to: '/applications',
        },
        {
          icon: '⛽',
          title: 'Diesel & Oil Burners',
          desc: 'Engine pre-heat, oil burner ignition, and auxiliary cabin heaters. Sealed glow-plug form factor to automotive vibration spec.',
          grade: 'Si₃N₄ Glow Plug',
          to: '/applications',
        },
        {
          icon: '📐',
          title: 'Your Application',
          desc: "Heating or ignition need not listed? Tell us the appliance, duty cycle, and voltage — we'll recommend a type and quote within 24 hours.",
          grade: 'Talk to an engineer',
          to: '/contact',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'faq',
      num: '04 · Engineering FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team. Need more? Email us with your part number, drawing, or duty cycle.',
      items: [
        {
          q: 'Can your igniters replace Norton 271N / White-Rodgers / Robertshaw?',
          a: "Yes — we routinely produce drop-in replacements for these and other Western OEM igniters. Send the part number, we'll match voltage, power, mounting, and lead config. UL/CE certified for North American and EU markets.",
        },
        {
          q: "What's the MOQ for custom igniters?",
          a: 'Stock BLK SKUs: no MOQ — single-unit samples available. Custom voltage/form factor: 5,000-unit production MOQ typical. Sample charges credit against first production order.',
        },
        {
          q: 'How fast can I get samples?',
          a: 'Stock BLK samples dispatch within 48 hours from our Hangzhou warehouse to anywhere in our 42 export markets. Custom prototypes typically ship in 7–14 days from drawing receipt — DFM review included.',
        },
        {
          q: 'What is a ceramic hot surface igniter?',
          a: 'Ceramic hot-surface igniters are electrically heated ceramic components designed to reach an ignition temperature to ignite gas, biomass pellets, or liquid-fuel appliances. Ceramitell provides Si₃N₄, SiC, and Al₂O₃ hot surface igniters for OEM appliance platforms, replacement programs, and custom ignition assemblies.',
        },
        {
          q: 'Are your igniters UL/CE certified?',
          a: 'BLK series is UL Recognized (Component Recognition) and CE-marked for the EU. Certification scans available on request. Custom-voltage igniters require additional certification testing if outside our existing approved configurations.',
        },
        {
          q: "What's the warranty?",
          a: 'Standard warranty is 24 months from date of OEM installation against manufacturing defect. Extended warranty (36-48 months) available for OEM partnerships with annual volume commitments. Field failure analysis included.',
        },
      ],
    },
  ],
}
