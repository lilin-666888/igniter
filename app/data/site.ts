export const topbarItems = [
  { dot: true, text: 'Free Samples · 48h Dispatch' },
  { text: 'OEM Manufacturer Since 2014' },
  { text: 'Reply Within 24h' },
]

export const contactInfo = {
  email: 'sales@ceramitell.com',
  phone: '+86 151 9017 9780',
  display: 'sales@ceramitell.com · +86 151 9017 9780',
}

export type NavChild = {
  label: string
  to: string
}

export type NavColumn = {
  title: string
  links: NavChild[]
}

export type NavLink = {
  label: string
  to: string
  columns?: NavColumn[]
}

export const navLinks: NavLink[] = [
  {
    label: 'Materials',
    to: '/materials',
    columns: [
      {
        title: 'Materials',
        links: [
          { label: 'Silicon Nitride', to: '/materials/silicon-nitride' },
          { label: 'Alumina', to: '/materials/alumina' },
          { label: 'Zirconia', to: '/materials/zirconia' },
          { label: 'Silicon Carbide', to: '/materials/silicon-carbide' },
        ],
      },
      {
        title: 'Specialty Materials',
        links: [
          { label: 'Aluminum Nitride', to: '/materials/aluminum-nitride' },
          { label: 'Boron Carbide', to: '/materials/boron-carbide' },
          { label: 'Boron Nitride', to: '/materials/boron-nitride' },
        ],
      },
    ],
  },
  {
    label: 'Products',
    to: '/products',
    columns: [
      {
        title: 'Ignition & Heating',
        links: [
          { label: 'Ceramic Igniters', to: '/products/ceramic-igniters' },
          { label: 'CN-300 Si₃N₄ Igniter', to: '/products/silicon-nitride-igniters-final' },
          { label: 'Ceramic Heaters & Elements', to: '/products/ceramic-heaters' },
          { label: 'Silicon Nitride Heaters', to: '/products/silicon-nitride-heaters' },
        ],
      },
      {
        title: 'Structural & Custom',
        links: [
          { label: 'Ceramic Structural Parts', to: '/products/ceramic-structural' },
          { label: 'Custom Ceramic Components', to: '/products/custom-ceramic' },
          { label: 'Silicon Nitride Shaft Rods', to: '/products/silicon-nitride-shaft-rod' },
          { label: 'Ceramic Balls', to: '/products/ceramic-balls' },
          { label: 'Silicon Nitride Balls', to: '/products/silicon-nitride-balls' },
        ],
      },
      {
        title: 'Bearings & Powder',
        links: [
          { label: 'Precision Ceramic Bearings', to: '/products/precision-bearings' },
          { label: 'Full Si₃N₄ Bearings', to: '/products/full-silicon-nitride-bearings' },
          { label: 'Grinding Media', to: '/products/grinding-media' },
          { label: 'Si₃N₄ Grinding Balls', to: '/products/silicon-nitride-grinding-balls' },
          { label: 'Ceramic Powder', to: '/products/ceramic-powder' },
          { label: 'Silicon Nitride Powder', to: '/products/silicon-nitride-powder' },
        ],
      },
    ],
  },
  {
    label: 'Applications',
    to: '/applications',
    columns: [
      {
        title: 'Industry Verticals',
        links: [
          { label: 'Advanced Combustion & Ignition', to: '/applications/advanced-combustion-fixed' },
          { label: 'Semiconductor & Electronics', to: '/applications/app-semiconductor' },
          { label: 'Aerospace & Defense', to: '/applications/app-aerospace' },
          { label: 'Clean Energy & Battery', to: '/applications/app-clean-energy' },
          { label: 'Metallurgy & Foundry', to: '/applications/app-metallurgy' },
          { label: 'Chemical Processing', to: '/applications/app-chemical-processing' },
          { label: 'Laboratory Equipment', to: '/applications/app-laboratory' },
          { label: 'Biology & Medicine', to: '/applications/app-biology-medicine' },
        ],
      },
      {
        title: 'Ignition Scenarios',
        links: [
          { label: 'BBQ & Outdoor Grills', to: '/applications/sub-bbq-grills' },
          { label: 'Commercial & Industrial Boilers', to: '/applications/sub-commercial-boilers' },
          { label: 'Residential Gas Appliances', to: '/applications/sub-gas-appliances' },
          { label: 'HVAC Ignition', to: '/applications/sub-hvac-ignition' },
          { label: 'Hydrogen Energy', to: '/applications/sub-hydrogen-energy' },
          { label: 'Ovens & Cooktops', to: '/applications/sub-ovens-cooktops' },
          { label: 'Water Heaters', to: '/applications/sub-water-heaters' },
        ],
      },
      {
        title: 'Semiconductor',
        links: [
          { label: 'Semiconductor Alumina', to: '/applications/sub-semiconductor-alumina' },
          { label: 'Semiconductor AlN Heaters', to: '/applications/sub-semiconductor-aln-heaters' },
          { label: 'Semiconductor AlN Substrates', to: '/applications/sub-semiconductor-aln-substrates' },
        ],
      },
    ],
  },
  {
    label: 'Capabilities',
    to: '/capabilities',
    columns: [
      {
        title: 'Manufacturing',
        links: [
          { label: 'Vertical Integration', to: '/capabilities/vertical-integration' },
          { label: 'Manufacturing Process', to: '/capabilities/manufacturing-process' },
        ],
      },
      {
        title: 'Development',
        links: [
          { label: 'Rapid Prototyping', to: '/capabilities/rapid-prototyping' },
        ],
      },
      {
        title: 'Quality',
        links: [
          { label: 'Quality Control', to: '/capabilities/quality-control' },
        ],
      },
    ],
  },
  {
    label: 'About',
    to: '/about',
    columns: [
      {
        title: 'Company',
        links: [
          { label: 'About Ceramitell', to: '/about' },
          { label: 'Contact Sales', to: '/contact' },
        ],
      },
      {
        title: 'Engineering Resources',
        links: [
          { label: 'All Resources', to: '/resources' },
          { label: 'Ceramic Grade Selection Guide', to: '/resources/ceramic-grade-selection-guide' },
          { label: 'Silicon Nitride vs Alumina', to: '/resources/silicon-nitride-vs-alumina' },
        ],
      },
      {
        title: 'Certifications',
        links: [
          { label: 'ISO 9001 Certification', to: '/resources/iso-9001-certification' },
        ],
      },
    ],
  },
]

export const footerColumns = [
  {
    title: 'Materials',
    links: [
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
      { label: 'Heating Elements', to: '/products#heating-elements' },
      { label: 'Structural Parts', to: '/products#structural' },
      { label: 'Balls & Bearings', to: '/products#balls-bearings' },
      { label: 'Grinding Media', to: '/products#grinding-media' },
      { label: 'Custom Parts', to: '/products#custom' },
    ],
  },
  {
    title: 'Company',
    links: [
      { label: 'About Ceramitell', to: '/about' },
      { label: 'Capabilities', to: '/capabilities' },
      { label: 'Engineering Resources', to: '/resources' },
      { label: 'Contact Sales', to: '/contact' },
    ],
  },
  {
    title: 'Reach Us',
    links: [
      { label: 'sales@ceramitell.com', to: 'mailto:sales@ceramitell.com' },
      { label: 'engineering@ceramitell.com', to: 'mailto:engineering@ceramitell.com' },
      { label: 'WhatsApp: +86 151 9017 9780' },
      { label: 'WeChat: ceramitell-sales' },
    ],
  },
]

export const footerLegal = ['Privacy', 'Terms', 'Sitemap']
