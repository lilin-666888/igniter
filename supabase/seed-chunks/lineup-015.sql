insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Spherical & Rotators',
  '⚫',
  'Precision ceramic balls and rotating bodies in Si₃N₄, ZrO₂, or Al₂O₃ for bearing balls, check-valve balls, and flow-control rotors. G3–G60 grade available.',
  ARRAY['G3–G60', 'Si₃N₄ · ZrO₂', 'Precision-ground'],
  'Si₃N₄ / ZrO₂',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  5,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;