insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Ceramic Lift Tubes',
  '🔥',
  'Silicon nitride lift tubes for low-pressure aluminium die casting. Non-wetting to molten Al, low thermal expansion — no cracking in cyclic service, 3–5× life vs cast-iron alternatives.',
  ARRAY['Molten Al-resistant', '1600°C rated', 'Long life'],
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
where p.slug = 'ceramic-structural';;