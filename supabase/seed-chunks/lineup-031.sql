insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Grinding Balls',
  '⚫',
  'Silicon nitride grinding balls for hard mineral milling and ultra-high-purity applications. Hardness 78 HRC — outlasts zirconia media 3–5× in abrasive slurries.',
  ARRAY['Ø 0.4–100mm', '78 HRC', 'Zero contamination', 'High-purity'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Highest Performance',
  0,
  true
from public.product_pages p
where p.slug = 'grinding-media';;