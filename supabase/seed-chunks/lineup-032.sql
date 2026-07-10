insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'ZrO₂ Grinding Balls',
  '⬜',
  'Zirconia grinding balls for battery cathode/anode slurry milling, pigment dispersion, and mineral processing. High density (6.0 g/cm³) delivers excellent milling energy.',
  ARRAY['Ø 0.4–50.8mm', '6.0 g/cm³', 'Battery-grade', 'Coatings/mining'],
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
where p.slug = 'grinding-media';;