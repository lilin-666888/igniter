insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Alumina Ceramic Heaters',
  '⚪',
  'Al₂O₃ resistive heaters for medium-temperature applications up to 1200°C. Cost-optimised where Si₃N₄ lifetime is not required.',
  ARRAY['Up to 1200°C', 'Cost-effective', 'Resistive'],
  'Al₂O₃',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';;