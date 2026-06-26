import { blogCategories, type BlogCategory, type BlogPost } from '~/data/blog'

const cmsFetchOptions = {
  getCachedData: () => undefined,
}

export function useBlogList() {
  const route = useRoute()
  const { data, error, refresh, status } = useFetch<{ posts: BlogPost[] }>('/api/cms/blog', {
    key: 'cms-blog-list',
    ...cmsFetchOptions,
    watch: [() => route.fullPath],
  })

  const blogPosts = computed(() => data.value?.posts ?? [])
  const featuredPost = computed(() => blogPosts.value.find(post => post.featured) ?? blogPosts.value[0])

  function getBlogPost(slug: string) {
    return blogPosts.value.find(post => post.slug === slug)
  }

  function getRelatedPosts(slugs: string[]) {
    return slugs
      .map(slug => getBlogPost(slug))
      .filter((post): post is BlogPost => !!post)
  }

  return {
    blogCategories,
    blogPosts,
    featuredPost,
    getBlogPost,
    getRelatedPosts,
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success' && blogPosts.value.length > 0),
  }
}

export function useBlogPost(slug: MaybeRefOrGetter<string>) {
  const slugRef = computed(() => toValue(slug))
  const route = useRoute()

  const { data, error, refresh, status } = useFetch<{ post: BlogPost & { contentHtml: string } }>(
    () => `/api/cms/blog/${slugRef.value}`,
    {
      key: () => `cms-blog-${slugRef.value}`,
      ...cmsFetchOptions,
      watch: [() => route.fullPath, slugRef],
    },
  )

  const post = computed(() => data.value?.post)

  return {
    post,
    error,
    status,
    refresh,
    loaded: computed(() => status.value === 'success' && !!post.value),
  }
}

export type { BlogCategory, BlogPost }
