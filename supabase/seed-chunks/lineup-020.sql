insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Corrosion-Resistant Parts',
  '⚗️',
  'Dense Si₃N₄, SiC, and ZrO₂ components for aggressive chemical environments — concentrated acids, alkalis, and oxidising media at elevated temperature.',
  ARRAY['Acid-resistant', 'Chemical-grade', 'Si₃N₄ · ZrO₂'],
  'Si₃N₄ / ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  10,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;