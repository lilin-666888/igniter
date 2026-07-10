insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Zirconia Balls',
  '🔵',
  'ZrO₂ ceramic balls for corrosive-media pumps, check valves, and food/pharmaceutical equipment. Higher density than Si₃N₄ — ideal for valve seats and grinding applications.',
  ARRAY['Ø 0.4–50.8mm', 'G3–G60', 'Corrosion-resistant', 'Electrical insulator'],
  'ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-balls';;