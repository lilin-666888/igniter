export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const supabase = useSupabasePublic()

  const { data, error } = await supabase
    .from('blog_posts')
    .select(`
      slug,
      title,
      excerpt,
      category,
      date_label,
      read_time,
      featured,
      tags,
      card_icon,
      card_label,
      card_img_class,
      card_style,
      hero_sub,
      breadcrumb_title,
      author,
      hero_caption,
      hero_icon,
      hero_label,
      toc,
      related_slugs,
      product_link,
      sort_order
    `)
    .eq('published', true)
    .order('sort_order')

  if (error) throw createError({ statusCode: 500, message: error.message })

  const posts = (data ?? []).map(row => ({
    slug: row.slug,
    title: row.title,
    excerpt: row.excerpt,
    category: row.category,
    date: row.date_label,
    readTime: row.read_time,
    featured: row.featured,
    tags: row.tags ?? [],
    cardIcon: row.card_icon,
    cardLabel: row.card_label,
    cardImgClass: row.card_img_class ?? '',
    cardStyle: row.card_style ?? undefined,
    heroSub: row.hero_sub ?? undefined,
    breadcrumbTitle: row.breadcrumb_title ?? undefined,
    author: row.author ?? undefined,
    heroCaption: row.hero_caption ?? undefined,
    heroIcon: row.hero_icon ?? undefined,
    heroLabel: row.hero_label ?? undefined,
    toc: row.toc ?? undefined,
    relatedSlugs: row.related_slugs ?? [],
    productLink: row.product_link ?? undefined,
    sortOrder: row.sort_order,
  }))

  return { posts }
})
