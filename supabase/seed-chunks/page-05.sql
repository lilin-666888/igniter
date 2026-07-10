insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'd00a34fe-efb2-4fde-a1eb-3789666d682d',
  'precision-bearings',
  'category',
  null,
  null,
  '{"title":"Precision Ceramic Bearings | Full Ceramic & Hybrid Bearings","description":"Precision ceramic bearings in full ceramic and hybrid for motors, pumps, and high-speed equipment requiring corrosion resistance and electrical insulation.","keywords":"ceramic bearings, ceramic bearing, hybrid ceramic bearings, bearing ceramic hybrid, ceramic vs steel bearings, ceramic skateboard bearings, ceramic skate bearings, ceramic wheel bearings, bones ceramic bearings"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Precision Ceramic Bearings"}]'::jsonb,
  '{"eyebrow":"Product Category 06 · Precision Bearings","title":"Precision ceramic bearings,","titleHighlight":"full and hybrid.","subtitle":"Full and hybrid ceramic ball bearings for <b>high-speed, high-temperature, and corrosive environments</b>. Four types cover wind turbine generators, CNC spindles, semiconductor stages, and aerospace gyroscopes. Precision P0 to P5.","stats":[{"num":"4","lbl":"Bearing Types"},{"num":"3–250mm","lbl":"Bore Diameter"},{"num":"P0–P5","lbl":"Precision Class"},{"num":"100K+","lbl":"RPM Capable"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Ceramic Bearings","headingHtml":"When steel bearings <span class=\"accent\">reach their limit</span>.","lead":"Ceramic bearings solve four specific problems that steel cannot.","softBg":true,"items":[{"title":"3× longer life at high speed","body":"Si₃N₄ balls are 60% lighter than steel — at 100,000+ RPM the reduced centrifugal force dramatically extends bearing life."},{"title":"Lubrication-free operation","body":"Full ceramic bearings run dry in vacuum, clean rooms, and food/pharma where lubricant contamination is unacceptable."},{"title":"Resistant to corrosive media","body":"Zirconia bearings operate in concentrated acid, alkali, and seawater where steel corrodes within hours."},{"title":"Non-magnetic and electrically insulating","body":"Si₃N₄ has zero magnetic permeability — mandatory in MRI equipment and magnetic measurement instruments."},{"title":"High-temperature operation","body":"Full Si₃N₄ bearings operate to 800°C continuously — steel requires relubrication above 150°C."},{"title":"Applications: wind, CNC, aerospace","body":"Wind turbine main shaft bearings, CNC spindles, aerospace gyroscopes — we supply all three."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"Where ceramic bearings <span class=\"accent\">are specified</span>.","lead":"Any application where speed, temperature, corrosion, or magnetism exceeds steel bearing limits.","items":[{"icon":"💨","title":"Wind Power","desc":"Full Si₃N₄ main shaft and generator bearings for wind turbines. Lubrication-free, 20-year design life.","grade":"Full Si₃N₄ P0–P5","to":"/applications"},{"icon":"🔧","title":"CNC Machining","desc":"Si₃N₄ hybrid spindle bearings for machining centres. 40,000–100,000 RPM.","grade":"Si₃N₄ Hybrid P2–P4","to":"/applications"},{"icon":"✈️","title":"Aerospace & Gyroscopes","desc":"Full Si₃N₄ for inertial navigation gyroscopes and satellite reaction wheels. Non-magnetic.","grade":"Full Si₃N₄ G3–G5","to":"/applications"},{"icon":"⚗️","title":"Chemical & Pharmaceutical","desc":"ZrO₂ full ceramic for pumps and agitators in aggressive chemical environments.","grade":"Full ZrO₂ P0–P5","to":"/applications"},{"icon":"🏥","title":"Medical Equipment","desc":"Full Si₃N₄ for MRI-compatible surgical robots and dental turbines. Non-magnetic, sterilisable.","grade":"Full Si₃N₄ P2–P4","to":"/applications"},{"icon":"🔋","title":"Clean Energy","desc":"Si₃N₄ hybrid bearings for fuel cell compressors and battery slurry pumps.","grade":"Si₃N₄ Hybrid","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"What precision class do I need?","a":"P0 general; P6 machine tool spindles; P5/P4 high-speed CNC; P2 precision instruments. Send bore/OD/RPM — we''ll recommend."},{"q":"Full ceramic vs hybrid?","a":"Hybrid: lower cost, high speed, clean environments. Full ceramic: corrosive media, high temp, magnetic sensitivity."},{"q":"Non-standard sizes?","a":"Custom bore/OD/width to drawing. Standard 6xxx/7xxx series in ceramic from size charts. Custom: 4–8 weeks."},{"q":"Lubrication requirements?","a":"Full ceramic: run dry or minimal lube. Hybrid: standard grease or oil-air. Grease type recommended per speed and temperature."},{"q":"Sample lead time?","a":"Standard Si₃N₄ hybrid: 1–2 weeks. Full ceramic standard: 2–4 weeks. Custom: 6–10 weeks."},{"q":"Documentation?","a":"Material cert, dimensional report, bearing accuracy cert standard. PPAP, first-article, and engineering support for OEM programs."}]},{"type":"casecta"}]'::jsonb,
  5,
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