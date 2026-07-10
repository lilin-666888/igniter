insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Heaters',
  '🔆',
  'High-cycle Si₃N₄ flat and rod heaters for pellet stoves, industrial furnaces, and wafer-chuck temperature control. Ultra-fast thermal response.',
  ARRAY['Up to 1300°C', 'Fast response', 'Compact'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Flagship',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';;