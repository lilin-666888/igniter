import fs from 'fs'
import path from 'path'
import { fileURLToPath } from 'url'

const __dirname = path.dirname(fileURLToPath(import.meta.url))
const ROOT = path.join(__dirname, '..')
const SRC = path.join(ROOT, 'zgsjg')
const OUT = path.join(ROOT, 'app/pages')

const FOLDER_PREFIX = {
  Material: '/materials',
  'Product page': '/products',
  Application: '/applications',
  capabilities: '/capabilities',
  Resources: '/resources',
}

function cleanSlug(filename) {
  return filename
    .replace(/\.html$/i, '')
    .replace(/\s*\(\d+\)\s*$/, '')
    .trim()
    .toLowerCase()
    .replace(/\s+/g, '-')
}

function getRouteForFile(relPath) {
  const normalized = relPath.replace(/\\/g, '/')
  const basename = path.basename(normalized)
  const slug = cleanSlug(basename)

  if (basename === 'Homepage.html') return '/'
  if (normalized === 'about.html') return '/about'
  if (normalized === 'contact.html') return '/contact'

  const parts = normalized.split('/')
  if (parts.length === 1) {
    if (slug === 'homepage') return '/'
    return `/${slug}`
  }

  const folder = parts[0]
  const prefix = FOLDER_PREFIX[folder]
  if (!prefix) return `/${slug}`

  const indexNames = ['materials', 'products', 'applications', 'capabilities', 'resources']
  if (indexNames.includes(slug)) return prefix

  return `${prefix}/${slug}`
}

function buildRouteMap() {
  const map = new Map()
  function walk(dir, rel = '') {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const relPath = rel ? `${rel}/${entry.name}` : entry.name
      if (entry.isDirectory()) {
        walk(path.join(dir, entry.name), relPath)
      } else if (entry.name.endsWith('.html')) {
        map.set(relPath.replace(/\\/g, '/'), getRouteForFile(relPath))
        map.set(entry.name, getRouteForFile(relPath))
      }
    }
  }
  walk(SRC)
  map.set('index.html', '/')
  map.set('Homepage.html', '/')
  return map
}

const routeMap = buildRouteMap()

