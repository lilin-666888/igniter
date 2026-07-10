insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Heating Plates',
  '⬛',
  'Flat Si₃N₄ heating plates for uniform surface heating. Used in press-sintering equipment, wafer-chuck heaters, and analytical instrument platforms.',
  ARRAY['Flat geometry', 'Uniform heat', 'Custom size'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';;