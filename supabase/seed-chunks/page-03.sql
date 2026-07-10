insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '61cd3349-32f5-4f04-8431-73212ff015bf',
  'custom-ceramic',
  'category',
  null,
  null,
  '{"title":"Custom Ceramic Components | DFM, Prototyping & Production","description":"Custom ceramic components to your drawing, with DFM review in 48 hours, prototypes in 14 days, and across six ceramic materials. No geometry is too complex.","keywords":"custom ceramic parts"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Custom Ceramic Components"}]'::jsonb,
  '{"eyebrow":"Product Category 04 · Custom Manufacturing","title":"Custom ceramic components,","titleHighlight":"to your drawing.","subtitle":"From concept sketch to fired ceramic in <b>14 days</b>. STEP, DWG, and PDF across Si₃N₄, SiC, Al₂O₃, AlN, ZrO₂, and B₄C. No geometry is too complex.","stats":[{"num":"48h","lbl":"DFM Review"},{"num":"14d","lbl":"Prototype"},{"num":"6","lbl":"Materials"},{"num":"Any","lbl":"Geometry"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Ceramitell for Custom Parts","headingHtml":"What precision engineers <span class=\"accent\">come to us for</span>.","lead":"We make the part you can''t find off the shelf.","softBg":true,"items":[{"title":"DFM-first approach","body":"We flag manufacturability issues before you commit to tooling — saving re-design cycles."},{"title":"All six ceramic materials","body":"One partner for Si₃N₄, SiC, Al₂O₃, AlN, ZrO₂, and B₄C — no need to manage separate suppliers."},{"title":"Complex geometries","body":"Thin walls, internal channels, precision bores, threaded inserts — we quote what standard suppliers won''t."},{"title":"Fastest prototype in category","body":"7–14 days from drawing approval to fired, inspected, delivered prototype."},{"title":"Tolerances to ±0.01mm","body":"Grinding to ±0.01mm on critical dimensions. Full CMM inspection reports for qualification."},{"title":"Confidentiality guaranteed","body":"Mutual NDA before any drawing exchange. Zero geometry leaks across 10 years of OEM programs."}]},{"type":"app-uses","num":"03 · Custom Ceramic Applications","headingHtml":"Industries that rely on <span class=\"accent\">custom ceramic parts</span>.","lead":"If it needs to survive extreme temperature, corrosion, or wear — and metal won''t do it — we can make it in ceramic.","items":[{"icon":"💻","title":"Semiconductor","desc":"Si₃N₄ wafer-handling fixtures, Al₂O₃ susceptors, and AlN substrates to semiconductor tool drawings.","grade":"Custom to drawing","to":"/applications"},{"icon":"✈️","title":"Aerospace & Defense","desc":"B₄C armor tiles, Si₃N₄ bearing races, and gyroscope components. ITAR-compliant handling available.","grade":"Custom to drawing","to":"/applications"},{"icon":"⚗️","title":"Chemical & Fluid Control","desc":"Al₂O₃ valve seats, SiC seal faces, ZrO₂ pump impellers for corrosive media.","grade":"Custom to drawing","to":"/applications"},{"icon":"🔬","title":"Laboratory Instruments","desc":"Custom Al₂O₃ crucibles, thermocouple sheaths, ICP-OES atomization tubes.","grade":"Custom to drawing","to":"/applications"},{"icon":"🏭","title":"Industrial & Foundry","desc":"Si₃N₄ lift tubes, thermocouple protection tubes, AlN crucibles for casting and heat treatment.","grade":"Custom to drawing","to":"/applications"},{"icon":"📐","title":"Your Application","desc":"Send any drawing — feasibility, material recommendation, and quote within 48 hours.","grade":"Submit your drawing","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"What file formats?","a":"STEP, IGES, DWG, DXF, PDF (dimensioned). Solidworks/Rhino native files. Sketches with dimensions for preliminary feasibility."},{"q":"Which material is right?","a":"Tell us operating temperature, chemical environment, loads, and tolerances — our DFM team recommends and explains trade-offs."},{"q":"Minimum order?","a":"Prototypes: no MOQ (single-unit quotes available). Production: typically 500 units simple, 200 units complex geometry."},{"q":"Tolerance capability?","a":"Ground ceramic: ±0.01mm. As-fired: ±0.5%. Green-machined: ±0.1–0.2mm."},{"q":"NDA before sending drawings?","a":"Yes — mutual NDA standard before any drawing exchange."},{"q":"What documentation is supplied?","a":"Prototype: dimensional report, material cert, photos. Production: first-article inspection, dimensional sample, material cert. SPC and PPAP on request."}]},{"type":"casecta"}]'::jsonb,
  3,
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