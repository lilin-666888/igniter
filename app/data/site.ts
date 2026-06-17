export const topbarItems = [
  { dot: true, text: 'Free Samples · 48h Dispatch' },
  { text: 'OEM Manufacturer Since 2014' },
  { text: 'Reply Within 24h' },
]

export const contactInfo = {
  email: 'sales@ceramitell.com',
  phone: '+86 151 9017 9780',
  display: 'sales@ceramitell.com · +86 151 9017 9780',
  engineering_email: 'engineering@ceramitell.com',
  wechat: '+86 151 9017 9780',
  linkedin: 'Ceramitell Industrial Ceramics',
  address: 'No.568, Tianyi Road,\nQingpu District, Shanghai 201712,\nChina',
  factory: 'Hangzhou, Zhejiang, China\n(~13 acres · 6,000+ m² building area · Visit by appointment)',
  business_hours: 'Mon–Fri 09:00–18:00 CST (UTC+8)\nSat by appointment',
}

export type NavChild = {
  label: string
  to: string
}

export type NavGroup = {
  label: string
  to?: string
  links: NavChild[]
}

export type NavLink = {
  label: string
  to: string
  groups?: NavGroup[]
}

export const navLinks: NavLink[] = [
  {
    label: 'Materials',
    to: '/materials',
    groups: [
      { label: 'Overview', to: '/materials', links: [] },
      { label: 'Silicon Nitride', to: '/materials/silicon-nitride', links: [] },
      { label: 'Alumina', to: '/materials/alumina', links: [] },
      { label: 'Zirconia', to: '/materials/zirconia', links: [] },
      { label: 'Silicon Carbide', to: '/materials/silicon-carbide', links: [] },
      { label: 'Boron Carbide', to: '/materials/boron-carbide', links: [] },
      { label: 'Aluminum Nitride', to: '/materials/aluminum-nitride', links: [] },
      { label: 'Boron Nitride', to: '/materials/boron-nitride', links: [] },
    ],
  },
  {
    label: 'Products',
    to: '/products',
    groups: [
      { label: 'Overview', to: '/products', links: [] },
      {
        label: 'Ceramic Igniters',
        to: '/products/ceramic-igniters',
        links: [
          { label: 'Silicon Nitride Igniters', to: '/products/silicon-nitride-igniters-final' },
          { label: 'Hot Surface Igniters', to: '/products/hot-surface-igniters' },
          // { label: 'Alumina Ceramic Igniters', to: '' },
          // { label: 'Silicon Carbide Igniters', to: '' },
          // { label: 'Silicon Nitride Glow Plugs', to: '' },
        ],
      },
      {
        label: 'Ceramic Heaters and Elements',
        to: '/products/ceramic-heaters',
        links: [
          { label: 'Silicon Nitride Heaters', to: '/products/silicon-nitride-heaters' },
          // { label: 'Silicon Nitride Heating Plates', to: '' },
          // { label: 'Silicon Carbide Heaters', to: '' },
          // { label: 'Alumina Ceramic Heaters', to: '' },
          // { label: 'Aluminum Nitride Heaters', to: '' },
        ],
      },
      {
        label: 'Ceramic Structural Parts',
        to: '/products/ceramic-structural',
        links: [
          { label: 'Silicon Nitride Shaft Rod', to: '/products/silicon-nitride-shaft-rod' },
          // { label: 'Silicon Nitride Lift Tube', to: '' },
          // { label: 'Silicon Nitride Turbine', to: '' },
          { label: 'Silicon Nitride Cutting Blade', to: '/products/ceramic-structural#cutting-blade' },
          // { label: 'Tubes, Rods & Plungers', to: '' },
          // { label: 'Spherical & Rotators', to: '' },
          // { label: 'Custom Machined Parts', to: '' },
          // { label: 'Fluid Control & Seals', to: '' },
          // { label: 'Plates, Discs & Substrates', to: '' },
          // { label: 'Wear-Resistant Parts', to: '' },
          // { label: 'Corrosion-Resistant Parts', to: '' },
          // { label: 'High-Temperature Parts', to: '' },
        ],
      },
      {
        label: 'Custom Ceramic Components',
        to: '/products/custom-ceramic',
        links: [
          // { label: 'DFM Service', to: '' },
          // { label: 'Drawing to Production Flow', to: '' },
          { label: 'Submit Drawing', to: '/contact' },
          // { label: 'Historical Cases', to: '' },
        ],
      },
      {
        label: 'Ceramic Balls',
        to: '/products/ceramic-balls',
        links: [
          { label: 'Silicon Nitride Balls', to: '/products/silicon-nitride-balls' },
          // { label: 'Zirconia Balls', to: '' },
          // { label: 'Grade Guide (G3–G60)', to: '' }, // 内容在 /products/ceramic-balls 页面内，无独立路由
        ],
      },
      {
        label: 'Precision Ceramic Bearings',
        to: '/products/precision-bearings',
        links: [
          { label: 'Full Silicon Nitride Bearings', to: '/products/full-silicon-nitride-bearings' },
          // { label: 'Full Zirconia Bearings', to: '' },
          // { label: 'Silicon Nitride Hybrid Ceramic Ball Bearings', to: '' },
          // { label: 'Zirconia Hybrid Ball Bearings', to: '' },
          // { label: 'Applications', to: '' }, // 应用场景
        ],
      },
      {
        label: 'Grinding Media',
        to: '/products/grinding-media',
        links: [
          { label: 'Silicon Nitride Grinding Balls', to: '/products/silicon-nitride-grinding-balls' },
          // { label: 'Zirconia Grinding Balls', to: '' },
          // { label: 'Applications', to: '' },
        ],
      },
      {
        label: 'Superfine Ceramic Powder',
        to: '/products/ceramic-powder',
        links: [
          { label: 'Silicon Nitride (Si₃N₄) Powder', to: '/products/silicon-nitride-powder' },
          // { label: 'Zirconia (ZrO₂) Powder', to: '' },
          // { label: 'Purity ≥99.5%', to: '' },
        ],
      },
    ],
  },
  {
    label: 'Applications',
    to: '/applications',
    groups: [
      {
        label: 'Overview',
        to: '/applications',
        links: [
        ],
      },
      {
        label: 'Advanced Combustion & Ignition',
        to: '/applications/advanced-combustion-fixed',
        links: [
          { label: 'Biomass & Pellet Stoves', to: '/applications/sub-biomass-pellet-stoves' },
          { label: 'BBQ Grills', to: '/applications/sub-bbq-grills' },
          { label: 'Residential Gas Appliances', to: '/applications/sub-gas-appliances' },
          { label: 'Commercial & Industrial Boilers', to: '/applications/sub-commercial-boilers' },
          { label: 'Water Heaters', to: '/applications/sub-water-heaters' },
          { label: 'HVAC', to: '/applications/sub-hvac-ignition' },
          { label: 'Ovens and Cooktops', to: '/applications/sub-ovens-cooktops' },
          { label: 'Hydrogen Energy', to: '/applications/sub-hydrogen-energy' },
        ],
      },
      {
        label: 'Semiconductor & Electronics',
        to: '/applications/app-semiconductor',
        links: [
          { label: 'Aluminum Nitride Heaters', to: '/applications/sub-semiconductor-aln-heaters' },
          { label: 'AlN Substrates', to: '/applications/sub-semiconductor-aln-substrates' },
          { label: 'High-Purity Al₂O₃', to: '/applications/sub-semiconductor-alumina' },
        ],
      },
      {
        label: 'Aerospace & Precision Machinery',
        to: '/applications/app-aerospace',
        links: [
          { label: 'Boron Carbide (B₄C)', to: '/materials/boron-carbide' },
          { label: 'Precision Bearings', to: '/products/precision-bearings' },
        ],
      },
      {
        label: 'Clean Energy & Battery',
        to: '/applications/app-clean-energy',
        links: [

        ],
      },
      {
        label: 'Metallurgy & Foundry',
        to: '/applications/app-metallurgy',
        links: [

        ],
      },
      {
        label: 'Chemical Processing',
        to: '/applications/app-chemical-processing',
        links: [

        ],
      },
      {
        label: 'Laboratory Equipment',
        to: '/applications/app-laboratory',
        links: [

        ],
      },
      {
        label: 'Biology & Medicine',
        to: '/applications/app-biology-medicine',
        links: [

        ],
      },
    ],
  },
  {
    label: 'Capabilities',
    to: '/capabilities',
    groups: [
      { label: 'Overview', to: '/capabilities', links: [] },
      {
        label: 'Vertical Integration',
        to: '/capabilities/vertical-integration',
        links: [],
      },
      {
        label: 'Rapid Prototyping',
        to: '/capabilities/rapid-prototyping',
        links: [],
      },
      {
        label: 'Quality Control',
        to: '/capabilities/quality-control',
        links: [],
      },
      {
        label: 'Manufacturing Process',
        to: '/capabilities/manufacturing-process',
        links: [],
      },
    ],
  },
  {
    label: 'About',
    to: '/about',
    groups: [
      { label: 'Overview', to: '/about', links: [] },
      {
        label: 'Manufacturing',
        to: '/about/manufacturing',
        links: [],
      },
      {
        label: 'Quality & Certifications',
        to: '/resources/iso-9001-certification',
        links: [],
      },
    ],
  },
]

