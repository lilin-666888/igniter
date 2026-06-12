export default defineEventHandler(async (event) => {
  const body = await readBody(event)

  if (!body?.name?.trim() || !body?.email?.trim()) {
    throw createError({ statusCode: 400, message: '姓名和邮箱为必填项' })
  }

  // 服务端写入用 service role，避免 anon 仅有 INSERT 权、无法 RETURNING 的 RLS 问题
  const supabase = useSupabaseAdmin()
  const { error } = await supabase.from('inquiries').insert({
    name: body.name.trim(),
    email: body.email.trim(),
    phone: body.phone?.trim() || null,
    message: body.message?.trim() || null,
    page_url: body.page_url || null,
    product_context: body.product_context || null,
    status: 'new',
  })

  if (error) {
    throw createError({ statusCode: 500, message: error.message })
  }

  return { ok: true }
})
