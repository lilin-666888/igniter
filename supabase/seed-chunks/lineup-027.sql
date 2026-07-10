insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Full Si₃N₄ Ceramic Bearings',
  '🔵',
  'Rings and balls in silicon nitride. Best for high-temperature, corrosive, and magnetically sensitive applications. Zero lubrication required — runs dry in vacuum.',
  ARRAY['Ø 3–200mm', 'P0–P5', 'Lubrication-free', 'Non-magnetic'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Top Seller',
  0,
  true
from public.product_pages p
where p.slug = 'precision-bearings';;