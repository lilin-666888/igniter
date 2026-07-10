insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'ZrO₂ Hybrid Ball Bearings',
  '🔩',
  'Steel rings with zirconia balls. Cost-effective hybrid for corrosion resistance and electrical insulation without full ceramic rings.',
  ARRAY['Ø 3–250mm', 'P0–P4', 'Electrical insulation', 'Corrosion-resistant'],
  'ZrO₂ balls / steel rings',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'precision-bearings';;