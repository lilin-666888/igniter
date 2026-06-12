import {
  contactInfo as fallbackContact,
  footerColumns as fallbackFooterColumns,
  footerLegal as fallbackFooterLegal,
  navLinks as fallbackNavLinks,
  topbarItems as fallbackTopbar,
} from '~/data/site'
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

export function useSiteCms() {
  const { data, error } = useFetch<Record<string, unknown>>('/api/cms/site', {
    key: 'cms-site',
    default: () => ({}),
  })

  const contactInfo = computed(() =>
  (data.value?.contact_info as typeof fallbackContact) ?? fallbackContact,
  )
  const topbarItems = computed(() =>
    (data.value?.topbar_items as typeof fallbackTopbar) ?? fallbackTopbar,
  )
  const navLinks = computed(() =>
    (data.value?.nav_links as typeof fallbackNavLinks) ?? fallbackNavLinks,
  )
  const footerColumns = computed(() =>
    (data.value?.footer_columns as typeof fallbackFooterColumns) ?? fallbackFooterColumns,
  )
  const footerLegal = computed(() =>
    (data.value?.footer_legal as typeof fallbackFooterLegal) ?? fallbackFooterLegal,
  )

  return {
    contactInfo,
    topbarItems,
    navLinks,
    footerColumns,
    footerLegal,
    error,
    loaded: computed(() => !error.value && Object.keys(data.value ?? {}).length > 0),
  }
}

export function useHomepageCms() {
  const { data, error } = useFetch('/api/cms/homepage', {
    key: 'cms-homepage',
    default: () => null,
  })

  const heroStats = computed(() => data.value?.heroStats ?? fallbackHeroStats)
  const specCardSpecs = computed(() => data.value?.specCardSpecs ?? fallbackSpecs)
  const spotlightStats = computed(() => data.value?.spotlightStats ?? fallbackSpotlight)
  const quoteOutcomes = computed(() => data.value?.quoteOutcomes ?? fallbackQuote)
  const entryCards = computed(() => data.value?.entryCards ?? fallbackEntry)
  const catalogItems = computed(() => data.value?.catalogItems ?? fallbackCatalog)
  const testimonials = computed(() => data.value?.testimonials ?? fallbackTestimonials)
  const resourceCards = computed(() => data.value?.resourceCards ?? fallbackResources)
  const techmanCards = computed(() => data.value?.techmanCards ?? fallbackTechman)
  const contactPromises = computed(() => data.value?.contactPromises ?? fallbackPromises)
  const certifications = computed(() => data.value?.certifications ?? fallbackCerts)

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
    loaded: computed(() => !!data.value && !error.value),
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
