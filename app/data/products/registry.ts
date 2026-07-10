import type { ProductPage } from './types'
import { ceramicBalls } from './categories/ceramic-balls'
import { ceramicHeaters } from './categories/ceramic-heaters'
import { ceramicIgniters } from './categories/ceramic-igniters'
import { ceramicPowder } from './categories/ceramic-powder'
import { ceramicStructural } from './categories/ceramic-structural'
import { customCeramic } from './categories/custom-ceramic'
import { grindingMedia } from './categories/grinding-media'
import { precisionBearings } from './categories/precision-bearings'
import { fullSiliconNitrideBearings } from './skus/full-silicon-nitride-bearings'
import { hotSurfaceIgniters } from './skus/hot-surface-igniters'
import { siliconNitrideBalls } from './skus/silicon-nitride-balls'
import { siliconNitrideGrindingBalls } from './skus/silicon-nitride-grinding-balls'
import { siliconNitrideHeaters } from './skus/silicon-nitride-heaters'
import { siliconNitrideIgnitersFinal } from './skus/silicon-nitride-igniters-final'
import { siliconNitridePowder } from './skus/silicon-nitride-powder'
import { siliconNitrideShaftRod } from './skus/silicon-nitride-shaft-rod'

const pages: ProductPage[] = [
  ceramicIgniters,
  ceramicHeaters,
  ceramicStructural,
  customCeramic,
  ceramicBalls,
  precisionBearings,
  grindingMedia,
  ceramicPowder,
  siliconNitrideIgnitersFinal,
  hotSurfaceIgniters,
  siliconNitrideHeaters,
  siliconNitrideShaftRod,
  siliconNitrideBalls,
  fullSiliconNitrideBearings,
  siliconNitrideGrindingBalls,
  siliconNitridePowder,
]

const bySlug = new Map(pages.map((page) => [page.slug, page]))

export function getProductPage(slug: string): ProductPage | undefined {
  return bySlug.get(slug)
}

export function getAllProductSlugs(): string[] {
  return pages.map((page) => page.slug)
}

export { pages as productPages }
