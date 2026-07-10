insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'High/Ultra-High Temp Parts',
  '🌡️',
  'Refractory ceramic structural components for continuous service above 1200°C. SiC and Si₃N₄ parts for furnace internals, combustion chambers, and aerospace hot-section components.',
  ARRAY['Up to 1600°C', 'Furnace-grade', 'SiC · Si₃N₄'],
  'SiC / Si₃N₄',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  11,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';;