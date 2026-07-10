insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Zirconia (ZrO₂) Powder',
  '⬜',
  'Yttria-stabilised zirconia powder (3Y-TZP) for dental ceramics, solid oxide fuel cells, thermal barrier coatings, and structural ceramics sintering. Purity ≥99.5%.',
  ARRAY['Purity ≥99.5%', '3Y-TZP grade', 'Dental-grade', 'SOFC-compatible'],
  'ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Request a sample →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-powder';;