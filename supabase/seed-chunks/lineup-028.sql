insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Full Zirconia Ceramic Bearings',
  '⚪',
  'Rings and balls in zirconia. Best for highly corrosive media — concentrated acids, alkalis, and seawater. Electrical insulator.',
  ARRAY['Ø 3–200mm', 'P0–P5', 'Acid-resistant', 'Electrical insulation'],
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
where p.slug = 'precision-bearings';;