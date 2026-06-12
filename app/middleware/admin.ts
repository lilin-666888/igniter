export default defineNuxtRouteMiddleware(async () => {
  if (import.meta.server) return

  const { $supabase } = useNuxtApp()
  const { data: { user } } = await $supabase.auth.getUser()

  if (!user) {
    return navigateTo('/admin/login')
  }

  const role = user.app_metadata?.role
  if (role !== 'admin') {
    await $supabase.auth.signOut()
    return navigateTo('/admin/login?error=forbidden')
  }
})
