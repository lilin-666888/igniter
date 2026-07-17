// https://nuxt.com/docs/api/configuration/nuxt-config
export default defineNuxtConfig({
  compatibilityDate: '2025-07-15',
  devtools: { enabled: true },
  modules: ['@nuxt/eslint', '@ant-design-vue/nuxt'],
  antd: {
    extractStyle: true,
  },
  css: [
    'ant-design-vue/dist/reset.css',
    '~/assets/css/variables.css',
    '~/assets/css/chrome.css',
    '~/assets/css/page-hero.css',
    '~/assets/css/quote-form.css',
    '~/assets/css/product-pages.css',
  ],
  runtimeConfig: {
    supabaseUrl: process.env.SUPABASE_URL,
    supabaseKey: process.env.SUPABASE_KEY,
    supabaseSecretKey: process.env.SUPABASE_SECRET_KEY,
    resendApiKey: process.env.RESEND_API_KEY,
    resendFrom: process.env.RESEND_FROM,
    adminEmail: process.env.ADMIN_EMAIL,
    qiniuAccessKey: process.env.QINIU_ACCESS_KEY,
    qiniuSecretKey: process.env.QINIU_SECRET_KEY,
    qiniuBucket: process.env.QINIU_BUCKET,
    public: {
      supabaseUrl: process.env.SUPABASE_URL,
      supabaseKey: process.env.SUPABASE_KEY,
      imageCdn: process.env.NUXT_PUBLIC_IMAGE_CDN || 'https://file.ceramitell.com',
    },
  },
  app: {
    head: {
      link: [
        {
          rel: 'stylesheet',
          href: 'https://fonts.googleapis.com/css2?family=Barlow:wght@400;500;600;700;800;900&family=Barlow+Condensed:wght@500;600;700;800&family=IBM+Plex+Mono:wght@400;500&display=swap',
        },
      ],
    },
  },
})