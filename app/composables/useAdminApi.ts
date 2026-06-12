export function useAdminApi() {
  const { $supabase } = useNuxtApp()

  async function getToken() {
    const { data: { session } } = await $supabase.auth.getSession()
    if (!session?.access_token) {
      throw new Error('未登录')
    }
    return session.access_token
  }

  async function adminFetch<T>(url: string, options: Parameters<typeof $fetch<T>>[1] = {}) {
    const token = await getToken()
    return $fetch<T>(url, {
      ...options,
      headers: {
        ...(options.headers as Record<string, string> | undefined),
        Authorization: `Bearer ${token}`,
      },
    })
  }

  async function uploadImage(file: File) {
    const token = await getToken()
    const form = new FormData()
    form.append('file', file)
    return $fetch<{ path: string }>('/api/admin/upload', {
      method: 'POST',
      body: form,
      headers: { Authorization: `Bearer ${token}` },
    })
  }

  return { adminFetch, uploadImage, getToken }
}
