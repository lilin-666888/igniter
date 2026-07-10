insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Universal Hot Surface Igniter',
  '♨️',
  'General-purpose hot surface igniter for gas and liquid-fuel appliances. Compatible with most North American and EU gas appliance interfaces, standard mounting flanges.',
  ARRAY['Gas + fuel', 'Standard flange', 'NA / EU fit'],
  'Si₃N₄ or Al₂O₃',
  null,
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';;