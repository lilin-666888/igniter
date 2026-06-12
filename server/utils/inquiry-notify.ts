import { Resend } from 'resend'

export type InquiryPayload = {
  name: string
  email: string
  phone?: string | null
  message?: string | null
  page_url?: string | null
  product_context?: string | null
}

function escapeHtml(value: string) {
  return value
    .replace(/&/g, '&amp;')
    .replace(/</g, '&lt;')
    .replace(/>/g, '&gt;')
    .replace(/"/g, '&quot;')
}

function row(label: string, value: string | null | undefined) {
  if (!value?.trim()) return ''
  return `<tr><td style="padding:8px 12px;border:1px solid #e5e7eb;font-weight:600;color:#374151;width:140px;">${escapeHtml(label)}</td><td style="padding:8px 12px;border:1px solid #e5e7eb;color:#111827;">${escapeHtml(value)}</td></tr>`
}

function buildInquiryEmailHtml(inquiry: InquiryPayload) {
  const rows = [
    row('Name', inquiry.name),
    row('Email', inquiry.email),
    row('Phone', inquiry.phone),
    row('Page', inquiry.page_url),
    row('Product context', inquiry.product_context),
    row('Message', inquiry.message),
  ].filter(Boolean)

  return `
    <div style="font-family:Arial,sans-serif;max-width:640px;margin:0 auto;">
      <h2 style="color:#0a2647;margin:0 0 16px;">New website inquiry</h2>
      <p style="color:#4b5563;margin:0 0 20px;">A visitor submitted the quote form on your site.</p>
      <table style="border-collapse:collapse;width:100%;font-size:14px;">${rows.join('')}</table>
      <p style="color:#9ca3af;font-size:12px;margin-top:24px;">Ceramitell · automated notification</p>
    </div>
  `
}

export async function getInquiryNotifyEmail(): Promise<string | null> {
  const config = useRuntimeConfig()
  const contactInfo = await getSiteSetting<{ email?: string }>('contact_info')
  const email = contactInfo?.email?.trim() || config.adminEmail?.trim()
  return email || null
}

export async function sendInquiryNotification(inquiry: InquiryPayload) {
  const config = useRuntimeConfig()
  const apiKey = config.resendApiKey?.trim()
  const from = config.resendFrom?.trim() || 'onboarding@resend.dev'
  const to = await getInquiryNotifyEmail()

  if (!apiKey) {
    console.warn('[inquiry-notify] RESEND_API_KEY not configured, skip email')
    return
  }
  if (!to) {
    console.warn('[inquiry-notify] no notification email in contact_info or ADMIN_EMAIL')
    return
  }

  const resend = new Resend(apiKey)
  const { error } = await resend.emails.send({
    from,
    to,
    replyTo: inquiry.email,
    subject: `New inquiry from ${inquiry.name}`,
    html: buildInquiryEmailHtml(inquiry),
  })

  if (error) {
    throw new Error(error.message)
  }
}
