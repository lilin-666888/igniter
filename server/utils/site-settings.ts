export async function getSiteSetting<T = unknown>(key: string): Promise<T | null> {
  const supabase = useSupabaseAdmin()
  const { data, error } = await supabase
    .from('site_settings')
    .select('value')
    .eq('key', key)
    .maybeSingle()

  if (error) throw error
  return (data?.value as T) ?? null
}
