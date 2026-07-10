import type { ProductPage } from '../types'

export const siliconNitrideIgnitersFinal: ProductPage = {
  slug: 'silicon-nitride-igniters-final',
  pageType: 'sku',
  parent: { slug: 'ceramic-igniters', label: 'Ceramic Igniters' },
  seo: {
    title: 'Silicon Nitride Hot Surface Igniters | CN-300 Si₃N₄ Series',
    description:
      'CN-300 silicon nitride hot surface igniters with 100K+ cycle life, 3-second heat-up, and OEM replacements for pellet stoves, furnaces, and gas appliances.',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Igniters', to: '/products/ceramic-igniters' },
    { label: 'Silicon Nitride Igniters' },
  ],
  hero: {
    eyebrow: '★ Flagship Product · Si₃N₄ Hot Surface',
    title: 'BLK silicon nitride',
    titleHighlight: 'hot surface igniters.',
    subtitle:
      'Our highest-volume product line. A single Si₃N₄ heating core engineered for <b>100,000+ thermal cycles</b> and <b>3-second heat-up</b>, available in 12V, 120V, and 230V variants. UL Recognized and CE marked — a drop-in replacement for Norton, White-Rodgers, and Robertshaw hot surface igniters.',
    stats: [
      { num: '100K+', lbl: 'Cycle Life' },
      { num: '3 sec', lbl: 'Heat-Up to 1100°C' },
      { num: '3', lbl: 'Voltage Variants' },
      { num: 'UL/CE', lbl: 'Certified' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'BLK-HS Series · At a Glance',
    rows: [
      { k: 'Material', v: 'Si₃N₄' },
      { k: 'Heating Type', v: 'Hot Surface' },
      { k: 'Cycle Life', v: '100K+' },
      { k: 'Surface Temp', v: 'up to 1300°C' },
      { k: 'Voltage', v: '12 · 120 · 230V' },
      { k: 'Sample Lead Time', v: '48 h' },
      { k: 'MOQ (stock SKU)', v: 'None' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Product Specifications',
      headingHtml: 'BLK-HS series — <span class="accent">6 models</span>.',
      lead: 'All six models share the same Si₃N₄ heating core. They differ in voltage, mounting configuration, and lead-wire setup. Custom voltage and geometry available with a 5,000+ unit MOQ.',
      columns: 3,
      items: [
        {
          model: 'BLK-HS5-120 S',
          subtitle: '120 V · North America',
          badge: '★ Most Popular',
          featured: true,
          headGradient: true,
          imageSrc: '/assets/img/1.jpg',
          imageLabel: 'BLK-HS5-120 S igniter',
          rows: [
            { k: 'Rated Power', v: '300', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1300°C' },
            { k: 'Cold Resistance', v: '~48 Ω' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> NA residential gas appliances',
        },
        {
          model: 'BLK-HS5-220 S',
          subtitle: '230 V · Europe',
          imageSrc: '/assets/img/2.jpg',
          rows: [
            { k: 'Rated Power', v: '300', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1300°C' },
            { k: 'Cold Resistance', v: '~176 Ω' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> EU residential appliances',
        },
        {
          model: 'BLK-HS1-24 S',
          subtitle: '12 V · Low Voltage',
          imageSrc: '/assets/img/3.jpg',
          imageLabel: 'BLK-HS1-24 S igniter',
          rows: [
            { k: 'Rated Power', v: '50', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1100°C' },
            { k: 'Cold Resistance', v: '~2.4 Ω' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> Battery / 12V auxiliary',
        },
        {
          model: 'BLK-GC1',
          subtitle: 'Gas Stove · Threaded',
          imageSrc: '/assets/img/4.jpg',
          imageLabel: 'BLK-GC1 igniter',
          rows: [
            { k: 'Rated Power', v: '400', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1300°C' },
            { k: 'Cold Resistance', v: 'TBD' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> Gas stoves · threaded mount',
        },
        {
          model: 'BLK-HS3-24 S',
          subtitle: 'Flange Mount · 2-Hole',
          imageSrc: '/assets/img/5.jpg',
          imageLabel: 'BLK-HS3-24 S igniter',
          rows: [
            { k: 'Rated Power', v: '300', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1300°C' },
            { k: 'Cold Resistance', v: 'TBD' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> Industrial boilers · flange mount',
        },
        {
          model: 'BLK-HS2-24 S',
          subtitle: 'Flange Mount · 1-Hole',
          imageSrc: '/assets/img/6.jpg',
          imageLabel: 'BLK-HS2-24 S igniter',
          rows: [
            { k: 'Rated Power', v: '300', unit: 'W', hot: true },
            { k: 'Surface Temp', v: '1300°C' },
            { k: 'Cold Resistance', v: 'TBD' },
            { k: 'Heat-Up', v: '3', unit: 's' },
            { k: 'Cycle Life', v: '100K+' },
          ],
          foot: '<b>Use:</b> HVAC / water heaters',
        },
      ],
      footnote:
        'Shared across all models — Operating Temp Range: −40 to +85 °C · Insulation Resistance: ≥100 MΩ @ 500V DC · UL Recognized & CE marked.',
    },
    {
      type: 'downloads',
      id: 'downloads',
      num: '02 · Datasheet & Downloads',
      headingHtml: 'Drawings, datasheets, <span class="accent">and certs</span>.',
      lead: 'Everything your engineering and procurement teams need for spec-in and compliance review.',
      softBg: true,
      items: [
        {
          icon: '📄',
          name: 'BLK-HS Series Datasheet',
          meta: 'PDF · all 3 voltage variants · 4 pages',
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
          meta: 'UL Recognition · CE · RoHS · REACH',
          btn: 'Request scans →',
          to: '#quote',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'cert-grid',
      num: '03 · Certifications & Compliance',
      headingHtml: 'Certified for <span class="accent">NA & EU markets</span>.',
      lead: 'BLK ships into 42 export markets. Below is the certification scope for the standard series — custom-voltage variants outside approved configurations require additional certification testing, which we coordinate.',
      items: [
        {
          mark: 'UL',
          scope:
            'UL Recognized Component (Hot Surface Igniter). Recognition file and scans available on request.',
          tag: 'North America',
        },
        {
          mark: 'CE',
          scope:
            'CE marked for the European Union. Declaration of Conformity provided for EU shipments.',
          tag: 'European Union',
        },
        {
          mark: 'RoHS',
          scope:
            'RoHS and REACH compliant. Material declarations available for restricted-substance screening.',
          tag: 'EU · Global',
        },
        {
          mark: 'IATF',
          scope:
            'Produced in an IATF 16949 / ISO 9001 quality system. PPAP-level documentation on automotive programs.',
          tag: 'Quality System',
        },
      ],
    },
    {
      type: 'quote',
      id: 'quote',
      num: '04 · Get a Quote',
      headingHtml: 'Spec your <span class="accent">BLK igniter</span>.',
      lead: 'Send your part number, target voltage, or annual volume — our application team replies within one business day with a quote and matched datasheet.',
      quoteNote:
        'No MOQ for stock samples. NDA available for private-label projects.',
      why: [
        'Drop-in replacement: send a Norton / White-Rodgers / Robertshaw part number, we\'ll match it.',
        'Free samples, 48-hour dispatch on stock SKUs — no MOQ, sample charges credited to first order.',
        'Direct manufacturer: talk to engineers, not a sales desk — stable pricing at volume.',
        'Private-label laser marking free on production orders of 1,000+ units.',
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
          q: 'Can BLK replace Norton 271N / White-Rodgers / Robertshaw?',
          a: 'Yes — we routinely produce drop-in replacements. Send the part number and we\'ll match voltage, power, mounting, and lead config. UL/CE certified for North American and EU markets.',
        },
        {
          q: 'Which voltage variant do I need?',
          a: '12V for low-voltage / battery and automotive auxiliary; 120V for North American residential appliances; 230V for EU residential. If you\'re matching an existing igniter, send the part number and we\'ll confirm.',
        },
        {
          q: 'What\'s the MOQ and sample lead time?',
          a: 'Stock BLK SKUs: no MOQ, single-unit samples dispatch within 48 hours. Custom voltage/form factor: 5,000-unit production MOQ typical. Sample charges credit against the first production order.',
        },
        {
          q: 'Why Si₃N₄ over alumina (Al₂O₃)?',
          a: 'Si₃N₄ delivers far higher thermal-cycling life (100K+ vs typical alumina), better thermal-shock resistance, and lower cold-start failure. For high-duty appliances like pellet stoves, the warranty-return reduction usually pays for the material difference.',
        },
        {
          q: 'Do you offer private-label / OEM branding?',
          a: 'Yes — laser-marked branding on the metal flange or housing at no additional cost on production orders of 1,000+ units. Mutual NDA standard before private-label projects.',
        },
        {
          q: 'What\'s the warranty?',
          a: 'Standard warranty is 24 months from OEM installation against manufacturing defect. Extended warranty (36–48 months) available for OEM partnerships with annual volume commitments. Field failure analysis included.',
        },
      ],
    },
    {
      type: 'related',
      num: '06 · Related',
      headingHtml: 'Explore <span class="accent">the rest</span>.',
      lead: 'BLK is one of five igniter types. See the full category, dig into the Si₃N₄ material, or read the application case in depth.',
      items: [
        {
          eyebrow: 'Product Category',
          title: 'All Ceramic Igniters',
          desc: 'Compare all five igniter types — Universal Hot Surface, Alumina, SiC Hot Rod, and Glow Plug.',
          to: '/products/ceramic-igniters',
        },
        {
          eyebrow: 'Material',
          title: 'Silicon Nitride (Si₃N₄)',
          desc: 'Properties, grades, and why Si₃N₄ outperforms alumina in high-cycle thermal applications.',
          to: '/materials/silicon-nitride',
        },
        {
          eyebrow: 'Application',
          title: 'Biomass & Pellet Stoves',
          desc: 'The flagship BLK application — Italian OEM case, 180,000 units/year, −38% warranty returns.',
          to: '/applications/sub-biomass-pellet-stoves',
        },
      ],
    },
  ],
}
