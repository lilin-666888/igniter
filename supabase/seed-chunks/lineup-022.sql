insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'DFM & Quotation',
  '📐',
  'Send your STEP, DWG, or PDF. Our ceramic DFM engineers review manufacturability, recommend material and process route, and return a quote within 48 hours.',
  ARRAY['STEP/DWG/PDF', 'DFM within 48h', 'Material advice'],
  'All ceramic materials',
  null,
  '/contact',
  null,
  'Submit a drawing →',
  true,
  'Step 1',
  0,
  true
from public.product_pages p
where p.slug = 'custom-ceramic';;