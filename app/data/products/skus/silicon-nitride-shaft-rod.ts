import type { ProductPage } from '../types'

export const siliconNitrideShaftRod: ProductPage = {
  slug: 'silicon-nitride-shaft-rod',
  pageType: 'sku',
  parent: { slug: 'ceramic-structural', label: 'Ceramic Structural Parts' },
  seo: {
    title: 'Silicon Nitride Shaft Rods | High Precision & Lightweight',
    description:
      'High-precision Si₃N₄ ceramic shaft rods for CNC spindles, pump shafts, and turbo-machinery, offering low weight, high hardness, and non-magnetic performance.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Structural Parts', to: '/products/ceramic-structural' },
    { label: 'Si₃N₄ Shaft Rods' },
  ],
  hero: {
    eyebrow: '★ Flagship · Ceramic Structural Parts',
    title: 'Silicon nitride shaft rods,',
    titleHighlight: 'precision to ±0.01mm.',
    subtitle:
      'High-precision Si₃N₄ ceramic shaft rods for <b>high-speed CNC spindles, pump shafts, and turbo-machinery</b>. 60% lighter than steel, hardness 78 HRC, zero magnetic signature, and lubricant-free capable. Standard Ø3–100mm; custom dimensions to OEM drawing.',
    stats: [
      { num: '±0.01mm', lbl: 'Ground Tolerance' },
      { num: 'HRC 78', lbl: 'Hardness' },
      { num: '60%', lbl: 'Lighter than Steel' },
      { num: 'Non-magnetic', lbl: 'Zero Mag. Sig.' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Si₃N₄ Shaft Rods · At a Glance',
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Density', v: '3.2 g/cm³' },
      { k: 'Hardness', v: 'HRC 78' },
      { k: 'Diameter', v: 'Ø 3–100mm' },
      { k: 'Tolerance', v: '±0.01mm ground' },
      { k: 'Magnetic', v: 'Non-magnetic' },
      { k: 'Sample Lead Time', v: '14 d' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Size Ranges',
      headingHtml: 'Three shaft rod <span class="accent">diameter ranges</span>.',
      lead: 'All three ranges share the same Si₃N₄ material. Choose based on your bore diameter and bearing interface requirement.',
      columns: 3,
      items: [
        {
          model: 'Small Diameter',
          subtitle: 'Ø 3–20 mm · precision class',
          badge: '★ Highest Volume',
          featured: true,
          headGradient: true,
          imageIcon: '🔩',
          imageLabel: 'Small diameter shaft — close-up',
          rows: [
            { k: 'Diameter', v: 'Ø 3–20', unit: 'mm' },
            { k: 'Tolerance', v: '±0.01', unit: 'mm', hot: true },
            { k: 'Surface Finish', v: 'Ra ≤0.2', unit: 'µm' },
            { k: 'Straightness', v: '≤0.01/100', unit: 'mm' },
            { k: 'Hardness', v: 'HRC 78' },
          ],
          foot: '<b>Use:</b> CNC spindle shafts · dental turbines · precision instruments',
        },
        {
          model: 'Medium Diameter',
          subtitle: 'Ø 20–50 mm · industrial class',
          imageIcon: '⚙️',
          imageLabel: 'Medium diameter shaft',
          rows: [
            { k: 'Diameter', v: 'Ø 20–50', unit: 'mm' },
            { k: 'Tolerance', v: '±0.02', unit: 'mm' },
            { k: 'Surface Finish', v: 'Ra ≤0.4', unit: 'µm' },
            { k: 'Straightness', v: '≤0.02/100', unit: 'mm' },
            { k: 'Hardness', v: 'HRC 78' },
          ],
          foot: '<b>Use:</b> Pump shafts · compressor shafts · chemical equipment',
        },
        {
          model: 'Large Diameter',
          subtitle: 'Ø 50–100 mm · heavy duty',
          imageIcon: '🏭',
          imageLabel: 'Large diameter shaft',
          rows: [
            { k: 'Diameter', v: 'Ø 50–100', unit: 'mm' },
            { k: 'Tolerance', v: '±0.05', unit: 'mm' },
            { k: 'Surface Finish', v: 'Ra ≤0.8', unit: 'µm' },
            { k: 'Length', v: 'Up to 600', unit: 'mm' },
            { k: 'Application', v: 'Turbo-machinery' },
          ],
          foot: '<b>Use:</b> Turbo-machinery · large pump shafts · custom structural',
        },
      ],
      footnote:
        'All Si₃N₄ shaft rods: density 3.2 g/cm³ · non-magnetic · lubricant-free · operating temp −40 to +800°C.',
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
        'Request a quote for <span class="accent">Si₃N₄ shaft rods</span>.',
      lead: 'Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.',
      quoteNote: 'Specify diameter (OD), length, tolerance, and annual volume.',
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
          q: 'Why Si₃N₄ over steel for shaft rods?',
          a: 'Si₃N₄ is 60% lighter than steel, has zero magnetic signature, and can run lubricant-free. At high speeds (>40,000 RPM), the lighter shaft reduces centrifugal loads on bearings by 60%, extending bearing life 3× or more.',
        },
        {
          q: 'What is the tightest tolerance?',
          a: 'Ground ceramic: ±0.01mm on diameter and straightness. Ra ≤0.2µm surface finish on precision class. CMM inspection report with every production shipment.',
        },
        {
          q: 'Can you match my existing steel shaft OD and length?',
          a: 'Yes — send drawing (STEP/DWG) or just specify OD, length, and tolerance. We confirm material capability and quote within 48 hours.',
        },
        {
          q: 'What is the minimum order quantity?',
          a: 'Prototypes: no MOQ (single-unit quotes available). Production: 50 units minimum for standard dimensions. Volume pricing from 500 units.',
        },
        {
          q: 'Operating temperature range?',
          a: 'Si₃N₄ shaft rods operate continuously to 800°C. Ambient range −40 to +85°C. Suitable for high-temperature furnace, autoclave, and process equipment applications.',
        },
        {
          q: 'Do you stock standard sizes?',
          a: 'Common OD sizes (Ø5, Ø6, Ø8, Ø10, Ø12, Ø16, Ø20mm) in lengths to 300mm are held in stock. Non-stock: 14-day lead time.',
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
          title: 'Ceramic Structural Parts',
          desc: 'All 12 sub-types: shafts, turbines, wear parts, seals, and custom machined components.',
          to: '/products/ceramic-structural',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Density, hardness, thermal shock resistance, and machinability of Si₃N₄ — the engineering data.',
          to: '/materials/silicon-nitride',
        },
        {
          eyebrow: 'Related Product',
          title: 'Precision Ceramic Bearings',
          desc: 'Full Si₃N₄ and hybrid ceramic bearings for high-speed spindles — paired with Si₃N₄ shaft rods.',
          to: '/products/precision-bearings',
        },
      ],
    },
  ],
}