export type FooterLink = {
  label: string
  to?: string
}

export const footerColumns = [
  {
    title: 'Materials',
    links: [
      { label: 'All Materials', to: '/materials' },
      { label: 'Silicon Nitride', to: '/materials/silicon-nitride' },
      { label: 'Alumina', to: '/materials/alumina' },
      { label: 'Zirconia', to: '/materials/zirconia' },
      { label: 'Silicon Carbide', to: '/materials/silicon-carbide' },
      { label: 'Aluminum Nitride', to: '/materials/aluminum-nitride' },
      { label: 'Boron Carbide', to: '/materials/boron-carbide' },
      { label: 'Boron Nitride', to: '/materials/boron-nitride' },
    ],
  },
  {
    title: 'Products',
    links: [
      { label: 'All Products', to: '/products' },
      { label: 'Ceramic Igniters', to: '/products/ceramic-igniters' },
      { label: 'Ceramic Heaters & Elements', to: '/products/ceramic-heaters' },
      { label: 'Structural Parts', to: '/products/ceramic-structural' },
      { label: 'Custom Components', to: '/products/custom-ceramic' },
      { label: 'Ceramic Balls', to: '/products/ceramic-balls' },
      { label: 'Precision Bearings', to: '/products/precision-bearings' },
      { label: 'Grinding Media', to: '/products/grinding-media' },
      { label: 'Ceramic Powder', to: '/products/ceramic-powder' },
    ],
  },
  {
    title: 'Applications',
    links: [
      { label: 'All Applications', to: '/applications' },
      { label: 'Advanced Combustion & Ignition', to: '/applications/advanced-combustion-fixed' },
      { label: 'Semiconductor & Electronics', to: '/applications/app-semiconductor' },
      { label: 'Aerospace & Precision Machinery', to: '/applications/app-aerospace' },
      { label: 'Clean Energy & Battery', to: '/applications/app-clean-energy' },
      { label: 'Metallurgy & Foundry', to: '/applications/app-metallurgy' },
      { label: 'Chemical Processing', to: '/applications/app-chemical-processing' },
      { label: 'Laboratory Equipment', to: '/applications/app-laboratory' },
      { label: 'Biology & Medicine', to: '/applications/app-biology-medicine' },
    ],
  },
  {
    title: 'Resources',
    links: [
      { label: 'All Resources', to: '/resources' },
      { label: 'Si₃N₄ vs Alumina', to: '/resources/silicon-nitride-vs-alumina' },
      { label: 'Grade Selection Guide', to: '/resources/ceramic-grade-selection-guide' },
      { label: 'Certifications & Quality', to: '/resources/iso-9001-certification' },
    ],
  },
  {
    title: 'Company',
    links: [
      { label: 'About Ceramitell', to: '/about' },
      { label: 'Manufacturing', to: '/about/manufacturing' },
      { label: 'Capabilities', to: '/capabilities' },
      { label: 'Vertical Integration', to: '/capabilities/vertical-integration' },
      { label: 'Rapid Prototyping', to: '/capabilities/rapid-prototyping' },
      { label: 'Quality Control', to: '/capabilities/quality-control' },
      { label: 'Manufacturing Process', to: '/capabilities/manufacturing-process' },
      { label: 'Contact Sales', to: '/contact' },
      { label: 'Blog', to: '/blog' },
    ],
  },
  {
    title: 'Reach Us',
    links: [
      { label: 'sales@ceramitell.com', to: 'mailto:sales@ceramitell.com' },
      { label: 'engineering@ceramitell.com', to: 'mailto:engineering@ceramitell.com' },
      { label: 'WhatsApp: +86 151 9017 9780', to: 'https://wa.me/8615190179780' },
      { label: 'WeChat: ceramitell-sales' },
    ],
  },
]

export const footerLegal: FooterLink[] = [
  { label: 'Privacy', to: '/about' },
  { label: 'Terms', to: '/about' },
  { label: 'Sitemap', to: '/resources' },
]
