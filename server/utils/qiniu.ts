import { randomUUID } from 'node:crypto'
import { extname } from 'node:path'
import qiniu from 'qiniu'

export async function uploadBufferToQiniu(file: {
  data: Buffer
  filename: string
}): Promise<string> {
  const config = useRuntimeConfig()
  const accessKey = config.qiniuAccessKey
  const secretKey = config.qiniuSecretKey
  const bucket = config.qiniuBucket

  if (!accessKey || !secretKey || !bucket) {
    throw createError({
      statusCode: 500,
      message: '七牛云未配置（需要 QINIU_ACCESS_KEY / QINIU_SECRET_KEY / QINIU_BUCKET）',
    })
  }

  const ext = extname(file.filename).toLowerCase()
  const key = `uploads/${randomUUID()}${ext}`
  const mac = new qiniu.auth.digest.Mac(accessKey, secretKey)
  const putPolicy = new qiniu.rs.PutPolicy({ scope: `${bucket}:${key}` })
  const uploadToken = putPolicy.uploadToken(mac)

  const conf = new qiniu.conf.Config()
  const formUploader = new qiniu.form_up.FormUploader(conf)
  const putExtra = new qiniu.form_up.PutExtra()
  putExtra.fname = file.filename

  const result = await formUploader.put(uploadToken, key, file.data, putExtra)
  const statusCode = result?.resp?.statusCode

  if (statusCode !== 200) {
    console.error('Qiniu upload failed', statusCode, result?.data)
    throw createError({ statusCode: 502, message: '七牛云上传失败' })
  }

  // 数据库存相对路径，前台再拼 CDN 域名
  return `/${key}`
}