function resolveHtmlPath(href, sourceRel) {
  const clean = href.split('#')[0].split('?')[0]
  if (!clean || clean.startsWith('http') || clean.startsWith('mailto:') || clean.startsWith('tel:')) {
    return null
  }

  const sourceDir = path.dirname(sourceRel).replace(/\\/g, '/')
  let resolved
  if (clean.startsWith('/')) {
    resolved = clean.slice(1)
  } else if (sourceDir === '.') {
    resolved = clean
  } else {
    resolved = path.normalize(path.join(sourceDir, clean)).replace(/\\/g, '/')
  }

  // normalize folder aliases in links
  resolved = resolved
    .replace(/^materials\//, 'Material/')
    .replace(/^products\//, 'Product page/')
    .replace(/^applications\//, 'Application/')
    .replace(/^capabilities\//, 'capabilities/')
    .replace(/^resources\//, 'Resources/')

  return resolved
}

function rewriteHref(href, sourceRel) {
  if (!href) return href
  if (href.startsWith('http') || href.startsWith('mailto:') || href.startsWith('tel:') || href.startsWith('#')) {
    return href
  }

  const [rawPath, hash] = href.split('#')
  const resolved = resolveHtmlPath(rawPath, sourceRel)
  if (!resolved) return href

  const route = routeMap.get(resolved) || routeMap.get(path.basename(resolved))
  if (!route) {
    const slug = cleanSlug(path.basename(resolved))
    const folder = resolved.split('/')[0]
    const prefix = FOLDER_PREFIX[folder]
    if (prefix) return hash ? `${prefix}/${slug}#${hash}` : `${prefix}/${slug}`
    return hash ? `/${slug}#${hash}` : `/${slug}`
  }

  return hash ? `${route}#${hash}` : route
}

function rewriteLinks(html, sourceRel) {
  return html.replace(/href="([^"]*)"/g, (_, href) => `href="${rewriteHref(href, sourceRel)}"`)
}

function repairHtml(content) {
  return content
    .replace(
      /(<div class="res-meta">[\s\S]*?<span class="read">Read →<\/span>)<\/a>/g,
      '$1</div></a>',
    )
    .replace(/<br>/g, '<br />')
}

function extractMeta(html) {
  const title = html.match(/<title>([^<]*)<\/title>/i)?.[1]?.trim() || 'Ceramitell'
  const description =
    html.match(/<meta[^>]+name=["']description["'][^>]+content=["']([^"']*)["']/i)?.[1]
    || html.match(/<meta[^>]+content=["']([^"']*)["'][^>]+name=["']description["']/i)?.[1]
    || ''
  return { title, description }
}

function extractStyles(html) {
  const styles = []
  const re = /<style[^>]*>([\s\S]*?)<\/style>/gi
  let m
  while ((m = re.exec(html)) !== null) {
    styles.push(m[1].trim())
  }
  return styles.join('\n\n')
}

function extractInlineStyles(content) {
  const inlineStyles = []
  const cleaned = content.replace(/<style[^>]*>([\s\S]*?)<\/style>/gi, (_, css) => {
    inlineStyles.push(css.trim())
    return ''
  })
  return { content: cleaned.trim(), inlineStyles }
}

function extractBodyContent(html) {
  const bodyMatch = html.match(/<body[^>]*>([\s\S]*)<\/body>/i)
  if (!bodyMatch) return ''

  const body = bodyMatch[1]
  const navEnd = body.search(/<\/nav>/i)
  const footerStart = body.search(/<footer>/i)

  if (navEnd !== -1 && footerStart !== -1 && footerStart > navEnd) {
    return body.slice(navEnd + '</nav>'.length, footerStart).trim()
  }

  let content = body
  content = content.replace(/<div class="topbar">[\s\S]*?<\/div>\s*<\/div>\s*<\/div>\s*/i, '')
  content = content.replace(/<nav>[\s\S]*?<\/nav>\s*/i, '')
  content = content.replace(/<footer>[\s\S]*?<\/footer>\s*/i, '')
  return content.trim()
}

function escapeForTemplate(str) {
  return str.replace(/`/g, '\\`').replace(/\$\{/g, '\\${')
}

function toVuePage(relPath, html) {
  const { title, description } = extractMeta(html)
  const rawBody = extractBodyContent(html)
  const { content: bodyContent, inlineStyles } = extractInlineStyles(rawBody)
  const styles = [extractStyles(html), ...inlineStyles].filter(Boolean).join('\n\n')
  const body = repairHtml(rewriteLinks(bodyContent, relPath))
  const route = getRouteForFile(relPath)

  const descEscaped = description.replace(/'/g, "\\'")
  const titleEscaped = title.replace(/'/g, "\\'")

  return `<script setup lang="ts">
useHead({
  title: '${titleEscaped}',
  meta: [{ name: 'description', content: '${descEscaped}' }],
})
</script>

<template>
  <div>
${body.split('\n').map(line => line ? `    ${line}` : '').join('\n')}
  </div>
</template>

<style>
${styles}
</style>
`
}

function outputPathForRoute(route) {
  if (route === '/') return path.join(OUT, 'index.vue')
  const segments = route.slice(1).split('/')
  const last = segments[segments.length - 1]
  const dir = path.join(OUT, ...segments.slice(0, -1))
  const indexRoutes = ['/materials', '/products', '/applications', '/capabilities', '/resources']
  if (indexRoutes.includes(route)) {
    return path.join(OUT, ...segments, 'index.vue')
  }
  return path.join(dir, `${last}.vue`)
}

function convertAll() {
  if (fs.existsSync(OUT)) {
    fs.rmSync(OUT, { recursive: true })
  }
  fs.mkdirSync(OUT, { recursive: true })

  const files = []
  function walk(dir, rel = '') {
    for (const entry of fs.readdirSync(dir, { withFileTypes: true })) {
      const relPath = rel ? `${rel}/${entry.name}` : entry.name
      if (entry.isDirectory()) {
        walk(path.join(dir, entry.name), relPath)
      } else if (entry.name.endsWith('.html')) {
        files.push(relPath.replace(/\\/g, '/'))
      }
    }
  }
  walk(SRC)

  const manifest = []
  for (const rel of files.sort()) {
    const html = fs.readFileSync(path.join(SRC, rel), 'utf8')
    const vue = toVuePage(rel, html)
    const route = getRouteForFile(rel)
    const outFile = outputPathForRoute(route)
    fs.mkdirSync(path.dirname(outFile), { recursive: true })
    fs.writeFileSync(outFile, vue)
    manifest.push({ source: rel, route, out: path.relative(ROOT, outFile) })
  }

  fs.writeFileSync(
    path.join(ROOT, 'scripts/routes-manifest.json'),
    JSON.stringify(manifest, null, 2),
  )

  console.log(`Converted ${manifest.length} pages.`)
}

convertAll()
