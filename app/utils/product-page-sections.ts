import type { ProductPage, ProductSection } from '~/data/products/types'

function hasSpecGridContent(section: Extract<ProductSection, { type: 'spec-grid' }>) {
  if (section.items?.length) return true
  return section.groups?.some(group => group.items.length > 0) ?? false
}

export function visibleProductSections(sections: ProductPage['sections']) {
  return sections.filter((section) => {
    if (section.type === 'lineup') return section.items.length > 0
    if (section.type === 'spec-grid') return hasSpecGridContent(section)
    return true
  })
}
