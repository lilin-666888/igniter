insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Tubes, Rods & Plungers',
  '🧪',
  'Al₂O₃ and SiC tubes, rods, and plungers for pump cylinders, valve internals, dosing pumps, and lab equipment. Standard lengths 100–600mm, custom on request.',
  ARRAY['Ø custom', '100–600mm', 'Pump-grade'],
  'Al₂O₃ / SiC',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;