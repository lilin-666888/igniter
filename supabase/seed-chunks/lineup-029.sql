insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Hybrid Ball Bearings',
  '⚙️',
  'Steel rings with Si₃N₄ balls. Lower cost than full ceramic, higher speed than all-steel. Standard choice for CNC spindles and machine tool spindles.',
  ARRAY['Ø 3–250mm', 'P0–P4', 'CNC spindles', 'High speed'],
  'Si₃N₄ balls / steel rings',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'precision-bearings';;