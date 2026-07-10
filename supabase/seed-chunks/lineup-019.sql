insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Wear-Resistant & Tribological Parts',
  '🛡️',
  'Ceramic wear parts for high-load sliding, abrasive, and erosive environments. SiC and Al₂O₃ components for mining, oil & gas, and industrial machinery.',
  ARRAY['Abrasion-resistant', 'SiC · Al₂O₃', 'Mining / O&G'],
  'SiC / Al₂O₃',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  9,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;