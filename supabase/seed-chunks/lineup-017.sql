insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Fluid Control & Seals',
  '💧',
  'Ceramic valve seats, seal faces, and flow-control components for pumps, valves, and metering equipment in corrosive, abrasive, and high-temperature media.',
  ARRAY['Corrosion-resistant', 'High-temp', 'SiC / Al₂O₃'],
  'SiC / Al₂O₃',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  7,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;