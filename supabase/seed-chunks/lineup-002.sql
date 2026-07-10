insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Alumina (Al₂O₃) Igniter',
  '📜',
  'Lower-cost replacement for older alumina-based ignition systems. Best for low-duty-cycle applications and cost-sensitive volume where Si₃N₄ cycle life isn''t required.',
  ARRAY['Legacy replace', 'Low-duty', 'Cost-optimized'],
  'Al₂O₃',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';;