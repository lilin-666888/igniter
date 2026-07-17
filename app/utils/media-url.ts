/**
 * 将数据库中的相对图片路径拼成可访问的完整 URL。
 * - 已是 http(s) 绝对地址：原样返回
 * - 本地静态资源（/assets/...）：不拼 CDN
 * - 其余相对路径（如 /uploads/xxx.jpg）：拼上七牛图片域名
 */
export function resolveMediaUrl(src: string | null | undefined): string {
  if (!src?.trim()) return ''

  const path = src.trim()
  if (/^https?:\/\//i.test(path) || path.startsWith('data:')) return path
  if (path.startsWith('/assets/')) return path

  const config = useRuntimeConfig()
  const base = String(config.public.imageCdn || '').replace(/\/$/, '')
  if (!base) return path

  return `${base}${path.startsWith('/') ? path : `/${path}`}`
}

export function resolveMediaUrls(srcs: Array<string | null | undefined>): string[] {
  return srcs.map(resolveMediaUrl).filter(Boolean)
}
