insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride (Si₃N₄) Powder',
  '⚫',
  'High-purity α/β-phase Si₃N₄ powder for advanced ceramics sintering, thermal spray coating, and composite reinforcement. Purity ≥99.5%, low oxygen content for optimal sintering.',
  ARRAY['Purity ≥99.5%', 'α/β phase', 'Custom D50', 'Low oxygen'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Request a sample →',
  true,
  '★ Premium Grade',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-powder';;