export default defineEventHandler(async (event) => {
  setCmsNoCache(event)
  const slug = getRouterParam(event, 'slug')
  if (!slug) throw createError({ statusCode: 400, message: 'Missing slug' })

  const supabase = useSupabasePublic()

  const { data, error } = await supabase
    .from('blog_posts')
    .select('*')
    .eq('slug', slug)
    .eq('published', true)
    .maybeSingle()

  if (error) throw createError({ statusCode: 500, message: error.message })
  if (!data) throw createError({ statusCode: 404, message: 'Article not found' })

  return {
    post: {
      slug: data.slug,
      title: data.title,
      excerpt: data.excerpt,
      category: data.category,
      date: data.date_label,
      readTime: data.read_time,
      featured: data.featured,
      tags: data.tags ?? [],
      cardIcon: data.card_icon,
      cardLabel: data.card_label,
      cardImgClass: data.card_img_class ?? '',
      cardStyle: data.card_style ?? undefined,
      heroSub: data.hero_sub ?? undefined,
      breadcrumbTitle: data.breadcrumb_title ?? undefined,
      author: data.author ?? undefined,
      heroCaption: data.hero_caption ?? undefined,
      heroIcon: data.hero_icon ?? undefined,
      heroLabel: data.hero_label ?? undefined,
      toc: data.toc ?? undefined,
      relatedSlugs: data.related_slugs ?? [],
      productLink: data.product_link ?? undefined,
      contentHtml: data.content_html,
    },
  }
})
