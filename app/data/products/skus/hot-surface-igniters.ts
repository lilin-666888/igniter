import type { ProductPage } from '../types'

export const hotSurfaceIgniters: ProductPage = {
  slug: 'hot-surface-igniters',
  pageType: 'sku',
  parent: { slug: 'ceramic-igniters', label: 'Ceramic Igniters' },
  seo: {
    title:
      'Hot Surface Igniters — Gas & Fuel HSI, Si₃N₄ Ceramic, UL/CE | Ceramitell',
    description:
      'BLK silicon nitride (Si₃N₄) hot surface igniters: 100K+ cycle life, 3-second heat-up, 12V/120V/230V variants. UL Recognized, CE marked. Drop-in replacement for Norton, White-Rodgers, Robertshaw. Free samples, 48h dispatch, datasheet download.',
    keywords:
      'silicon nitride igniter, Si3N4 igniter, BLK igniter, silicon nitride hot surface igniter, ceramic hot surface igniter, Norton igniter replacement, pellet stove igniter',
  },
  breadcrumb: [
    { label: 'Home', to: '/' },
    { label: 'Products', to: '/products' },
    { label: 'Ceramic Igniters', to: '/products/ceramic-igniters' },
    { label: 'Hot Surface Igniters' },
  ],
  hero: {
    eyebrow: 'Product · Ceramic Igniters — Hot Surface',
    title: 'Hot surface igniters,',
    titleHighlight: 'gas & fuel burning.',
    subtitle:
      'Ceramitell\'s hot surface igniter range for <b>gas appliances</b> (furnaces, water heaters, boilers, HVAC) and <b>fuel-burning equipment</b> (pellet stoves, oil heaters, biomass boilers). Si₃N₄ ceramic element, 3-second heat-up, 100,000+ cycle life. Drop-in replacement for major OEM part numbers.',
    stats: [
      { num: '100K+', lbl: 'Cycle Life' },
      { num: '3 sec', lbl: 'Heat-Up' },
      { num: 'Gas + Fuel', lbl: '2 Application Types' },
      { num: 'UL/CE', lbl: 'Certified' },
    ],
  },
  heroSide: 'spotlight',
  heroCtas: {
    primary: { label: 'Request a Quote →', href: '#quote' },
    secondary: { label: 'Download Datasheet ↓', href: '#downloads' },
  },
  spotlight: {
    tag: 'Hot Surface Igniters · At a Glance',
    rows: [
      { k: 'Element Material', v: 'Si₃N₄ (silicon nitride)' },
      { k: 'Ignition Type', v: 'Hot surface — resistive' },
      { k: 'Voltage Range', v: '12V DC · 120V AC · 230V AC' },
      { k: 'Surface Temp', v: '1,100–1,300°C' },
      { k: 'Heat-Up Time', v: '3 seconds' },
      { k: 'Cycle Life', v: '100,000+' },
      { k: 'Gas Variants', v: 'Gas HSI/120 · Gas HSI/230 · Gas HSI/12' },
      { k: 'Fuel Variants', v: 'Fuel HSI/230 · Fuel HSI/120 · Fuel HSI/OIL' },
      { k: 'Certifications', v: 'UL Recognized · CE Marked' },
      { k: 'Sample Lead Time', v: '48 h stock' },
    ],
  },
  sections: [
    {
      type: 'spec-grid',
      num: '01 · Product Specifications',
      headingHtml: '6 models — <span class="accent">gas & fuel variants</span>.',
      lead: 'Three Gas HSI variants (furnaces, water heaters, HVAC) and three Fuel HSI variants (pellet stoves, oil boilers, biomass). Same Si₃N₄ element core — different voltage and environmental rating.',
      columns: 3,
      items: [
        {
          model: 'Gas HSI / 120',
          subtitle: '120 V AC · North America',
          badge: '★ Gas · Most Popular',
          featured: true,
          headGradient: true,
          imageIcon: '🔥',
          imageLabel: 'Gas furnace / water heater — NA 120V',
          rows: [
            { k: 'Voltage', v: '120', unit: 'V AC', hot: true },
            { k: 'Power', v: '300', unit: 'W' },
            { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
            { k: 'Heat-Up', v: '3', unit: 'sec' },
            { k: 'Cycle Life', v: '100,000+' },
            { k: 'Certification', v: 'UL Recognized' },
          ],
          foot: '<b>Use:</b> Gas furnaces · HVAC rooftop units · NA tankless water heaters',
        },
        {
          model: 'Gas HSI / 230',
          subtitle: '230 V AC · Europe / International',
          imageIcon: '🔥',
          imageLabel: 'Gas furnace / boiler — EU 230V',
          rows: [
            { k: 'Voltage', v: '230', unit: 'V AC', hot: true },
            { k: 'Power', v: '300', unit: 'W' },
            { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
            { k: 'Heat-Up', v: '3', unit: 'sec' },
            { k: 'Cycle Life', v: '100,000+' },
            { k: 'Certification', v: 'CE Marked' },
          ],
          foot: '<b>Use:</b> EU gas furnaces · condensing boilers · EU water heaters · HVAC',
        },
        {
          model: 'Gas HSI / 12',
          subtitle: '12 V DC · Battery / Auxiliary',
          imageIcon: '🔋',
          imageLabel: '12V DC — portable / RV / auxiliary',
          rows: [
            { k: 'Voltage', v: '12', unit: 'V DC', hot: true },
            { k: 'Power', v: '50', unit: 'W' },
            { k: 'Surface Temp', v: '1,100', unit: '°C' },
            { k: 'Heat-Up', v: '4', unit: 'sec' },
            { k: 'Cycle Life', v: '100,000+' },
            { k: 'Application', v: 'Battery-powered' },
          ],
          foot: '<b>Use:</b> RV gas appliances · portable heaters · 12V auxiliary ignition circuits',
        },
        {
          model: 'Fuel HSI / 230',
          subtitle: '230 V AC · Pellet Stove EU',
          badge: '★ Fuel · Most Popular',
          featured: true,
          headGradient: true,
          imageIcon: '🌿',
          imageLabel: 'Wood pellet stove / biomass boiler — 230V EU',
          rows: [
            { k: 'Voltage', v: '230', unit: 'V AC', hot: true },
            { k: 'Power', v: '300', unit: 'W' },
            { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
            { k: 'Duty Cycle', v: '15,000–20,000', unit: 'cycles/season' },
            { k: 'Cycle Life', v: '100,000+' },
            { k: 'Certification', v: 'CE Marked' },
          ],
          foot: '<b>Use:</b> Wood pellet stoves · biomass boilers · EU market flagship',
        },
        {
          model: 'Fuel HSI / 120',
          subtitle: '120 V AC · Pellet Stove NA',
          imageIcon: '🌿',
          imageLabel: 'Pellet stove — 120V NA market',
          rows: [
            { k: 'Voltage', v: '120', unit: 'V AC', hot: true },
            { k: 'Power', v: '300', unit: 'W' },
            { k: 'Surface Temp', v: '1,100–1,300', unit: '°C' },
            { k: 'Duty Cycle', v: '15,000–20,000', unit: 'cycles/season' },
            { k: 'Cycle Life', v: '100,000+' },
            { k: 'Certification', v: 'UL Recognized' },
          ],
          foot: '<b>Use:</b> NA pellet stoves · agricultural biomass boilers',
        },
        {
          model: 'Fuel HSI / OIL',
          subtitle: '230 V AC · Oil & Kerosene',
          imageIcon: '🛢️',
          imageLabel: 'Oil-fired boiler / kerosene heater',
          rows: [
            { k: 'Voltage', v: '230', unit: 'V AC', hot: true },
            { k: 'Power', v: '300', unit: 'W' },
            { k: 'Surface Temp', v: '1,200–1,300', unit: '°C' },
            { k: 'Environment', v: 'Oil vapour resistant' },
            { k: 'Cycle Life', v: '80,000+' },
            { k: 'Certification', v: 'CE Marked' },
          ],
          foot: '<b>Use:</b> Domestic oil boilers · kerosene space heaters · fuel oil burners',
        },
      ],
      footnote:
        'All HSI models: Si₃N₄ element · insulation resistance ≥100 MΩ @ 500V DC · ambient range −40 to +85°C · custom voltage/geometry available at 500+ unit MOQ.',
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
          name: 'HSI Product Datasheet',
          meta: 'PDF · all 6 models · full specifications',
          btn: 'Download PDF →',
          to: '#quote',
        },
        {
          icon: '📐',
          name: 'Dimensional Drawings',
          meta: 'STEP · DWG · PDF · on request',
          btn: 'Request drawings →',
          to: '#quote',
        },
        {
          icon: '🛡️',
          name: 'Certification Files',
          meta: 'UL Recognition · CE DoC · ISO 9001',
          btn: 'Request scans →',
          to: '#quote',
        },
        {
          icon: '🔄',
          name: 'OEM Compatibility Guide',
          meta: 'Norton · White-Rodgers · Robertshaw',
          btn: 'Download guide →',
          to: '#quote',
        },
      ],
    },
    { type: 'casecta' },
    {
      type: 'cert-grid',
      num: '03 · Certifications & Compliance',
      headingHtml: 'Certified for <span class="accent">global markets</span>.',
      lead: 'All HSI models ship with a certificate of conformity. Full certification documentation available for OEM qualification programs.',
      items: [
        {
          mark: 'UL',
          scope:
            'UL Recognized Component under UL 60730-1 (automatic electrical controls for household use). Applies to Gas HSI/120, Fuel HSI/120. Documentation available for OEM controls qualification.',
          tag: 'North America',
        },
        {
          mark: 'CE',
          scope:
            'CE marked for European Union shipments. Declaration of Conformity provided with CE-marked models. Applies to Gas HSI/230, Gas HSI/12, Fuel HSI/230, Fuel HSI/OIL.',
          tag: 'European Union',
        },
        {
          mark: 'RoHS',
          scope:
            'RoHS and REACH compliant across all HSI models. Material declarations and substance declarations available for product compliance screening and registration.',
          tag: 'EU · Global',
        },
        {
          mark: 'ISO',
          scope:
            'Produced in an ISO 9001:2015 certified facility. Full lot traceability, incoming inspection records, and PPAP-level documentation for OEM qualification programs.',
          tag: 'Quality System',
        },
      ],
    },
    {
      type: 'quote',
      id: 'quote',
      num: '04 · Get a Quote',
      headingHtml:
        'Request samples for <span class="accent">your application</span>.',
      lead: 'Tell us your appliance model, current igniter part number, voltage, and annual volume. We reply within 24h with a quote and fitment confirmation.',
      quoteNote:
        'Include your appliance model or current igniter part number for fastest fitment confirmation.',
      why: [
        'Free samples, 48-hour dispatch on stock 120V/230V — no MOQ.',
        'Drop-in compatibility check — send part number, we confirm fit.',
        'OEM volume pricing from 5,000 units/year.',
        'UL + CE certified — both markets from one supplier.',
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
          q: 'What is the difference between Gas HSI and Fuel HSI?',
          a: 'The ceramic element and electrical construction are identical. The difference is the environmental and duty cycle rating. Gas HSI is rated for dry, clean indoor environments at 5–15 cycles/day. Fuel HSI is rated for condensate-rich, ash/particulate environments at 15,000–20,000 cycles/heating season. If in doubt, specify Fuel HSI — it handles both duty profiles.',
        },
        {
          q: 'Can HSI/120 and HSI/230 replace my existing Al₂O₃ igniter?',
          a: 'In most gas furnace and pellet stove applications, yes — the HSI is a direct mechanical and electrical drop-in for the common Al₂O₃ platforms (Norton, White-Rodgers, Robertshaw). Send your current part number and we confirm dimensions and wiring before shipping samples. Fitment confirmation in 24 hours.',
        },
        {
          q: 'Why does the Fuel HSI last so much longer than Al₂O₃ in pellet stoves?',
          a: 'Three material properties: (1) Si₃N₄ fracture toughness 6–7 MPa·m½ vs Al₂O₃ 3–4 MPa·m½ — thermal shock cracks propagate 2× slower. (2) Si₃N₄ thermal conductivity 20 W/m·K vs Al₂O₃ 3 W/m·K — heat dissipates faster, preventing local hot spots under ash deposits. (3) Si₃N₄ near-zero porosity — no moisture absorption, so no freeze-fracture from condensate.',
        },
        {
          q: 'What is the minimum order for OEM pricing?',
          a: 'Samples: no MOQ, 48-hour dispatch. Production pricing tiers start at 5,000 units/year. Custom voltage (277V, 480V, 24V DC) or custom geometry: 500-unit minimum order. Private-label (laser marking): 1,000 units minimum.',
        },
        {
          q: 'Are fuel igniters suitable for oil-fired boilers and kerosene heaters?',
          a: 'Yes — the Fuel HSI/OIL variant is specifically rated for oil vapour environments. It operates at 1,200–1,300°C surface temperature (slightly higher than standard pellet stove duty) to ensure reliable oil vapour ignition. Si₃N₄\'s chemical resistance to hydrocarbon deposits is superior to Al₂O₃ in oil burner applications.',
        },
        {
          q: 'Can you supply private-label igniters with our brand markings?',
          a: 'Yes — laser marking on the metal bracket and insulator collar at no additional cost on production orders of 1,000+ units. Custom packaging (branded box, polybag, label) available at 5,000+ units. Mutual NDA standard before any private-label project.',
        },
      ],
    },
    {
      type: 'related',
      num: '06 · Related',
      headingHtml: 'Explore <span class="accent">further</span>.',
      lead: 'See the flagship BLK detail page, the full igniter category, or a related application case.',
      items: [
        {
          eyebrow: 'Product · Flagship Detail',
          title: 'BLK Si₃N₄ Igniter',
          desc: 'Full specs, all 6 BLK voltage variants, OEM compatibility data, and datasheet download for our flagship Si₃N₄ igniter.',
          to: '/products/silicon-nitride-igniters-final',
        },
        {
          eyebrow: 'Product Category',
          title: 'Ceramic Igniters Overview',
          desc: 'All 5 igniter types — Si₃N₄, Universal HSI, Al₂O₃, SiC, and Glow Plugs — with sub-type lineup and spec comparison.',
          to: '/products/ceramic-igniters',
        },
        {
          eyebrow: 'Application Deep-Dive',
          title: 'Biomass & Pellet Stoves',
          desc: 'Full application guide — pellet stove ignition failure modes, Italian OEM case study data, and Si₃N₄ vs Al₂O₃ field comparison.',
          to: '/applications/sub-biomass-pellet-stoves',
        },
      ],
    },
  ],
}
