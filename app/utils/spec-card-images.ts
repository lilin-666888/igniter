import type { SpecCard } from '~/data/products/types'

export function normalizeImageList(value: unknown): string[] {
  if (Array.isArray(value)) {
    return value.filter((item): item is string => typeof item === 'string' && item.trim().length > 0)
  }

  if (typeof value === 'string' && value.trim()) {
    const trimmed = value.trim()
    if (trimmed.startsWith('[')) {
      try {
        return normalizeImageList(JSON.parse(trimmed))
      } catch {
        // fall through to comma-separated parsing
      }
    }
    return trimmed.split(',').map(item => item.trim()).filter(Boolean)
  }

  return []
}

export function getSpecCardImages(card: {
  imageSrc?: string
  imageSrcs?: string[] | string | unknown
}): string[] {
  const fromSrcs = normalizeImageList(card.imageSrcs)
  if (fromSrcs.length) return fromSrcs

  if (typeof card.imageSrc === 'string' && card.imageSrc.trim()) {
    return [card.imageSrc.trim()]
  }

  return []
}

export function hasSpecCardImages(card: Pick<SpecCard, 'imageSrc' | 'imageSrcs'>): boolean {
  return getSpecCardImages(card).length > 0
}
