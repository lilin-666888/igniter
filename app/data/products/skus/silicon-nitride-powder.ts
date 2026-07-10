import type { ProductPage } from '../types'

export const siliconNitridePowder: ProductPage = {
  slug: 'silicon-nitride-powder',
  pageType: 'sku',
  parent: { slug: 'ceramic-powder', label: 'Superfine Ceramic Powder' },
  seo: {
    title: 'Silicon Nitride Powder | ≥99.5% Purity & Custom D50',
    description:
      'High-purity α/β-phase Si₃N₄ powder with custom D50 from 0.3–5µm, low oxygen content, for advanced ceramic manufacturing and composite reinforcement.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Superfine Ceramic Powder', to: '/products/ceramic-powder' },
    { label: 'Si₃N₄ Powder' },
  ],
  hero: {
    eyebrow: '★ Flagship · Superfine Ceramic Powder',
    title: 'Silicon nitride powder,',
    titleHighlight: 'purity ≥99.5%.',
    subtitle:
      'High-purity α/β-phase Si₃N₄ powder for <b>advanced ceramics sintering, thermal spray coatings, and composite reinforcement</b>. Purity ≥99.5%, low oxygen content for optimal sintering, D50 from 0.3µm. Batch-certified by XRF analysis.',
    stats: [
      { num: '≥99.5%', lbl: 'Purity' },
      { num: '0.3–5µm', lbl: 'D50 Range' },
      { num: 'α/β Phase', lbl: 'Certified' },
      { num: 'Research-Grade', lbl: 'Quality' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Si₃N₄ Powder · At a Glance',
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Purity', v: '≥99.5% (XRF)' },
      { k: 'Phase', v: 'α-phase >90% std.' },
      { k: 'D50 Range', v: '0.3–5µm custom' },
      { k: 'Oxygen Content', v: 'Low (sintering grade)' },
      { k: 'Batch Cert', v: 'XRF + PSD included' },
      { k: 'Sample', v: 'From 100g' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Powder Grades',
      headingHtml: 'Three Si₃N₄ powder <span class="accent">grades</span>.',
      lead: 'Standard, high-purity, and ultra-fine grades cover sintering, thermal spray, and R&D applications. Custom D50 and phase ratios available on request.',
      columns: 3,
      items: [
        {
          model: 'Standard Sintering Grade',
          subtitle: 'α >90% · D50 0.5–2µm',
          badge: '★ Most Common',
          featured: true,
          headGradient: true,
          imageIcon: '⚫',
          imageLabel: 'Standard grade — SEM view',
          rows: [
            { k: 'Purity', v: '≥99.5', unit: '%', hot: true },
            { k: 'Phase', v: 'α >90% α-Si₃N₄' },
            { k: 'D50', v: '0.5–2', unit: 'µm' },
            { k: 'D90', v: '<5', unit: 'µm' },
            { k: 'Oxygen', v: '≤1.5', unit: 'wt%' },
          ],
          foot: '<b>Use:</b> Structural ceramics sintering · pressing · green machining',
        },
        {
          model: 'High-Purity Grade',
          subtitle: 'α >95% · D50 0.3–1µm',
          imageIcon: '🔬',
          imageLabel: 'HP grade — particle analysis',
          rows: [
            { k: 'Purity', v: '≥99.8', unit: '%' },
            { k: 'Phase', v: 'α >95% α-Si₃N₄' },
            { k: 'D50', v: '0.3–1', unit: 'µm' },
            { k: 'D90', v: '<2', unit: 'µm' },
            { k: 'Oxygen', v: '≤0.8', unit: 'wt%' },
          ],
          foot: '<b>Use:</b> High-strength sintering · semiconductor tooling',
        },
        {
          model: 'Ultra-Fine Grade',
          subtitle: 'D50 <0.3µm · R&D',
          imageIcon: '📦',
          imageLabel: 'Ultra-fine — packaging',
          rows: [
            { k: 'Purity', v: '≥99.5', unit: '%' },
            { k: 'Phase', v: 'α/β custom' },
            { k: 'D50', v: '<0.3', unit: 'µm' },
            { k: 'BET', v: '≥12', unit: 'm²/g' },
            { k: 'Packaging', v: '100g–1kg' },
          ],
          foot: '<b>Use:</b> R&D · thermal spray · composite reinforcement',
        },
      ],
      footnote:
        'All Si₃N₄ powders: XRF purity cert · PSD report (D10/D50/D90) · SDS · lot traceability with every shipment.',
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
      headingHtml: 'Request a quote for <span class="accent">Si₃N₄ powder</span>.',
      lead: 'Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.',
      quoteNote:
        'Specify grade (standard/high-purity/ultra-fine), D50 target, phase ratio, and annual volume (kg/yr).',
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
          q: 'What phase ratio is standard?',
          a: 'Standard grade: α-phase >90%, with the balance as β-Si₃N₄. β-phase and custom α/β blend available — specify your sintering route and we recommend the right ratio.',
        },
        {
          q: 'Can you hit a specific D50 target?',
          a: 'Yes — jet milling and air classification to D50 ±10% of target. Specify D50 and D90 at order. Particle size distribution (laser diffraction) included with every shipment.',
        },
        {
          q: 'Minimum order quantity?',
          a: 'Sample: 100g–1kg, no charge for qualification. Production minimum: 5kg. Bulk pricing from 50kg. Scale-up without chemistry change — critical for R&D-to-production transition.',
        },
        {
          q: 'What is the oxygen content?',
          a: 'Standard grade: ≤1.5 wt% oxygen. High-purity grade: ≤0.8 wt%. Low oxygen is critical for achieving high green density and preventing oxide-phase formation during sintering.',
        },
        {
          q: 'What documentation is supplied?',
          a: 'Certificate of analysis (purity by XRF, PSD by laser diffraction, phase by XRD), SDS, and lot traceability standard. ICP-MS trace element analysis available for semiconductor-grade applications.',
        },
        {
          q: 'Can you supply with sintering aids pre-mixed?',
          a: 'Yes — Si₃N₄ powder with Y₂O₃, Al₂O₃, or MgO sintering additives pre-mixed and milled to specified ratios. Available with minimum order — specify additive type and wt%.',
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
          title: 'Superfine Ceramic Powder',
          desc: 'Si₃N₄ and ZrO₂ powder — full grade range and application comparison.',
          to: '/products/ceramic-powder',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Full material chemistry, sintering behaviour, and mechanical properties of Si₃N₄.',
          to: '/materials/silicon-nitride',
        },
        {
          eyebrow: 'Application',
          title: 'Clean Energy & Battery',
          desc: 'Advanced ceramics for battery manufacturing, fuel cell electrolytes, and energy applications.',
          to: '/applications/app-clean-energy',
        },
      ],
    },
  ],
}
