insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Glow Plug',
  '🔌',
  'Cylindrical glow-plug form factor for diesel engines, oil burners, and auxiliary cabin heaters. Sealed metal-sheath construction to automotive-grade vibration spec.',
  ARRAY['Diesel / oil', 'Sealed sheath', 'Auto-grade'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';;