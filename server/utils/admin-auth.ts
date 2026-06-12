import type { H3Event } from 'h3'

export async function requireAdmin(event: H3Event) {
  const authHeader = getHeader(event, 'authorization')
  const token = authHeader?.replace(/^Bearer\s+/i, '')

  if (!token) {
    throw createError({ statusCode: 401, message: '未登录' })
  }

  const supabase = useSupabaseUser(token)
  const { data: { user }, error } = await supabase.auth.getUser(token)

  if (error || !user) {
    throw createError({ statusCode: 401, message: '登录已失效' })
  }

  const role = user.app_metadata?.role
  if (role !== 'admin') {
    throw createError({ statusCode: 403, message: '需要管理员权限' })
  }

  return { user, supabase }
}
