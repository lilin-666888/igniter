insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ High-Speed Cutting Blades',
  '⚔️',
  'Ultra-thin silicon nitride high-speed blades for lithium battery film, cigarette tin foil, and other precision thin-material cutting. Fast cutting speed, clean edges without material damage, high hardness, wear resistance, and low friction coefficient.',
  ARRAY['Micron-level film', '3.9mm thick', '16.9×80mm', 'Ultra-thin available'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;