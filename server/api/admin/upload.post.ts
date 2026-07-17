import { extname } from 'node:path'

const ALLOWED = new Set(['.jpg', '.jpeg', '.png', '.gif', '.webp', '.svg'])

export default defineEventHandler(async (event) => {
  await requireAdmin(event)

  const form = await readMultipartFormData(event)
  const file = form?.find(part => part.name === 'file' && part.data)

  if (!file?.data || !file.filename) {
    throw createError({ statusCode: 400, message: '请上传图片文件' })
  }

  const ext = extname(file.filename).toLowerCase()
  if (!ALLOWED.has(ext)) {
    throw createError({ statusCode: 400, message: '不支持的图片格式' })
  }

  const path = await uploadBufferToQiniu({
    data: file.data,
    filename: file.filename,
  })

  return { path }
})
