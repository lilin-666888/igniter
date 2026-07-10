insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Hot Surface Igniter · CN-300',
  '🔥',
  'Our flagship silicon nitride hot surface igniter for pellet stoves, BBQ grills, gas furnaces, and water heaters. Designed for high-cycle thermal duty, with 12V, 120V, and 230V variants built around a Si₃N₄ heating core.',
  ARRAY['Cycle life 100K+', 'Heat-up 3 s', '12–230V', 'UL/CE'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/products/silicon-nitride-igniters-final',
  (select id from public.product_pages where slug = 'silicon-nitride-igniters-final' limit 1),
  'View Details →',
  true,
  '★ Flagship',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';;