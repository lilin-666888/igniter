insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Balls',
  '⚫',
  'Si₃N₄ ceramic balls for precision bearings, ball screws, and high-speed spindles. 60% lighter than steel, hardness 78 HRC, non-magnetic, lubrication-free capable.',
  ARRAY['Ø 0.4–100mm', 'G3–G60', '78 HRC', 'Non-magnetic'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/products/silicon-nitride-balls',
  (select id from public.product_pages where slug = 'silicon-nitride-balls' limit 1),
  'View specs →',
  true,
  '★ Recommended',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-balls';;