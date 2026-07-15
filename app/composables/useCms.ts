import {
  footerColumns as fallbackFooterColumns,
  footerLegal as fallbackFooterLegal,
} from '~/data/site'
import type { NavLink } from '~/data/site'
import {
  catalogItems as fallbackCatalog,
  certifications as fallbackCerts,
  contactPromises as fallbackPromises,
  entryCards as fallbackEntry,
  heroStats as fallbackHeroStats,
  quoteOutcomes as fallbackQuote,
  resourceCards as fallbackResources,
  specCardSpecs as fallbackSpecs,
  spotlightStats as fallbackSpotlight,
  techmanCards as fallbackTechman,
  testimonials as fallbackTestimonials,
} from '~/data/homepage'

export type SiteContactInfo = {
  email?: string
  phone?: string
  display?: string
  engineering_email?: string
  wechat?: string
  linkedin?: string
  address?: string
  factory?: string
  business_hours?: string
}

type TopbarItem = { dot?: boolean; text: string }

const cmsFetchOptions = {
  // 不使用 Nuxt payload 缓存，每次进入前台页面都拉最新数据
  getCachedData: () => undefined,
}

export function useSiteCms() {
  const route = useRoute()
  const { data, error, refresh, status } = useFetch<Record<string, unknown>>('/api/cms/site', {
    key: 'cms-site',
    ...cmsFetchOptions,
    watch: [() => route.fullPath],
  })

  const contactInfo = computed(
    () => (data.value?.contact_info as SiteContactInfo | undefined) ?? {},
  )
  const topbarItems = computed(
    () => (data.value?.topbar_items as TopbarItem[] | undefined) ?? [],
  )
  const { data: productMenuData } = useFetch<{ navGroups: Array<{ label: string; to: string; links: Array<{ label: string; to: string }> }> }>(
    '/api/cms/product-menu',
    {
      key: 'cms-product-menu',
      ...cmsFetchOptions,
      watch: [() => route.fullPath],
    },
  )

  const navLinks = computed(() => {
    const base = (data.value?.nav_links as NavLink[] | undefined) ?? []
    const cmsGroups = productMenuData.value?.navGroups
    if (!cmsGroups?.length) return base

    return base.map((link) => {
      if (link.to !== '/products') return link
      return { ...link, groups: cmsGroups }
    })
  })
  // Footer temporarily uses site.ts only (not CMS API)
  const footerColumns = computed(() => fallbackFooterColumns)
  const footerLegal = computed(() => fallbackFooterLegal)

  return {
    contactInfo,
    topbarItems,
    navLinks,
    footerColumns,
    footerLegal,
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success' && Object.keys(data.value ?? {}).length > 0),
  }
}

export function useHomepageCms() {
  const route = useRoute()
  const { data, error, refresh, status } = useFetch('/api/cms/homepage', {
    key: 'cms-homepage',
    ...cmsFetchOptions,
    watch: [() => route.fullPath],
  })

  const useFallback = computed(() => !!error.value)

  const pick = <T>(key: keyof NonNullable<typeof data.value>, fallback: T) =>
    computed(() => (useFallback.value ? fallback : ((data.value?.[key] as T) ?? fallback)))

  const heroStats = pick('heroStats', fallbackHeroStats)
  const specCardSpecs = pick('specCardSpecs', fallbackSpecs)
  const spotlightStats = pick('spotlightStats', fallbackSpotlight)
  const quoteOutcomes = pick('quoteOutcomes', fallbackQuote)
  const entryCards = pick('entryCards', fallbackEntry)
  const catalogItems = pick('catalogItems', fallbackCatalog)
  const testimonials = pick('testimonials', fallbackTestimonials)
  const resourceCards = pick('resourceCards', fallbackResources)
  const techmanCards = pick('techmanCards', fallbackTechman)
  const contactPromises = pick('contactPromises', fallbackPromises)
  const certifications = pick('certifications', fallbackCerts)

  return {
    heroStats,
    specCardSpecs,
    spotlightStats,
    quoteOutcomes,
    entryCards,
    catalogItems,
    testimonials,
    resourceCards,
    techmanCards,
    contactPromises,
    certifications,
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success' && !!data.value),
  }
}

export async function submitInquiry(payload: {
  name: string
  email: string
  phone?: string
  message?: string
  product_context?: string
}) {
  return $fetch('/api/inquiries', {
    method: 'POST',
    body: {
      ...payload,
      page_url: import.meta.client ? window.location.pathname : undefined,
    },
  })
}
