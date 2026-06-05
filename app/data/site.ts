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
  hint?: string
}

export type NavLink = {
  label: string
  to: string
  children?: NavChild[]
}

export const navLinks: NavLink[] = [
  {
    label: 'Materials',
    to: '/materials',
    children: [
      { label: 'Silicon Nitride', to: '/materials/silicon-nitride', hint: 'Si₃N₄' },
      { label: 'Alumina', to: '/materials/alumina', hint: 'Al₂O₃' },
      { label: 'Zirconia', to: '/materials/zirconia', hint: 'ZrO₂' },
      { label: 'Silicon Carbide', to: '/materials/silicon-carbide', hint: 'SiC' },
      { label: 'Aluminum Nitride', to: '/materials/aluminum-nitride', hint: 'AlN' },
      { label: 'Boron Carbide', to: '/materials/boron-carbide', hint: 'B₄C' },
      { label: 'Boron Nitride', to: '/materials/boron-nitride', hint: 'BN' },
    ],
  },
  {
    label: 'Products',
    to: '/products',
    children: [
      { label: 'Ceramic Igniters', to: '/products/ceramic-igniters', hint: 'Flagship' },
      { label: 'Heaters & Elements', to: '/products/ceramic-heaters', hint: '5 types' },
      { label: 'Structural Parts', to: '/products/ceramic-structural', hint: '12 sub-types' },
      { label: 'Custom Components', to: '/products/custom-ceramic', hint: 'DFM' },
      { label: 'Ceramic Balls', to: '/products/ceramic-balls', hint: '0.4–100mm' },
      { label: 'Precision Bearings', to: '/products/precision-bearings', hint: 'P0–P5' },
      { label: 'Grinding Media', to: '/products/grinding-media', hint: 'Si₃N₄ + ZrO₂' },
      { label: 'Ceramic Powders', to: '/products/ceramic-powder', hint: '≥99.5%' },
    ],
  },
  {
    label: 'Applications',
    to: '/applications',
    children: [
      { label: 'Advanced Combustion & Ignition', to: '/applications/advanced-combustion-fixed', hint: '★ Flagship' },
      { label: 'Semiconductor & Electronics', to: '/applications/app-semiconductor', hint: 'AlN · Al₂O₃' },
      { label: 'Aerospace & Defense', to: '/applications/app-aerospace', hint: 'B₄C · Si₃N₄' },
      { label: 'Clean Energy & Battery', to: '/applications/app-clean-energy', hint: 'ZrO₂' },
      { label: 'Metallurgy & Foundry', to: '/applications/app-metallurgy', hint: '1600°C' },
      { label: 'Chemical Processing', to: '/applications/app-chemical-processing', hint: 'SiC · Al₂O₃' },
      { label: 'Laboratory Equipment', to: '/applications/app-laboratory', hint: 'Al₂O₃' },
      { label: 'Biology & Medicine', to: '/applications/app-biology-medicine', hint: 'ZrO₂' },
    ],
  },
  {
    label: 'Capabilities',
    to: '/capabilities',
    children: [
      { label: 'Vertical Integration', to: '/capabilities/vertical-integration', hint: 'Powder → Part' },
      { label: 'Rapid Prototyping', to: '/capabilities/rapid-prototyping', hint: '5–20 days' },
      { label: 'Quality Control', to: '/capabilities/quality-control', hint: 'ISO · IATF' },
      { label: 'Manufacturing Process', to: '/capabilities/manufacturing-process', hint: '4 stages' },
    ],
  },
  {
    label: 'About',
    to: '/about',
    children: [
      { label: 'About Ceramitell', to: '/about' },
      { label: 'Engineering Resources', to: '/resources' },
      { label: 'Contact Sales', to: '/contact' },
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
