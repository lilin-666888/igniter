insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Carbide Heaters',
  '🌡️',
  'SiC rod and tube heaters for extreme-temperature industrial furnaces. Continuous operation to 1600°C — the highest in our range.',
  ARRAY['Up to 1600°C', 'Industrial', 'Rod & tube'],
  'SiC',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';;