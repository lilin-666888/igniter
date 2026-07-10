import type { ProductPage } from '../types'

export const siliconNitrideGrindingBalls: ProductPage = {
  slug: 'silicon-nitride-grinding-balls',
  pageType: 'sku',
  parent: { slug: 'grinding-media', label: 'Grinding Media' },
  seo: {
    title: 'Silicon Nitride Grinding Balls | Clean & Efficient Milling',
    description:
      'Si₃N₄ grinding balls offer higher milling efficiency, reduced wear, and zero contamination in battery slurries and ultra-high-purity ceramic powder production.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Grinding Media', to: '/products/grinding-media' },
    { label: 'Si₃N₄ Grinding Balls' },
  ],
  hero: {
    eyebrow: '★ Flagship · Ceramic Grinding Media',
    title: 'Silicon nitride grinding balls,',
    titleHighlight: 'zero contamination.',
    subtitle:
      'Si₃N₄ grinding balls for <b>hard mineral milling, battery electrode slurries, and ultra-high-purity ceramic powder production</b>. Hardness 78 HRC — outlasts alumina media 3–5×. Zero metal contamination critical for battery and electronics applications.',
    stats: [
      { num: '78 HRC', lbl: 'Hardness' },
      { num: '0.4–100mm', lbl: 'Bead Size' },
      { num: '3–5×', lbl: 'Longer than Al₂O₃' },
      { num: 'Zero', lbl: 'Metal Contamination' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Si₃N₄ Grinding Balls · At a Glance',
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Density', v: '3.2 g/cm³' },
      { k: 'Hardness', v: '78 HRC' },
      { k: 'Size Range', v: 'Ø 0.4–100mm' },
      { k: 'Contamination', v: 'Zero metal' },
      { k: 'Wear vs Al₂O₃', v: '3–5× lower' },
      { k: 'Sample Lead Time', v: '48 h' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Size Ranges',
      headingHtml: 'Three size <span class="accent">ranges for every mill</span>.',
      lead: 'Fine beads for high-energy attritor and bead mills; coarse balls for ball mills and rotary drums. All sizes: same Si₃N₄ composition, same zero-contamination performance.',
      columns: 3,
      items: [
        {
          model: 'Fine Beads',
          subtitle: 'Ø 0.4–1 mm · bead mill',
          badge: '★ Battery Applications',
          featured: true,
          headGradient: true,
          imageIcon: '⚫',
          imageLabel: 'Fine beads — macro photo',
          rows: [
            { k: 'Size', v: 'Ø 0.4–1', unit: 'mm' },
            { k: 'Hardness', v: '78', unit: 'HRC', hot: true },
            { k: 'Density', v: '3.2', unit: 'g/cm³' },
            { k: 'D50 Target', v: '<1', unit: 'µm' },
            { k: 'Application', v: 'Battery slurry' },
          ],
          foot: '<b>Use:</b> Battery cathode/anode · pigments · ultra-fine grinding',
        },
        {
          model: 'Medium Balls',
          subtitle: 'Ø 1–10 mm · versatile',
          imageIcon: '⚙️',
          imageLabel: 'Medium balls — jar mill',
          rows: [
            { k: 'Size', v: 'Ø 1–10', unit: 'mm' },
            { k: 'Hardness', v: '78', unit: 'HRC' },
            { k: 'Density', v: '3.2', unit: 'g/cm³' },
            { k: 'D50 Target', v: '1–50', unit: 'µm' },
            { k: 'Application', v: 'Ceramic powder' },
          ],
          foot: '<b>Use:</b> Ceramic powders · coatings · minerals',
        },
        {
          model: 'Coarse Balls',
          subtitle: 'Ø 10–100 mm · ball mill',
          imageIcon: '🏭',
          imageLabel: 'Coarse balls — drum mill',
          rows: [
            { k: 'Size', v: 'Ø 10–100', unit: 'mm' },
            { k: 'Hardness', v: '78', unit: 'HRC' },
            { k: 'Density', v: '3.2', unit: 'g/cm³' },
            { k: 'D50 Target', v: '50–500', unit: 'µm' },
            { k: 'Application', v: 'Hard minerals' },
          ],
          foot: '<b>Use:</b> Hard minerals · coarse ceramic grinding',
        },
      ],
      footnote:
        'All Si₃N₄ grinding balls: certified zero Fe contamination · batch-to-batch consistency · material cert with every shipment.',
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
        'Request a quote for <span class="accent">Si₃N₄ grinding balls</span>.',
      lead: 'Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.',
      quoteNote:
        'Specify bead size (mm), application (battery/pigment/mineral), and annual weight requirement (kg/yr).',
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
      softBg: true,
      items: [
        {
          q: 'Why Si₃N₄ for battery cathode milling?',
          a: 'Battery slurry requires zero Fe contamination — Si₃N₄ contributes no metal ions. Hardness 78 HRC means 3–5× lower wear than alumina, further reducing contamination risk and lowering media replacement frequency.',
        },
        {
          q: 'What size bead for my application?',
          a: 'Target D50 determines optimal bead size: D50 < 1µm → use ≤0.5mm beads. D50 1–10µm → 1–3mm beads. D50 > 10µm → 3–10mm. Send your feed D90 and target D50 — we\'ll recommend.',
        },
        {
          q: 'How do I calculate media charge?',
          a: 'Standard: 50–60% of mill volume. Si₃N₄ density 3.2 g/cm³ (lighter than ZrO₂ at 6.0 g/cm³) — adjust fill weight accordingly. We\'ll advise on your specific mill geometry.',
        },
        {
          q: 'Wear rate vs alumina and ZrO₂?',
          a: 'Si₃N₄ wear rate: 3–5× lower than alumina, 1.5–2× lower than ZrO₂ in hard abrasive slurries. Higher initial cost offset by longer replacement intervals and lower contamination.',
        },
        {
          q: 'What sample quantity is available?',
          a: 'No MOQ on samples: 100g to 1kg sample packs for mill trials. No charge for qualification samples. Sample charges credit against first production order.',
        },
        {
          q: 'What documentation is supplied?',
          a: 'Material certificate (XRF purity), SDS, and lot traceability with every shipment. Trace metal content cert for battery manufacturer qualification programs.',
        },
      ],
    },
    {
      type: 'related',
      num: '06 · Related',
      headingHtml: 'Explore <span class="accent">further</span>.',
      items: [
        {
          eyebrow: 'Product Category',
          title: 'Grinding Media',
          desc: 'Si₃N₄ and ZrO₂ grinding balls — full range comparison.',
          to: '/products/grinding-media',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Density, hardness, chemical resistance, and why Si₃N₄ outperforms alumina in grinding applications.',
          to: '/materials/silicon-nitride',
        },
        {
          eyebrow: 'Application',
          title: 'Clean Energy & Battery',
          desc: 'Battery cathode slurry milling, electrode processing, and the role of ceramic media.',
          to: '/applications/app-clean-energy',
        },
      ],
    },
  ],
}
