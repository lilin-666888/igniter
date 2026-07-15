import type { ProductPage } from '../types'

export const siliconNitrideHeaters: ProductPage = {
  slug: 'silicon-nitride-heaters',
  pageType: 'sku',
  parent: { slug: 'ceramic-heaters', label: 'Ceramic Heaters & Elements' },
  seo: {
    title: 'Silicon Nitride Heaters | Fast Heat Transfer & Long Life',
    description:
      'Silicon nitride heaters deliver rapid thermal response, reaching 1100°C in 3 seconds, with excellent thermal shock resistance and long service life.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Heaters & Elements', to: '/products/ceramic-heaters' },
    { label: 'Silicon Nitride Heaters' },
  ],
  hero: {
    eyebrow: '★ Flagship · Ceramic Heaters & Elements',
    title: 'Silicon nitride heaters,',
    titleHighlight: 'flat, plate & rod.',
    subtitle:
      'Si₃N₄ resistive heating elements for <b>pellet stoves, industrial furnaces, and semiconductor wafer-chuck temperature control</b>. Ultra-fast thermal response (3 seconds to 1100°C), custom voltage from 12V to 230V, and custom geometry to OEM drawing.',
    stats: [
      { num: '1300°C', lbl: 'Max Surface Temp' },
      { num: '3 sec', lbl: 'Heat-Up' },
      { num: 'Custom', lbl: 'Voltage & Size' },
      { num: 'ISO 9001', lbl: 'Certified' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Silicon Nitride Heaters · At a Glance',
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Type', v: 'Resistive' },
      { k: 'Max Surface Temp', v: '1300°C' },
      { k: 'Voltage', v: '12–230V custom' },
      { k: 'Heat-Up', v: '3 seconds' },
      { k: 'Geometry', v: 'Flat / Plate / Rod' },
      { k: 'Sample Lead Time', v: '48 h' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Heater Types',
      headingHtml: 'Three Si₃N₄ heater <span class="accent">configurations</span>.',
      lead: 'Same Si₃N₄ resistive core, three form factors. Choose by appliance geometry and mounting requirement.',
      columns: 3,
      items: [
        {
          model: 'Flat Blade Heater',
          subtitle: 'Pellet Stove · Appliance',
          badge: '★ Most Popular',
          featured: true,
          headGradient: true,
          imageIcon: '🔆',
          imageLabel: 'Flat Blade — front view',
          rows: [
            { k: 'Rated Voltage', v: '12–230', unit: 'V' },
            { k: 'Power', v: '50–400', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1100–1300', unit: '°C' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> Pellet stoves · BBQ grills · gas appliances',
        },
        {
          model: 'Heating Plate',
          subtitle: 'Flat geometry · wafer chuck',
          imageIcon: '⬛',
          imageLabel: 'Heating Plate — top view',
          rows: [
            { k: 'Form', v: 'Flat plate' },
            { k: 'Flatness', v: '±0.1', unit: 'mm' },
            { k: 'Surface Temp', v: 'up to 1300', unit: '°C' },
            { k: 'Voltage', v: 'Custom' },
            { k: 'Size', v: 'Custom', unit: 'mm' },
          ],
          foot: '<b>Use:</b> Semiconductor wafer chucks · press sintering',
        },
        {
          model: 'Rod Heater',
          subtitle: 'Cylindrical · furnace',
          imageIcon: '🔩',
          imageLabel: 'Rod Heater — side view',
          rows: [
            { k: 'Diameter', v: 'Ø 5–50', unit: 'mm' },
            { k: 'Length', v: '50–600', unit: 'mm' },
            { k: 'Surface Temp', v: 'up to 1300', unit: '°C' },
            { k: 'Voltage', v: 'Custom' },
            { k: 'Environment', v: 'Air · inert gas' },
          ],
          foot: '<b>Use:</b> Industrial furnaces · tube furnaces · lab',
        },
      ],
      footnote:
        'All Si₃N₄ heaters: operating temp range −40 to +85°C ambient · insulation resistance ≥100 MΩ · UL/CE available.',
    },
    {
      type: 'downloads',
      id: 'downloads',
      num: '02 · Datasheet & Downloads',
      headingHtml: 'Drawings, datasheets, <span class="accent">and certs</span>.',
      lead: 'Everything your engineering and procurement teams need.',
      softBg: true,
      items: [
        {
          icon: '📄',
          name: 'Product Datasheet',
          meta: 'PDF · full specifications',
          btn: 'Download PDF →',
          to: '#quote',
        },
        {
          icon: '📐',
          name: '2D / 3D Drawings',
          meta: 'STEP · DWG · PDF · on request',
          btn: 'Request files →',
          to: '#quote',
        },
        {
          icon: '🛡️',
          name: 'Certification Files',
          meta: 'ISO 9001 · CE · RoHS · REACH',
          btn: 'Request scans →',
          to: '#quote',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'cert-grid',
      num: '03 · Certifications & Compliance',
      headingHtml: 'Certified for <span class="accent">global markets</span>.',
      lead: 'All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.',
      items: [
        {
          mark: 'ISO',
          scope:
            'ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.',
          tag: 'Quality System',
        },
        {
          mark: 'CE',
          scope:
            'CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.',
          tag: 'European Union',
        },
        {
          mark: 'RoHS',
          scope:
            'RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.',
          tag: 'EU · Global',
        },
        {
          mark: 'IATF',
          scope:
            'Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.',
          tag: 'Quality System',
        },
      ],
    },
    {
      type: 'quote',
      id: 'quote',
      num: '04 · Get a Quote',
      headingHtml:
        'Request a quote for <span class="accent">Si₃N₄ heaters</span>.',
      lead: 'Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.',
      quoteNote:
        'Specify voltage, geometry (flat/plate/rod), dimensions, and annual volume.',
      why: [
        'Free samples, 48-hour dispatch on stock items — no MOQ.',
        'Custom to drawing: DFM review in 48h, prototype in 14 days.',
        'Direct manufacturer pricing — no trading layer.',
        'ISO 9001 certified — full material certs with every shipment.',
      ],
    },
    {
      type: 'faq',
      num: '05 · Engineering FAQ',
      headingHtml: 'The questions <span class="accent">we get most</span>.',
      lead: 'Direct answers from our application team. Need more? Email us with your part number, drawing, or duty cycle.',
      softBg: true,
      items: [
        {
          q: 'Max operating temperature?',
          a: 'Si₃N₄ heaters: up to 1300°C surface temperature. Ambient operating range −40 to +85°C.',
        },
        {
          q: 'Can you match my existing heater geometry?',
          a: 'Send STEP, DWG, or PDF — DFM review and quote within 48 hours. We match flat, plate, rod, and complex profile geometries.',
        },
        {
          q: 'What voltage options are available?',
          a: '12V, 120V, 230V standard. Custom voltages on production orders — specify resistance target and we design accordingly.',
        },
        {
          q: 'How quickly can I get samples?',
          a: 'Stock flat blade samples: 48 hours. Custom geometry: 7–14 days from drawing approval.',
        },
        {
          q: 'Do you offer OEM/private-label?',
          a: 'Laser-marked branding free on production orders of 500+ units. Mutual NDA standard.',
        },
        {
          q: 'What is the insulation resistance?',
          a: '≥100 MΩ at 500V DC across the full ambient temperature range. Tested and certified per batch.',
        },
      ],
    },
    {
      type: 'related',
      num: '06 · Related',
      headingHtml: 'Explore <span class="accent">further</span>.',
      lead: 'See the parent category, dig into the Si₃N₄ material, or explore a related product line.',
      items: [
        {
          eyebrow: 'Product Category',
          title: 'Ceramic Heaters & Elements',
          desc: 'All five heater types — Si₃N₄, SiC, Al₂O₃, and AlN in one overview.',
          to: '/products/ceramic-heaters',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Properties, thermal shock resistance, and why Si₃N₄ outperforms alumina in high-cycle heating.',
          to: '/materials/silicon-nitride',
        },
        {
          eyebrow: 'Application',
          title: 'Advanced Combustion & Ignition',
          desc: 'Pellet stoves, BBQ grills, gas furnaces, and boilers — all 8 ignition scenarios.',
          to: '/applications/advanced-combustion-fixed',
        },
      ],
    },
  ],
}
