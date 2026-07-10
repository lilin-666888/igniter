insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Aluminum Nitride Heaters',
  '💡',
  'AlN heaters for semiconductor wafer-chuck and precision thermal management. Highest thermal conductivity of any ceramic heater — fast, uniform heating.',
  ARRAY['High conductivity', 'Wafer chuck', 'Precision'],
  'AlN',
  '/materials/aluminum-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';;