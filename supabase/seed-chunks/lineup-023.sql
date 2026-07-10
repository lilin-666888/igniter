insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Prototype Production',
  '🔬',
  'Prototypes in 7–14 days from drawing approval. Full dimensional inspection report, material cert, and photos included. No MOQ on prototypes.',
  ARRAY['7–14 day lead', 'Inspection report', 'No MOQ'],
  'Si₃N₄ · SiC · Al₂O₃ · AlN · ZrO₂',
  null,
  '/contact',
  null,
  'Get a quote →',
  false,
  'Step 2',
  1,
  true
from public.product_pages p
where p.slug = 'custom-ceramic';;