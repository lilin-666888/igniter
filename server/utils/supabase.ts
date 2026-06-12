import { createClient, type SupabaseClient } from '@supabase/supabase-js'

export function useSupabaseAdmin(): SupabaseClient {
  const config = useRuntimeConfig()
  const key = config.supabaseSecretKey || config.supabaseKey
  return createClient(config.supabaseUrl, key)
}

export function useSupabasePublic(): SupabaseClient {
  const config = useRuntimeConfig()
  return createClient(config.supabaseUrl, config.supabaseKey)
}

export function useSupabaseUser(token: string): SupabaseClient {
  const config = useRuntimeConfig()
  return createClient(config.supabaseUrl, config.supabaseKey, {
    global: {
      headers: { Authorization: `Bearer ${token}` },
    },
  })
}
