insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Turbine Components',
  '⚙️',
  'Si₃N₄ turbocharger rotors, turbine wheels, and high-temperature blade assemblies. 30% lighter than Inconel, faster spool-up, no lubrication thermal limit.',
  ARRAY['30% lighter', 'No lube limit', 'High-temp'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;