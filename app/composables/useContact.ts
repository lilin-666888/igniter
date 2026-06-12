import { contactInfo as fallbackContact } from '~/data/site'

export type ContactInfo = typeof fallbackContact

function mergeContact(raw: Partial<ContactInfo>): ContactInfo {
  return { ...fallbackContact, ...raw }
}

export function useContact() {
  const { contactInfo } = useSiteCms()
  const info = computed(() => mergeContact(contactInfo.value as Partial<ContactInfo>))

  const email = computed(() => info.value.email)
  const phone = computed(() => info.value.phone)
  // 顶栏展示由邮箱+电话实时拼接，避免 DB 里 display 字段未同步
  const topbarDisplay = computed(() => `${info.value.email} · ${info.value.phone}`)
  const display = topbarDisplay
  const engineeringEmail = computed(() => info.value.engineering_email)
  const wechat = computed(() => info.value.wechat)
  const linkedin = computed(() => info.value.linkedin)
  const address = computed(() => info.value.address)
  const factory = computed(() => info.value.factory)
  const businessHours = computed(() => info.value.business_hours)
  const whatsappUrl = computed(() => {
    const digits = phone.value.replace(/\D/g, '')
    return digits ? `https://wa.me/${digits}` : ''
  })

  return {
    info,
    email,
    phone,
    display,
    topbarDisplay,
    engineeringEmail,
    wechat,
    linkedin,
    address,
    factory,
    businessHours,
    whatsappUrl,
  }
}
