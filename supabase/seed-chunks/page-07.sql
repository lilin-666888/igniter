insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'ab2b0569-e7d6-4b83-9329-77c2364452f1',
  'ceramic-powder',
  'category',
  null,
  null,
  '{"title":"Superfine Ceramic Powder | High-Purity Si₃N₄ & ZrO₂ Powders","description":"High-purity ceramic powders with ≥99.5% purity and custom D50 distributions for advanced ceramics manufacturing, thermal spray coatings, and research.","keywords":"ceramic powder"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Powder"}]'::jsonb,
  '{"eyebrow":"Product Category 08 · Ceramic Powder","title":"Superfine ceramic powder,","titleHighlight":"Si₃N₄ and ZrO₂.","subtitle":"High-purity superfine ceramic powders for <b>advanced ceramics manufacturing</b>, thermal spray coatings, and research applications. Purity ≥99.5%, custom D50 distributions, batch-to-batch consistency.","stats":[{"num":"≥99.5%","lbl":"Purity"},{"num":"2","lbl":"Powder Grades"},{"num":"Custom D50","lbl":"Available"},{"num":"Research-Grade","lbl":"Quality"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Our Ceramic Powders","headingHtml":"What R&D engineers and <span class=\"accent\">manufacturers need</span>.","lead":"Consistent chemistry, controlled particle size, and full traceability.","softBg":true,"items":[{"title":"Purity ≥99.5%","body":"Batch-certified by XRF analysis. Trace element content reported per shipment — critical for semiconductor and optical applications."},{"title":"Custom particle size distributions","body":"D50 from 0.3µm to 5µm, D90 to specification. Jet milling and classification to your particle size target."},{"title":"Batch-to-batch consistency","body":"ISO 9001 process control with lot traceability. Phase composition (α/β ratio for Si₃N₄) certified per batch."},{"title":"Research to production scale","body":"Sample from 100g. Production from 50kg. Scale-up without chemistry change — critical for R&D-to-product transition."},{"title":"Technical support","body":"Our ceramic engineers advise on sintering conditions, binder systems, and pressing parameters."},{"title":"Fast sample dispatch","body":"Standard grades dispatch within 48 hours. Non-standard D50: 2–3 weeks."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"What our powders are used for.","lead":"From sintered structural ceramics to thermal spray coatings — wherever powder quality determines end-product performance.","items":[{"icon":"🏭","title":"Advanced Ceramics Sintering","desc":"Si₃N₄ and ZrO₂ powder for pressing and sintering of structural and functional ceramic components.","grade":"Si₃N₄ or ZrO₂","to":"/applications"},{"icon":"🦷","title":"Dental Ceramics","desc":"3Y-TZP ZrO₂ for CAD/CAM dental crowns and bridges. Consistent shrinkage and translucency.","grade":"ZrO₂ 3Y-TZP","to":"/applications"},{"icon":"⚡","title":"Solid Oxide Fuel Cells","desc":"8Y-TZP ZrO₂ electrolyte powder for SOFC tape casting and screen printing.","grade":"ZrO₂","to":"/applications"},{"icon":"🔬","title":"Research & Development","desc":"Controlled particle size and chemistry for ceramic R&D and novel composite materials.","grade":"Si₃N₄ or ZrO₂","to":"/applications"},{"icon":"🌡️","title":"Thermal Spray Coatings","desc":"Si₃N₄ and ZrO₂ powders for HVOF and plasma spray thermal barrier coatings.","grade":"Si₃N₄ or ZrO₂","to":"/applications"},{"icon":"⚗️","title":"Composite Reinforcement","desc":"Si₃N₄ whisker and particulate reinforcement for metal and ceramic matrix composites.","grade":"Si₃N₄","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Phase for Si₃N₄ powder?","a":"Standard: α-phase >90%. β-phase and α/β blended grades available — specify sintering route. Phase cert with each batch."},{"q":"Stabiliser for ZrO₂?","a":"Standard: 3 mol% Y₂O₃ (3Y-TZP) for structural/dental. 8Y-TZP for thermal barrier/SOFC. Unstabilised available."},{"q":"Minimum order?","a":"Sample: 100g, no charge for qualification. Production: 5kg minimum. Bulk pricing from 50kg."},{"q":"Particle size analysis?","a":"Laser diffraction D10/D50/D90 report with every shipment. Custom PSD targets: specify D50 and D90 at order."},{"q":"Documentation?","a":"Certificate of analysis (purity, PSD, phase), SDS, lot traceability standard. ICP-MS trace element analysis available."},{"q":"Non-standard compositions?","a":"Doped ZrO₂, Si₃N₄ with pre-mixed sintering aids, and custom chemistries available with minimum order."}]},{"type":"casecta"}]'::jsonb,
  7,
  true
) on conflict (slug) do update set
  category_id = excluded.category_id,
  page_type = excluded.page_type,
  parent_slug = excluded.parent_slug,
  parent_label = excluded.parent_label,
  seo = excluded.seo,
  breadcrumb = excluded.breadcrumb,
  hero = excluded.hero,
  hero_side = excluded.hero_side,
  hero_ctas = excluded.hero_ctas,
  spotlight = excluded.spotlight,
  sections = excluded.sections,
  sort_order = excluded.sort_order,
  published = excluded.published,
  updated_at = now();;