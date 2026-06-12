import type { H3Event } from 'h3'

export function setCmsNoCache(event: H3Event) {
  setResponseHeader(event, 'Cache-Control', 'no-store, no-cache, must-revalidate')
  setResponseHeader(event, 'Pragma', 'no-cache')
}
