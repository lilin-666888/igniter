insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Custom Machined Parts',
  '🔬',
  'Complex asymmetric precision components machined to drawing. Intricate profiles, internal channels, threaded features, and tight tolerances (±0.01mm) across all ceramic materials.',
  ARRAY['±0.01mm', 'Any geometry', 'All materials'],
  'All ceramics',
  null,
  '/contact',
  null,
  'Submit a drawing →',
  false,
  null,
  6,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;