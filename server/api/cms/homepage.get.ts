export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const supabase = useSupabasePublic()

  const [settingsRes, itemsRes, categoriesRes] = await Promise.all([
    supabase.from('site_settings').select('key, value').in('key', [
      'hero_stats',
      'spec_card_specs',
      'spotlight_stats',
      'quote_outcomes',
    ]),
    supabase
      .from('content_items')
      .select('section, sort_order, data, image_path')
      .in('section', [
        'entry_cards',
        'catalog_items',
        'testimonials',
        'resource_cards',
        'techman_cards',
        'contact_promises',
        'certifications',
      ])
      .eq('published', true)
      .order('sort_order'),
    supabase
      .from('product_categories')
      .select('*')
      .eq('published', true)
      .order('sort_order'),
  ])

  if (settingsRes.error) throw createError({ statusCode: 500, message: settingsRes.error.message })
  if (itemsRes.error) throw createError({ statusCode: 500, message: itemsRes.error.message })
  if (categoriesRes.error) throw createError({ statusCode: 500, message: categoriesRes.error.message })

  const settings: Record<string, unknown> = {}
  for (const row of settingsRes.data ?? []) {
    settings[row.key] = row.value
  }

  const sections: Record<string, unknown[]> = {}
  for (const item of itemsRes.data ?? []) {
    if (!sections[item.section]) sections[item.section] = []
    sections[item.section].push({
      ...item.data as object,
      image_path: item.image_path,
    })
  }

  const certifications = (sections.certifications ?? []).map(
    (c: { name?: string }) => c.name ?? '',
  )

  const catalogFromCategories = (categoriesRes.data ?? []).map(row => ({
    emoji: row.emoji,
    title: row.title,
    desc: row.description,
    meta: row.meta,
    href: row.href,
    image_path: row.image_path,
  }))

  return {
    heroStats: settings.hero_stats ?? [],
    specCardSpecs: settings.spec_card_specs ?? [],
    spotlightStats: settings.spotlight_stats ?? [],
    quoteOutcomes: settings.quote_outcomes ?? [],
    entryCards: sections.entry_cards ?? [],
    catalogItems: catalogFromCategories.length > 0
      ? catalogFromCategories
      : (sections.catalog_items ?? []),
    testimonials: sections.testimonials ?? [],
    resourceCards: sections.resource_cards ?? [],
    techmanCards: sections.techman_cards ?? [],
    contactPromises: sections.contact_promises ?? [],
    certifications,
    productCategories: categoriesRes.data ?? [],
  }
})
