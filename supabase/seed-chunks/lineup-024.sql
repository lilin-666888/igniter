insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Production Run',
  '🏭',
  'Stable production from 500 units. Consistent material certs, dimension reports, and SPC data on request. Private-label marking available.',
  ARRAY['From 500 units', 'SPC data', 'Private-label'],
  'Any material',
  null,
  '/contact',
  null,
  'Get a quote →',
  false,
  'Step 3',
  2,
  true
from public.product_pages p
where p.slug = 'custom-ceramic';;