insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Shaft Rods',
  '🔩',
  'High-precision silicon nitride shaft rods for high-speed spindles, pump shafts, and turbo-machinery shafts. 60% lighter than steel, zero magnetic signature, lubricant-free operation.',
  ARRAY['High-speed', 'Non-magnetic', 'Lubricant-free'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Most Popular',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;