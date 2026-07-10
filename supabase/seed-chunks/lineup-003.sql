insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'SiC Hot Rod Igniter',
  '🌡️',
  'High-temperature SiC heating element for industrial boilers and commercial water heating. Operates at higher surface temperature (up to 1500°C) than Si₃N₄ alternatives.',
  ARRAY['Surface 1500°C', 'Industrial boiler', 'High-temp'],
  'SiC',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';;