insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Plates, Discs & Substrates',
  '📐',
  'Flat ceramic plates, discs, and substrates for heating elements, semiconductor susceptors, wafer chucks, and precision fixtures. Surface flatness to 1µm.',
  ARRAY['Flatness 1µm', 'Custom size', 'AlN · Al₂O₃'],
  'AlN / Al₂O₃',
  '/materials/aluminum-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  8,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;