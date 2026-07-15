import type { ProductPage } from '../types'

export const fullSiliconNitrideBearings: ProductPage = {
  slug: 'full-silicon-nitride-bearings',
  pageType: 'sku',
  parent: { slug: 'precision-bearings', label: 'Precision Ceramic Bearings' },
  seo: {
    title: 'Full Silicon Nitride Bearings | Extreme Environment Use',
    description:
      'Full Si₃N₄ ceramic bearings with P0–P5 precision and Ø3–200mm bores for high-temperature, corrosive, magnetically sensitive, and lubrication-free applications.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Precision Ceramic Bearings', to: '/products/precision-bearings' },
    { label: 'Full Si₃N₄ Bearings' },
  ],
  hero: {
    eyebrow: '★ Flagship · Precision Ceramic Bearings',
    title: 'Full silicon nitride bearings,',
    titleHighlight: 'P0 to P5.',
    subtitle:
      'Rings and balls both in Si₃N₄ — the highest-performance ceramic bearing for <b>high-temperature, corrosive, magnetically sensitive, and lubrication-free applications</b>. Precision P0 to P5, bore Ø3–200mm. Wind turbines, CNC spindles, aerospace gyroscopes.',
    stats: [
      { num: 'P0–P5', lbl: 'Precision Class' },
      { num: 'Ø 3–200mm', lbl: 'Bore Range' },
      { num: '800°C', lbl: 'Max Temperature' },
      { num: 'Non-magnetic', lbl: 'Zero Mag. Sig.' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Full Si₃N₄ Bearings · At a Glance',
    rows: [
      { k: 'Material', v: 'Full Si₃N₄' },
      { k: 'Type', v: 'Full ceramic' },
      { k: 'Precision', v: 'P0–P5' },
      { k: 'Bore Range', v: 'Ø 3–200mm' },
      { k: 'Max Temp', v: '800°C continuous' },
      { k: 'Lubrication', v: 'Not required' },
      { k: 'Sample Lead Time', v: '2–4 weeks' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Bearing Series',
      headingHtml: 'Three standard <span class="accent">series available</span>.',
      lead: '6xxx deep groove and 7xxx angular contact are the most common. Cylindrical and custom geometries available to drawing.',
      columns: 3,
      items: [
        {
          model: 'Deep Groove · 6xxx Series',
          subtitle: 'P0–P5 · Ø 3–200mm',
          badge: '★ Most Stocked',
          featured: true,
          headGradient: true,
          imageIcon: '🔵',
          imageLabel: '6xxx deep groove — outer ring',
          rows: [
            { k: 'Series', v: '6xxx · deep groove' },
            { k: 'Bore Range', v: 'Ø 3–200', unit: 'mm' },
            { k: 'Precision', v: 'P0–P5', hot: true },
            { k: 'Max Speed', v: '100K+', unit: 'RPM' },
            { k: 'Temp Range', v: '−40 to +800', unit: '°C' },
          ],
          foot: '<b>Use:</b> General precision · pumps · medical equipment',
        },
        {
          model: 'Angular Contact · 7xxx Series',
          subtitle: 'P2–P5 · high-speed',
          imageIcon: '⚙️',
          imageLabel: '7xxx angular contact — assembly',
          rows: [
            { k: 'Series', v: '7xxx · angular contact' },
            { k: 'Bore Range', v: 'Ø 5–150', unit: 'mm' },
            { k: 'Precision', v: 'P2–P5' },
            { k: 'Contact Angle', v: '15° / 25°' },
            { k: 'Preload', v: 'Light / Medium' },
          ],
          foot: '<b>Use:</b> CNC spindles · turbines · high-speed precision',
        },
        {
          model: 'Cylindrical Roller · NJ / NF',
          subtitle: 'High radial load',
          imageIcon: '🏭',
          imageLabel: 'Cylindrical roller — cross-section',
          rows: [
            { k: 'Series', v: 'NJ · NF · N' },
            { k: 'Bore Range', v: 'Ø 10–200', unit: 'mm' },
            { k: 'Load', v: 'High radial' },
            { k: 'Temperature', v: 'Up to 800', unit: '°C' },
            { k: 'Application', v: 'Pump shafts' },
          ],
          foot: '<b>Use:</b> High-load pump shafts · industrial machinery',
        },
      ],
      footnote:
        'All full Si₃N₄ bearings: non-magnetic · lubrication-free capable · corrosion-resistant · operating to 800°C continuous.',
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
        'Request a quote for <span class="accent">full Si₃N₄ bearings</span>.',
      lead: 'Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.',
      quoteNote:
        'Specify bore, OD, width (or series/size code), precision class, and annual volume.',
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
          q: 'What precision class do I need?',
          a: 'P0 for general industrial; P6 for machine tool spindles; P5/P4 for high-speed CNC; P2 for gyroscopes and precision instruments. Send RPM and bore — we\'ll recommend.',
        },
        {
          q: 'Full ceramic vs hybrid — which is better?',
          a: 'Full ceramic (Si₃N₄ rings + balls): for high temperature, corrosive media, magnetic sensitivity, or lubrication-free. Hybrid (steel rings + Si₃N₄ balls): lower cost, high speed, clean environments.',
        },
        {
          q: 'Do full Si₃N₄ bearings really run lubrication-free?',
          a: 'Yes — Si₃N₄ has self-lubricating properties at the contact interface. Running without grease is validated in vacuum, clean room, and food-safe applications. Speed and load limits apply.',
        },
        {
          q: 'What is the lead time for non-standard sizes?',
          a: 'Standard 6xxx/7xxx series in P0/P5: 2–4 weeks. Precision P2/P4 class: 4–8 weeks. Custom bore/OD/width: 8–12 weeks.',
        },
        {
          q: 'Suitable for MRI-compatible equipment?',
          a: 'Yes — Si₃N₄ has zero magnetic permeability. Full Si₃N₄ bearings are used in MRI-compatible surgical robots and navigation instruments where steel bearings are prohibited.',
        },
        {
          q: 'What documentation is included?',
          a: 'Material cert, dimensional report, and bearing accuracy class cert standard. PPAP, first-article, and SPC data for OEM qualification programs.',
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
          title: 'Precision Ceramic Bearings',
          desc: 'All four bearing types: Full Si₃N₄, Full ZrO₂, Si₃N₄ Hybrid, ZrO₂ Hybrid.',
          to: '/products/precision-bearings',
        },
        {
          eyebrow: 'Related Product',
          title: 'Si₃N₄ Ceramic Balls',
          desc: 'Bearing balls for the full Si₃N₄ bearing — G3 to G16, all standard sizes.',
          to: '/products/silicon-nitride-balls',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Why Si₃N₄ outperforms steel and alumina in bearing applications.',
          to: '/materials/silicon-nitride',
        },
      ],
    },
  ],
}
