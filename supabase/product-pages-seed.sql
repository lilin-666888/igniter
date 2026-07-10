-- Auto-generated product pages seed
delete from public.product_lineup_items;
delete from public.product_pages;

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '15ea4c42-9178-4113-ab9c-437b5be6c59e',
  'ceramic-igniters',
  'category',
  null,
  null,
  '{"title":"Ceramic Igniters | Hot Surface Ignition for OEM Appliances","description":"Explore ceramic igniters for pellet stoves, BBQ grills, gas furnaces, water heaters, and HVAC systems. UL/CE certified, OEM-ready, and long service life.","keywords":"ceramic igniter, pellet ceramic igniter"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Igniters"}]'::jsonb,
  '{"eyebrow":"★ Flagship Product Category","title":"Ceramic hot surface igniters,","titleHighlight":"built for OEM appliance platforms.","subtitle":"Si₃N₄, SiC, and Al₂O₃ ceramic igniters for <b>pellet stoves, BBQ grills, gas furnaces, water heaters, boilers, and HVAC platforms</b>. Our flagship CN-300 silicon nitride hot-surface igniter supports high-cycle ignition and OEM fitment, and is UL/CE certified for optimal performance.","stats":[{"num":"5","lbl":"Igniter Types"},{"num":"100K+","lbl":"Cycle Life"},{"num":"48h","lbl":"Sample Dispatch"},{"num":"42","lbl":"Export Markets"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Buy From Ceramitell","headingHtml":"What OEM buyers <span class=\"accent\">come to us for</span>.","lead":"We''re a direct manufacturer, not a trader. That means engineering answers, drop-in compatibility, and pricing that survives volume — without a middleman markup.","softBg":true,"items":[{"title":"Drop-in replacements","body":"Send a Norton 271N, White-Rodgers, or Robertshaw part number — we match voltage, power, mounting, and lead config to spec."},{"title":"Free samples, 48-hour dispatch","body":"Stock BLK SKUs ship from our Hangzhou warehouse within 48 hours — no MOQ on samples, charges credited to first order."},{"title":"UL / CE certified","body":"BLK series is UL Recognized and CE-marked for the EU. Certification scans available on request for your compliance file."},{"title":"Private-label at no extra cost","body":"Laser-marked branding on the mounting flange or housing, free on production orders of 1,000+ units. Mutual NDA standard."},{"title":"DFM on custom parts","body":"Send STEP/PDF/DWG and get a 48-hour DFM reply with material recommendation, then prototypes in 7–14 days."},{"title":"Direct-manufacturer pricing","body":"One factory, no trading layer. Stable cost at volume and engineers you can reach — not a sales desk reading from a catalog."}]},{"type":"app-uses","num":"03 · Where They Fire","headingHtml":"Appliances our igniters <span class=\"accent\">run in</span>.","lead":"From residential pellet stoves to industrial boilers — each application links to a deeper engineering page with the recommended igniter type and case data.","items":[{"icon":"🔥","title":"Pellet & Biomass Stoves","desc":"High-cycle residential heating. Our flagship application — Italian OEM ships 180,000 units/year with BLK, −38% warranty returns.","grade":"BLK Si₃N₄","to":"/applications/sub-biomass-pellet-stoves"},{"icon":"🍖","title":"BBQ & Outdoor Grills","desc":"Fast, reliable ignition for gas grills and outdoor cooking appliances. 3-second heat-up, weather-cycle durable, low-voltage variants available.","grade":"BLK / Universal","to":"/applications"},{"icon":"♨️","title":"Gas Furnaces & Water Heaters","desc":"Residential and commercial HVAC ignition. Drop-in for major Western furnace OEM igniters across 120V and 230V platforms.","grade":"BLK / Universal","to":"/applications"},{"icon":"🏭","title":"Industrial Boilers","desc":"High-temperature commercial and industrial heating. SiC hot rod handles higher surface temperatures for demanding boiler duty.","grade":"SiC Hot Rod","to":"/applications"},{"icon":"⛽","title":"Diesel & Oil Burners","desc":"Engine pre-heat, oil burner ignition, and auxiliary cabin heaters. Sealed glow-plug form factor to automotive vibration spec.","grade":"Si₃N₄ Glow Plug","to":"/applications"},{"icon":"📐","title":"Your Application","desc":"Heating or ignition need not listed? Tell us the appliance, duty cycle, and voltage — we''ll recommend a type and quote within 24 hours.","grade":"Talk to an engineer","to":"/contact"}]},{"type":"casecta"},{"type":"faq","num":"04 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","lead":"Direct answers from our application team. Need more? Email us with your part number, drawing, or duty cycle.","items":[{"q":"Can your igniters replace Norton 271N / White-Rodgers / Robertshaw?","a":"Yes — we routinely produce drop-in replacements for these and other Western OEM igniters. Send the part number, we''ll match voltage, power, mounting, and lead config. UL/CE certified for North American and EU markets."},{"q":"What''s the MOQ for custom igniters?","a":"Stock BLK SKUs: no MOQ — single-unit samples available. Custom voltage/form factor: 5,000-unit production MOQ typical. Sample charges credit against first production order."},{"q":"How fast can I get samples?","a":"Stock BLK samples dispatch within 48 hours from our Hangzhou warehouse to anywhere in our 42 export markets. Custom prototypes typically ship in 7–14 days from drawing receipt — DFM review included."},{"q":"What is a ceramic hot surface igniter?","a":"Ceramic hot-surface igniters are electrically heated ceramic components designed to reach an ignition temperature to ignite gas, biomass pellets, or liquid-fuel appliances. Ceramitell provides Si₃N₄, SiC, and Al₂O₃ hot surface igniters for OEM appliance platforms, replacement programs, and custom ignition assemblies."},{"q":"Are your igniters UL/CE certified?","a":"BLK series is UL Recognized (Component Recognition) and CE-marked for the EU. Certification scans available on request. Custom-voltage igniters require additional certification testing if outside our existing approved configurations."},{"q":"What''s the warranty?","a":"Standard warranty is 24 months from date of OEM installation against manufacturing defect. Extended warranty (36-48 months) available for OEM partnerships with annual volume commitments. Field failure analysis included."}]}]'::jsonb,
  0,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'b2aa83f6-34d1-4430-a974-1de8637ce4e7',
  'ceramic-heaters',
  'category',
  null,
  null,
  '{"title":"Ceramic Heaters & Heating Elements | OEM Heating Solutions","description":"Ceramic heaters and heating elements for industrial heating systems requiring rapid heat-up, efficient thermal performance, and temperatures up to 1600°C.","keywords":"ceramic heaters, ceramic heating element, ceramic heating elements, ceramic heater element, ceramic heater elements, ptc ceramic heater, ptc heater ceramic, ptc ceramic heating, ceramic ptc heating"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Heaters"}]'::jsonb,
  '{"eyebrow":"Product Category 02 · Industrial Heating","title":"Ceramic heaters &","titleHighlight":"heating elements.","subtitle":"Si₃N₄, SiC, Al₂O₃, and AlN heating elements for industrial furnaces, semiconductor equipment, and high-temperature process engineering. Operating temperatures to <b>1600°C</b>. Custom voltages and precision geometries to OEM drawing.","stats":[{"num":"5","lbl":"Heater Types"},{"num":"1600°C","lbl":"Max Temp"},{"num":"Custom","lbl":"Voltage & Size"},{"num":"ISO 9001","lbl":"Certified"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Buy From Ceramitell","headingHtml":"What heating engineers <span class=\"accent\">come to us for</span>.","lead":"Direct manufacturer. DFM support for custom geometries. Stable supply across all four ceramic heater materials.","softBg":true,"items":[{"title":"Up to 1600°C service","body":"SiC heating elements operate continuously at 1600°C — the highest-temperature ceramic heater in our range, for glass, metal, and advanced materials furnaces."},{"title":"Custom geometry to drawing","body":"Send STEP, DWG, or PDF — DFM quote within 48 hours, prototypes in 7–14 days. Flat plates, rods, tubes, and complex profiles."},{"title":"All four ceramic materials","body":"One supplier covers Si₃N₄, SiC, Al₂O₃, and AlN heating elements — simplify your vendor list."},{"title":"Voltage-matched to your system","body":"120V/230V standard; custom DC voltages on production orders. Resistance tolerance ±5% standard, ±2% on request."},{"title":"Fast sample dispatch","body":"Stock Si₃N₄ heater samples dispatch within 48 hours. Custom prototype: 7–14 days."},{"title":"ISO 9001 quality system","body":"Full PPAP-level documentation available for OEM qualification programs."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"Where ceramic heaters <span class=\"accent\">are specified</span>.","lead":"From semiconductor wafer-chucks to industrial glass furnaces.","items":[{"icon":"🏭","title":"Industrial Furnaces","desc":"SiC and Si₃N₄ elements for glass, metal, and advanced-material furnaces above 1000°C.","grade":"SiC or Si₃N₄","to":"/applications"},{"icon":"💻","title":"Semiconductor","desc":"AlN wafer-chuck heaters for CVD/PVD chamber temperature control.","grade":"AlN Heaters","to":"/applications"},{"icon":"🧪","title":"Laboratory Equipment","desc":"Al₂O₃ tube-furnace elements and muffle furnace heaters for analytical instruments.","grade":"Al₂O₃ Heaters","to":"/applications"},{"icon":"⚗️","title":"Chemical Processing","desc":"Si₃N₄ immersion heaters for corrosive fluid heating and chemical bath control.","grade":"Si₃N₄ Heaters","to":"/applications"},{"icon":"🔥","title":"Appliances & Ignition","desc":"Si₃N₄ flat heaters for residential pellet stove ignition and auxiliary heating.","grade":"Si₃N₄ Heaters","to":"/applications"},{"icon":"📐","title":"Custom Application","desc":"Send your spec — we recommend material, geometry, and voltage within 48 hours.","grade":"Contact an engineer","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Max operating temperature?","a":"SiC: 1600°C. Si₃N₄: 1300°C surface. Al₂O₃: 1200°C. AlN: 800°C for precision apps."},{"q":"Can you match my heater geometry?","a":"Send STEP/DWG/PDF — DFM review and quote within 48 hours."},{"q":"What voltages are available?","a":"120V/230V AC standard. Custom DC on production orders."},{"q":"Sample lead time?","a":"Stock Si₃N₄: 48h. Custom prototype: 7–14 days."},{"q":"OEM/private-label?","a":"Laser marking on metal components, free on production orders of 500+ units."},{"q":"Certifications?","a":"ISO 9001. CE marking for EU. RoHS/REACH declarations. PPAP available."}]},{"type":"casecta"}]'::jsonb,
  1,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'bde22157-f6e1-41df-b0db-89207ee6f899',
  'ceramic-structural',
  'category',
  null,
  null,
  '{"title":"Ceramic Structural Components | Shafts, Turbines & Seals","description":"Precision ceramic structural components, including shafts, wear parts, turbines, and custom-engineered solutions, from stock or custom-built within 14 days.","keywords":"structural ceramics"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Structural Parts"}]'::jsonb,
  '{"eyebrow":"Product Category 03 · Structural Engineering","title":"Ceramic structural parts,","titleHighlight":"12 sub-types.","subtitle":"Si₃N₄, SiC, Al₂O₃, AlN, and ZrO₂ precision structural components for <b>shafts, turbines, wear parts, seals, and custom machined geometries</b>. Drop-in and custom-to-drawing for semiconductor, aerospace, foundry, chemical, and precision machinery applications.","stats":[{"num":"12","lbl":"Sub-Types"},{"num":"5","lbl":"Materials"},{"num":"±0.01mm","lbl":"Tolerance"},{"num":"14d","lbl":"Prototype"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"anchor-specs","id":"cutting-blade-specs","num":"01b · Cutting Blade Specifications","headingHtml":"Si₃N₄ high-speed cutting blades — <span class=\"accent\">reference dimensions</span>.","lead":"Ultra-thin silicon nitride ceramic blades for lithium battery film, cigarette tin foil, and other precision thin-material cutting. Dimensions below are reference values — actual parameters are adjusted per application.","items":[{"title":"Applications","body":"High-speed cutting of lithium battery films, cigarette tin foil, and other thin materials. Suitable for micron-level film cutting and precision thin-film applications."},{"title":"Performance","body":"Fast cutting speed, clean cutting without damaging the material, high-temperature resistance, long service life, high hardness, wear resistance, good chemical stability, and low friction coefficient."}],"table":{"headers":["Parameter","Typical Value","Notes"],"rows":[["Material","Silicon Nitride (Si₃N₄)","Ultra-thin ceramic construction"],["Thickness","3.9 mm","Reference dimension"],["Width × Length","16.9 × 80 mm","Also available: 17 × 92.5 mm"],["Custom sizes","Per drawing","Ultra-thin variants available on request"]]}},{"type":"benefits","num":"02 · Why Ceramitell for Structural Parts","headingHtml":"What precision engineers <span class=\"accent\">come to us for</span>.","lead":"Direct manufacturer. All five major structural ceramic materials. DFM support for custom geometries.","softBg":true,"items":[{"title":"Five materials, one supplier","body":"Si₃N₄, SiC, Al₂O₃, AlN, and ZrO₂ structural components from one factory. Match each sub-type to the right material chemistry without managing multiple suppliers."},{"title":"Tolerances to ±0.01mm","body":"Ground ceramic dimensions to ±0.01mm on critical features. Full CMM inspection reports for OEM qualification and aerospace programs."},{"title":"Prototype in 14 days","body":"DFM review within 48 hours of drawing receipt. Fired, inspected, and delivered prototypes in 7–14 days. No MOQ on first-article quantities."},{"title":"Custom geometries welcome","body":"Internal channels, threaded inserts, asymmetric profiles, and tight-tolerance bores — we quote what standard suppliers decline. Send any STEP, DWG, or PDF."},{"title":"Proven in demanding applications","body":"Si₃N₄ shaft rods in high-speed CNC spindles, lift tubes in aluminium die-casting running 1600°C, turbine components in turbocharger test programmes."},{"title":"ISO 9001 quality system","body":"Full material certs, dimensional reports, and PPAP documentation available for production qualifications. Lot traceability standard."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"Where ceramic structural parts <span class=\"accent\">outperform metal</span>.","lead":"Any application where metal fails due to temperature, corrosion, wear, weight, or magnetic interference.","items":[{"icon":"💻","title":"Semiconductor & Electronics","desc":"Si₃N₄ wafer-handling fixtures, AlN substrates, and Al₂O₃ susceptors for CVD/PVD tools and lithography stages.","grade":"Shafts · Plates · Substrates","to":"/applications/app-semiconductor"},{"icon":"✈️","title":"Aerospace & Defense","desc":"Si₃N₄ turbine components, B₄C armor tiles, and gyroscope bearing races for aerospace and defense OEMs.","grade":"Turbines · Shafts · Custom","to":"/applications/app-aerospace"},{"icon":"🏭","title":"Metallurgy & Foundry","desc":"Si₃N₄ lift tubes and thermocouple protection tubes for low-pressure aluminium die-casting and metal heat treatment.","grade":"Lift Tubes · Protection Tubes","to":"/applications/app-metallurgy"},{"icon":"⚗️","title":"Chemical & Fluid Control","desc":"SiC and Al₂O₃ seal faces, valve seats, and plungers for corrosive and abrasive slurry applications.","grade":"Seals · Plungers · Valves","to":"/applications/app-chemical-processing"},{"icon":"🔬","title":"Laboratory & Instruments","desc":"Al₂O₃ tubes, crucibles, and thermocouple sheaths for analytical instruments and tube furnaces.","grade":"Tubes · Substrates · Custom","to":"/applications/app-laboratory"},{"icon":"📐","title":"Your Application","desc":"Any ceramic structural need not listed — send your drawing or describe your application and we''ll recommend material and geometry.","grade":"Talk to an engineer","to":"/contact"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Which ceramic material should I use for my shaft application?","a":"Si₃N₄ for high-speed, high-load, and non-magnetic requirements. SiC for highest hardness and corrosion resistance. Al₂O₃ for cost-sensitive moderate-load applications. Send your operating conditions — we''ll recommend."},{"q":"What is the tightest tolerance you can hold?","a":"Ground ceramic: ±0.01mm on critical dimensions. As-fired: ±0.5% of nominal. CMM inspection reports available for all production parts."},{"q":"How quickly can I get a prototype?","a":"DFM review within 48 hours of drawing receipt. Prototype lead time: 7–14 days from drawing approval. No MOQ on prototypes."},{"q":"Can you machine complex internal features?","a":"Yes — internal channels, cross-holes, threaded bores, and undercuts are all achievable. Green machining before sintering enables complex profiles that are impossible to grind post-fire."},{"q":"What is the MOQ for production parts?","a":"Simple geometries: 500 units. Complex or tight-tolerance parts: 200 units. Custom special profiles: quote-dependent. Volume pricing from 2,000 units."},{"q":"Do you provide NDA and confidentiality protection?","a":"Yes — mutual NDA standard before any drawing exchange. We have maintained full customer confidentiality across all OEM programs since 2014."}]},{"type":"casecta"}]'::jsonb,
  2,
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
  updated_at = now();

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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '977d75b6-1731-4935-8b6b-dd3e8b3a1b01',
  'ceramic-balls',
  'category',
  null,
  null,
  '{"title":"Precision Ceramic Balls | G3–G60 Bearing Ball Solutions","description":"Precision ceramic balls in silicon nitride and zirconia grades, available from G3–G60 and Ø0.4–100mm for bearings, aerospace, and industrial applications.","keywords":"ceramic balls, ceramic ball, ceramic ball bearings, ceramic ball bearing, bearing ceramic ball, china ceramic ball, chinese ceramic balls"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Balls"}]'::jsonb,
  '{"eyebrow":"Product Category 05 · Precision Balls","title":"Precision ceramic balls,","titleHighlight":"Si₃N₄ and ZrO₂.","subtitle":"Bearing-grade ceramic balls for precision bearings, ball screws, pumps, valves, and check valves. Grade <b>G3 to G60</b>, diameter 0.4mm to 100mm. Si₃N₄ (lighter, harder) and ZrO₂ (denser, tougher) from stock.","stats":[{"num":"G3–G60","lbl":"Grade Range"},{"num":"0.4–100mm","lbl":"Diameter"},{"num":"2 Materials","lbl":"Si₃N₄ & ZrO₂"},{"num":"P0–P5","lbl":"Bearing Precision"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"grade-guide","num":"02 · Grade Guide","headingHtml":"Choosing the right <span class=\"accent\">grade</span>.","lead":"ISO 3290 grade number = max allowable deviation in micrometres. Lower grade = tighter tolerance = higher precision. Choose based on your bearing accuracy class (P0–P5) and operating speed.","softBg":true,"items":[{"title":"G3 / G5 — Precision Bearing Grade","body":"For high-precision angular contact bearings, spindle bearings, and gyroscope bearings. Max deviation ≤0.08µm (G3). Aerospace and semiconductor spindle applications."},{"title":"G10 / G16 — High-Precision Grade","body":"Standard for P4 and P2 bearing accuracy class. CNC spindle bearings, dental turbines, and precision instrument bearings."},{"title":"G25 / G40 — Standard Engineering Grade","body":"General-purpose bearings, ball screws, and pump check valves. P0–P6 accuracy class. Cost-effective for high-volume industrial applications."},{"title":"G60 — Commercial Grade","body":"For valve seats, flow metering, and applications where chemical or thermal resistance matters more than roundness tolerance."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"Where ceramic balls <span class=\"accent\">outperform steel</span>.","lead":"Any bearing, pump, or valve that fails in steel due to speed, temperature, corrosion, or magnetism.","items":[{"icon":"⚙️","title":"Precision Bearings","desc":"Si₃N₄ balls for angular contact, deep groove, and hybrid ceramic bearings. 3× longer life vs steel at high speed.","grade":"Si₃N₄ G3–G16","to":"/applications"},{"icon":"🔩","title":"Ball Screws","desc":"Ceramic balls for CNC and semiconductor lithography ball screws. Zero stick-slip, lubrication-free.","grade":"Si₃N₄ G10–G25","to":"/applications"},{"icon":"💧","title":"Pumps & Valves","desc":"ZrO₂ balls for check valves and pump seats in corrosive chemical and food-process environments.","grade":"ZrO₂ G25–G60","to":"/applications"},{"icon":"🔬","title":"Medical & Dental","desc":"Si₃N₄ balls for dental turbines and surgical instrument bearings. Biocompatible, autoclavable.","grade":"Si₃N₄ G5–G16","to":"/applications"},{"icon":"✈️","title":"Aerospace","desc":"G3 Si₃N₄ balls for gyroscope and navigation system bearings. Zero magnetic signature.","grade":"Si₃N₄ G3–G5","to":"/applications"},{"icon":"🏭","title":"Grinding Media","desc":"ZrO₂ balls for wet and dry milling of ceramic slurries, pigments, and battery materials.","grade":"ZrO₂ G40–G60","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Grade for my bearing?","a":"Match to accuracy class: P2→G5, P4→G10–G16, P5→G16–G25, P0→G25–G60. Send bearing model number to confirm."},{"q":"MOQ?","a":"Stock sizes: no MOQ for samples. Custom <5mm: 200pc min. Large diameter >50mm: quote on request."},{"q":"Si₃N₄ vs ZrO₂?","a":"Si₃N₄: lighter (3.2 g/cm³), harder (HRC 78), better for high-speed/high-temp. ZrO₂: denser (6.0), tougher, better for corrosive media."},{"q":"Surface finish?","a":"Standard Ra ≤0.01µm (mirror). Custom Ra to specification. Lapping to P2/G3 on request."},{"q":"Stock availability?","a":"Common bearing ball sizes in both materials held in stock. Standard sizes dispatch within 48h."},{"q":"Aerospace/medical certs?","a":"Material cert with every shipment. XRF analysis available. AS9100 and medical traceability on OEM programs."}]},{"type":"casecta"}]'::jsonb,
  4,
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
  updated_at = now();

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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '25f56cfd-ee23-45d9-894a-cd01504c7852',
  'grinding-media',
  'category',
  null,
  null,
  '{"title":"Ceramic Grinding Media | Silicon Nitride & Zirconia Balls","description":"High-density ceramic grinding media in Si₃N₄ or ZrO₂ type for wet and dry milling, zero metal contamination, battery materials, and high-purity powders.","keywords":"ceramic grinding media"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Grinding Media"}]'::jsonb,
  '{"eyebrow":"Product Category 07 · Grinding Media","title":"Ceramic grinding media,","titleHighlight":"Si₃N₄ and ZrO₂.","subtitle":"High-density ceramic grinding balls and beads for <b>wet and dry milling</b> of battery cathode materials, pigments, coatings, and mineral slurries. Zero metal contamination — critical for battery and electronics applications.","stats":[{"num":"2","lbl":"Media Types"},{"num":"0.4–100mm","lbl":"Bead Size"},{"num":"Zero","lbl":"Metal Contamination"},{"num":"Battery-Grade","lbl":"Purity"}]}'::jsonb,
  'quote',
  null,
  null,
  '[{"type":"benefits","num":"02 · Why Ceramic Grinding Media","headingHtml":"Why ceramic media <span class=\"accent\">replaces steel</span>.","lead":"Metal contamination ruins battery electrode performance. Ceramic media eliminates the risk.","softBg":true,"items":[{"title":"Zero iron contamination","body":"Steel media contaminate battery slurries with Fe ions that degrade cathode performance. Ceramic media contributes zero metal ions."},{"title":"Longer media life","body":"Si₃N₄ outlasts alumina 3–5× and steel 10–20× in hard abrasive slurries — lower total cost of ownership."},{"title":"Higher milling energy (ZrO₂)","body":"ZrO₂ density 6.0 g/cm³ vs alumina 3.9 g/cm³ — more impact energy per ball, reducing milling time."},{"title":"Consistent particle size distribution","body":"Uniform sphericity and low size variance give reproducible D50 — critical for battery electrode control."},{"title":"Battery, coatings, mining applications","body":"LFP/NMC cathode slurry, lithium carbonate, pigment dispersions, TiO₂, and mineral concentrates."},{"title":"Stock in all standard sizes","body":"0.4mm to 100mm across both materials. Stock sizes dispatch within 48 hours."}]},{"type":"app-uses","num":"03 · Applications","headingHtml":"What our customers <span class=\"accent\">mill with ceramic</span>.","lead":"Battery materials, pigments, coatings, minerals — any slurry where contamination, purity, or wear life is critical.","items":[{"icon":"🔋","title":"Battery Materials","desc":"NMC/LFP cathode slurry, lithium carbonate, and solid-state electrolyte powder milling. Zero Fe contamination critical.","grade":"ZrO₂ or Si₃N₄","to":"/applications"},{"icon":"🎨","title":"Pigments & Coatings","desc":"TiO₂, carbon black, and organic pigment dispersions for paints, inks, and coatings.","grade":"ZrO₂","to":"/applications"},{"icon":"⛏️","title":"Mining & Minerals","desc":"Hard mineral concentration and ceramic powder milling — silica, alumina, and advanced ceramic feedstocks.","grade":"Si₃N₄","to":"/applications"},{"icon":"💊","title":"Pharmaceutical & Food","desc":"Particle size reduction for drug formulation and food ingredient processing.","grade":"ZrO₂","to":"/applications"},{"icon":"🔬","title":"Advanced Ceramics","desc":"Milling of ceramic precursor powders for sintering — Si₃N₄, SiC, AlN, ZrO₂ feedstock.","grade":"Si₃N₄","to":"/applications"},{"icon":"⚗️","title":"Chemical Processing","desc":"Catalyst milling, chemical reaction intermediates, and specialty dispersion applications.","grade":"ZrO₂ or Si₃N₄","to":"/applications"}]},{"type":"faq","num":"04 · FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Which media for battery cathode?","a":"ZrO₂ standard for NMC/LFP slurry. Si₃N₄ for ultra-high-purity or very hard feed materials."},{"q":"What bead size?","a":"Typically 10× the feed D90. For D50 < 1µm, use beads ≤0.5mm. Send feed size and target — we''ll recommend."},{"q":"Lead time?","a":"Common sizes in stock: 48h. Non-stock: 2–4 weeks. Sample 1kg: no MOQ."},{"q":"Media load calculation?","a":"Standard fill 50–60% of mill volume. ZrO₂ (6.0 g/cm³) loads heavier than alumina — we''ll advise on your mill."},{"q":"Documentation?","a":"Material cert with every shipment. XRF purity analysis available. Trace metal content cert for battery manufacturer qualification."},{"q":"Wear rate vs alumina?","a":"ZrO₂ wear rate typically 3–5× lower than alumina. Si₃N₄: 5–10× lower. Less contamination, longer intervals."}]},{"type":"casecta"}]'::jsonb,
  6,
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
  updated_at = now();

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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '15ea4c42-9178-4113-ab9c-437b5be6c59e',
  'silicon-nitride-igniters-final',
  'sku',
  'ceramic-igniters',
  'Ceramic Igniters',
  '{"title":"Silicon Nitride Hot Surface Igniters | CN-300 Si₃N₄ Series","description":"CN-300 silicon nitride hot surface igniters with 100K+ cycle life, 3-second heat-up, and OEM replacements for pellet stoves, furnaces, and gas appliances."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Igniters","to":"/products/ceramic-igniters"},{"label":"Silicon Nitride Igniters"}]'::jsonb,
  '{"eyebrow":"★ Flagship Product · Si₃N₄ Hot Surface","title":"BLK silicon nitride","titleHighlight":"hot surface igniters.","subtitle":"Our highest-volume product line. A single Si₃N₄ heating core engineered for <b>100,000+ thermal cycles</b> and <b>3-second heat-up</b>, available in 12V, 120V, and 230V variants. UL Recognized and CE marked — a drop-in replacement for Norton, White-Rodgers, and Robertshaw hot surface igniters.","stats":[{"num":"100K+","lbl":"Cycle Life"},{"num":"3 sec","lbl":"Heat-Up to 1100°C"},{"num":"3","lbl":"Voltage Variants"},{"num":"UL/CE","lbl":"Certified"}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"BLK-HS Series · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Heating Type","v":"Hot Surface"},{"k":"Cycle Life","v":"100K+"},{"k":"Surface Temp","v":"up to 1300°C"},{"k":"Voltage","v":"12 · 120 · 230V"},{"k":"Sample Lead Time","v":"48 h"},{"k":"MOQ (stock SKU)","v":"None"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Product Specifications","headingHtml":"BLK-HS series — <span class=\"accent\">6 models</span>.","lead":"All six models share the same Si₃N₄ heating core. They differ in voltage, mounting configuration, and lead-wire setup. Custom voltage and geometry available with a 5,000+ unit MOQ.","columns":3,"items":[{"model":"BLK-HS5-120 S","subtitle":"120 V · North America","badge":"★ Most Popular","featured":true,"headGradient":true,"imageSrc":"/assets/img/1.jpg","imageLabel":"BLK-HS5-120 S igniter","rows":[{"k":"Rated Power","v":"300","unit":"W","hot":true},{"k":"Surface Temp","v":"1300°C"},{"k":"Cold Resistance","v":"~48 Ω"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> NA residential gas appliances"},{"model":"BLK-HS5-220 S","subtitle":"230 V · Europe","imageSrc":"/assets/img/2.jpg","rows":[{"k":"Rated Power","v":"300","unit":"W","hot":true},{"k":"Surface Temp","v":"1300°C"},{"k":"Cold Resistance","v":"~176 Ω"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> EU residential appliances"},{"model":"BLK-HS1-24 S","subtitle":"12 V · Low Voltage","imageSrc":"/assets/img/3.jpg","imageLabel":"BLK-HS1-24 S igniter","rows":[{"k":"Rated Power","v":"50","unit":"W","hot":true},{"k":"Surface Temp","v":"1100°C"},{"k":"Cold Resistance","v":"~2.4 Ω"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> Battery / 12V auxiliary"},{"model":"BLK-GC1","subtitle":"Gas Stove · Threaded","imageSrc":"/assets/img/4.jpg","imageLabel":"BLK-GC1 igniter","rows":[{"k":"Rated Power","v":"400","unit":"W","hot":true},{"k":"Surface Temp","v":"1300°C"},{"k":"Cold Resistance","v":"TBD"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> Gas stoves · threaded mount"},{"model":"BLK-HS3-24 S","subtitle":"Flange Mount · 2-Hole","imageSrc":"/assets/img/5.jpg","imageLabel":"BLK-HS3-24 S igniter","rows":[{"k":"Rated Power","v":"300","unit":"W","hot":true},{"k":"Surface Temp","v":"1300°C"},{"k":"Cold Resistance","v":"TBD"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> Industrial boilers · flange mount"},{"model":"BLK-HS2-24 S","subtitle":"Flange Mount · 1-Hole","imageSrc":"/assets/img/6.jpg","imageLabel":"BLK-HS2-24 S igniter","rows":[{"k":"Rated Power","v":"300","unit":"W","hot":true},{"k":"Surface Temp","v":"1300°C"},{"k":"Cold Resistance","v":"TBD"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> HVAC / water heaters"}],"footnote":"Shared across all models — Operating Temp Range: −40 to +85 °C · Insulation Resistance: ≥100 MΩ @ 500V DC · UL Recognized & CE marked."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need for spec-in and compliance review.","softBg":true,"items":[{"icon":"📄","name":"BLK-HS Series Datasheet","meta":"PDF · all 3 voltage variants · 4 pages","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"UL Recognition · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"casecta"},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">NA & EU markets</span>.","lead":"BLK ships into 42 export markets. Below is the certification scope for the standard series — custom-voltage variants outside approved configurations require additional certification testing, which we coordinate.","items":[{"mark":"UL","scope":"UL Recognized Component (Hot Surface Igniter). Recognition file and scans available on request.","tag":"North America"},{"mark":"CE","scope":"CE marked for the European Union. Declaration of Conformity provided for EU shipments.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 quality system. PPAP-level documentation on automotive programs.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Spec your <span class=\"accent\">BLK igniter</span>.","lead":"Send your part number, target voltage, or annual volume — our application team replies within one business day with a quote and matched datasheet.","quoteNote":"No MOQ for stock samples. NDA available for private-label projects.","why":["Drop-in replacement: send a Norton / White-Rodgers / Robertshaw part number, we''ll match it.","Free samples, 48-hour dispatch on stock SKUs — no MOQ, sample charges credited to first order.","Direct manufacturer: talk to engineers, not a sales desk — stable pricing at volume.","Private-label laser marking free on production orders of 1,000+ units."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","lead":"Direct answers from our application team. Need more? Email us with your part number, drawing, or duty cycle.","softBg":true,"items":[{"q":"Can BLK replace Norton 271N / White-Rodgers / Robertshaw?","a":"Yes — we routinely produce drop-in replacements. Send the part number and we''ll match voltage, power, mounting, and lead config. UL/CE certified for North American and EU markets."},{"q":"Which voltage variant do I need?","a":"12V for low-voltage / battery and automotive auxiliary; 120V for North American residential appliances; 230V for EU residential. If you''re matching an existing igniter, send the part number and we''ll confirm."},{"q":"What''s the MOQ and sample lead time?","a":"Stock BLK SKUs: no MOQ, single-unit samples dispatch within 48 hours. Custom voltage/form factor: 5,000-unit production MOQ typical. Sample charges credit against the first production order."},{"q":"Why Si₃N₄ over alumina (Al₂O₃)?","a":"Si₃N₄ delivers far higher thermal-cycling life (100K+ vs typical alumina), better thermal-shock resistance, and lower cold-start failure. For high-duty appliances like pellet stoves, the warranty-return reduction usually pays for the material difference."},{"q":"Do you offer private-label / OEM branding?","a":"Yes — laser-marked branding on the metal flange or housing at no additional cost on production orders of 1,000+ units. Mutual NDA standard before private-label projects."},{"q":"What''s the warranty?","a":"Standard warranty is 24 months from OEM installation against manufacturing defect. Extended warranty (36–48 months) available for OEM partnerships with annual volume commitments. Field failure analysis included."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">the rest</span>.","lead":"BLK is one of five igniter types. See the full category, dig into the Si₃N₄ material, or read the application case in depth.","items":[{"eyebrow":"Product Category","title":"All Ceramic Igniters","desc":"Compare all five igniter types — Universal Hot Surface, Alumina, SiC Hot Rod, and Glow Plug.","to":"/products/ceramic-igniters"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Properties, grades, and why Si₃N₄ outperforms alumina in high-cycle thermal applications.","to":"/materials/silicon-nitride"},{"eyebrow":"Application","title":"Biomass & Pellet Stoves","desc":"The flagship BLK application — Italian OEM case, 180,000 units/year, −38% warranty returns.","to":"/applications/sub-biomass-pellet-stoves"}]}]'::jsonb,
  8,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '15ea4c42-9178-4113-ab9c-437b5be6c59e',
  'hot-surface-igniters',
  'sku',
  'ceramic-igniters',
  'Ceramic Igniters',
  '{"title":"Hot Surface Igniters — Gas & Fuel HSI, Si₃N₄ Ceramic, UL/CE | Ceramitell","description":"BLK silicon nitride (Si₃N₄) hot surface igniters: 100K+ cycle life, 3-second heat-up, 12V/120V/230V variants. UL Recognized, CE marked. Drop-in replacement for Norton, White-Rodgers, Robertshaw. Free samples, 48h dispatch, datasheet download.","keywords":"silicon nitride igniter, Si3N4 igniter, BLK igniter, silicon nitride hot surface igniter, ceramic hot surface igniter, Norton igniter replacement, pellet stove igniter"}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Igniters","to":"/products/ceramic-igniters"},{"label":"Hot Surface Igniters"}]'::jsonb,
  '{"eyebrow":"Product · Ceramic Igniters — Hot Surface","title":"Hot surface igniters,","titleHighlight":"gas & fuel burning.","subtitle":"Ceramitell''s hot surface igniter range for <b>gas appliances</b> (furnaces, water heaters, boilers, HVAC) and <b>fuel-burning equipment</b> (pellet stoves, oil heaters, biomass boilers). Si₃N₄ ceramic element, 3-second heat-up, 100,000+ cycle life. Drop-in replacement for major OEM part numbers.","stats":[{"num":"100K+","lbl":"Cycle Life"},{"num":"3 sec","lbl":"Heat-Up"},{"num":"Gas + Fuel","lbl":"2 Application Types"},{"num":"UL/CE","lbl":"Certified"}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Hot Surface Igniters · At a Glance","rows":[{"k":"Element Material","v":"Si₃N₄ (silicon nitride)"},{"k":"Ignition Type","v":"Hot surface — resistive"},{"k":"Voltage Range","v":"12V DC · 120V AC · 230V AC"},{"k":"Surface Temp","v":"1,100–1,300°C"},{"k":"Heat-Up Time","v":"3 seconds"},{"k":"Cycle Life","v":"100,000+"},{"k":"Gas Variants","v":"Gas HSI/120 · Gas HSI/230 · Gas HSI/12"},{"k":"Fuel Variants","v":"Fuel HSI/230 · Fuel HSI/120 · Fuel HSI/OIL"},{"k":"Certifications","v":"UL Recognized · CE Marked"},{"k":"Sample Lead Time","v":"48 h stock"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Product Specifications","headingHtml":"6 models — <span class=\"accent\">gas & fuel variants</span>.","lead":"Three Gas HSI variants (furnaces, water heaters, HVAC) and three Fuel HSI variants (pellet stoves, oil boilers, biomass). Same Si₃N₄ element core — different voltage and environmental rating.","columns":3,"groups":[{"label":"Gas Hot Surface Igniters","labelVariant":"gas","note":"Gas furnaces · water heaters · boilers · HVAC","items":[{"model":"Gas HSI / 120","subtitle":"120 V AC · North America","badge":"★ Gas · Most Popular","featured":true,"headGradient":true,"imageIcon":"🔥","imageLabel":"Gas furnace / water heater — NA 120V","rows":[{"k":"Voltage","v":"120","unit":"V AC","hot":true},{"k":"Power","v":"300","unit":"W"},{"k":"Surface Temp","v":"1,100–1,300","unit":"°C"},{"k":"Heat-Up","v":"3","unit":"sec"},{"k":"Cycle Life","v":"100,000+"},{"k":"Certification","v":"UL Recognized"}],"foot":"<b>Use:</b> Gas furnaces · HVAC rooftop units · NA tankless water heaters"},{"model":"Gas HSI / 230","subtitle":"230 V AC · Europe / International","imageIcon":"🔥","imageLabel":"Gas furnace / boiler — EU 230V","rows":[{"k":"Voltage","v":"230","unit":"V AC","hot":true},{"k":"Power","v":"300","unit":"W"},{"k":"Surface Temp","v":"1,100–1,300","unit":"°C"},{"k":"Heat-Up","v":"3","unit":"sec"},{"k":"Cycle Life","v":"100,000+"},{"k":"Certification","v":"CE Marked"}],"foot":"<b>Use:</b> EU gas furnaces · condensing boilers · EU water heaters · HVAC"},{"model":"Gas HSI / 12","subtitle":"12 V DC · Battery / Auxiliary","imageIcon":"🔋","imageLabel":"12V DC — portable / RV / auxiliary","rows":[{"k":"Voltage","v":"12","unit":"V DC","hot":true},{"k":"Power","v":"50","unit":"W"},{"k":"Surface Temp","v":"1,100","unit":"°C"},{"k":"Heat-Up","v":"4","unit":"sec"},{"k":"Cycle Life","v":"100,000+"},{"k":"Application","v":"Battery-powered"}],"foot":"<b>Use:</b> RV gas appliances · portable heaters · 12V auxiliary ignition circuits"}]},{"label":"Fuel Hot Surface Igniters","labelVariant":"fuel","note":"Pellet stoves · oil boilers · biomass · kerosene","items":[{"model":"Fuel HSI / 230","subtitle":"230 V AC · Pellet Stove EU","badge":"★ Fuel · Most Popular","featured":true,"headGradient":true,"imageIcon":"🌿","imageLabel":"Wood pellet stove / biomass boiler — 230V EU","rows":[{"k":"Voltage","v":"230","unit":"V AC","hot":true},{"k":"Power","v":"300","unit":"W"},{"k":"Surface Temp","v":"1,100–1,300","unit":"°C"},{"k":"Duty Cycle","v":"15,000–20,000","unit":"cycles/season"},{"k":"Cycle Life","v":"100,000+"},{"k":"Certification","v":"CE Marked"}],"foot":"<b>Use:</b> Wood pellet stoves · biomass boilers · EU market flagship"},{"model":"Fuel HSI / 120","subtitle":"120 V AC · Pellet Stove NA","imageIcon":"🌿","imageLabel":"Pellet stove — 120V NA market","rows":[{"k":"Voltage","v":"120","unit":"V AC","hot":true},{"k":"Power","v":"300","unit":"W"},{"k":"Surface Temp","v":"1,100–1,300","unit":"°C"},{"k":"Duty Cycle","v":"15,000–20,000","unit":"cycles/season"},{"k":"Cycle Life","v":"100,000+"},{"k":"Certification","v":"UL Recognized"}],"foot":"<b>Use:</b> NA pellet stoves · agricultural biomass boilers"},{"model":"Fuel HSI / OIL","subtitle":"230 V AC · Oil & Kerosene","imageIcon":"🛢️","imageLabel":"Oil-fired boiler / kerosene heater","rows":[{"k":"Voltage","v":"230","unit":"V AC","hot":true},{"k":"Power","v":"300","unit":"W"},{"k":"Surface Temp","v":"1,200–1,300","unit":"°C"},{"k":"Environment","v":"Oil vapour resistant"},{"k":"Cycle Life","v":"80,000+"},{"k":"Certification","v":"CE Marked"}],"foot":"<b>Use:</b> Domestic oil boilers · kerosene space heaters · fuel oil burners"}]}],"footnote":"All HSI models: Si₃N₄ element · insulation resistance ≥100 MΩ @ 500V DC · ambient range −40 to +85°C · custom voltage/geometry available at 500+ unit MOQ."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"HSI Product Datasheet","meta":"PDF · all 6 models · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"Dimensional Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request drawings →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"UL Recognition · CE DoC · ISO 9001","btn":"Request scans →","to":"#quote"},{"icon":"🔄","name":"OEM Compatibility Guide","meta":"Norton · White-Rodgers · Robertshaw","btn":"Download guide →","to":"#quote"}]},{"type":"casecta"},{"type":"cert-grid","num":"04 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All HSI models ship with a certificate of conformity. Full certification documentation available for OEM qualification programs.","items":[{"mark":"UL","scope":"UL Recognized Component under UL 60730-1 (automatic electrical controls for household use). Applies to Gas HSI/120, Fuel HSI/120. Documentation available for OEM controls qualification.","tag":"North America"},{"mark":"CE","scope":"CE marked for European Union shipments. Declaration of Conformity provided with CE-marked models. Applies to Gas HSI/230, Gas HSI/12, Fuel HSI/230, Fuel HSI/OIL.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant across all HSI models. Material declarations and substance declarations available for product compliance screening and registration.","tag":"EU · Global"},{"mark":"ISO","scope":"Produced in an ISO 9001:2015 certified facility. Full lot traceability, incoming inspection records, and PPAP-level documentation for OEM qualification programs.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"05 · Get a Quote","headingHtml":"Request samples for <span class=\"accent\">your application</span>.","lead":"Tell us your appliance model, current igniter part number, voltage, and annual volume. We reply within 24h with a quote and fitment confirmation.","quoteNote":"Include your appliance model or current igniter part number for fastest fitment confirmation.","why":["Free samples, 48-hour dispatch on stock 120V/230V — no MOQ.","Drop-in compatibility check — send part number, we confirm fit.","OEM volume pricing from 5,000 units/year.","UL + CE certified — both markets from one supplier."]},{"type":"faq","num":"06 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"What is the difference between Gas HSI and Fuel HSI?","a":"The ceramic element and electrical construction are identical. The difference is the environmental and duty cycle rating. Gas HSI is rated for dry, clean indoor environments at 5–15 cycles/day. Fuel HSI is rated for condensate-rich, ash/particulate environments at 15,000–20,000 cycles/heating season. If in doubt, specify Fuel HSI — it handles both duty profiles."},{"q":"Can HSI/120 and HSI/230 replace my existing Al₂O₃ igniter?","a":"In most gas furnace and pellet stove applications, yes — the HSI is a direct mechanical and electrical drop-in for the common Al₂O₃ platforms (Norton, White-Rodgers, Robertshaw). Send your current part number and we confirm dimensions and wiring before shipping samples. Fitment confirmation in 24 hours."},{"q":"Why does the Fuel HSI last so much longer than Al₂O₃ in pellet stoves?","a":"Three material properties: (1) Si₃N₄ fracture toughness 6–7 MPa·m½ vs Al₂O₃ 3–4 MPa·m½ — thermal shock cracks propagate 2× slower. (2) Si₃N₄ thermal conductivity 20 W/m·K vs Al₂O₃ 3 W/m·K — heat dissipates faster, preventing local hot spots under ash deposits. (3) Si₃N₄ near-zero porosity — no moisture absorption, so no freeze-fracture from condensate."},{"q":"What is the minimum order for OEM pricing?","a":"Samples: no MOQ, 48-hour dispatch. Production pricing tiers start at 5,000 units/year. Custom voltage (277V, 480V, 24V DC) or custom geometry: 500-unit minimum order. Private-label (laser marking): 1,000 units minimum."},{"q":"Are fuel igniters suitable for oil-fired boilers and kerosene heaters?","a":"Yes — the Fuel HSI/OIL variant is specifically rated for oil vapour environments. It operates at 1,200–1,300°C surface temperature (slightly higher than standard pellet stove duty) to ensure reliable oil vapour ignition. Si₃N₄''s chemical resistance to hydrocarbon deposits is superior to Al₂O₃ in oil burner applications."},{"q":"Can you supply private-label igniters with our brand markings?","a":"Yes — laser marking on the metal bracket and insulator collar at no additional cost on production orders of 1,000+ units. Custom packaging (branded box, polybag, label) available at 5,000+ units. Mutual NDA standard before any private-label project."}]},{"type":"related","num":"07 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product · Flagship Detail","title":"BLK Si₃N₄ Igniter","desc":"Full specs, all 6 BLK voltage variants, OEM compatibility data, and datasheet download for our flagship Si₃N₄ igniter.","to":"/products/silicon-nitride-igniters-final"},{"eyebrow":"Product Category","title":"Ceramic Igniters Overview","desc":"All 5 igniter types — Si₃N₄, Universal HSI, Al₂O₃, SiC, and Glow Plugs — with sub-type lineup and spec comparison.","to":"/products/ceramic-igniters"},{"eyebrow":"Application Deep-Dive","title":"Biomass & Pellet Stoves","desc":"Full application guide — pellet stove ignition failure modes, Italian OEM case study data, and Si₃N₄ vs Al₂O₃ field comparison.","to":"/applications/sub-biomass-pellet-stoves"}]}]'::jsonb,
  9,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'b2aa83f6-34d1-4430-a974-1de8637ce4e7',
  'silicon-nitride-heaters',
  'sku',
  'ceramic-heaters',
  'Ceramic Heaters & Elements',
  '{"title":"Silicon Nitride Heaters | Fast Heat Transfer & Long Life","description":"Silicon nitride heaters deliver rapid thermal response, reaching 1100°C in 3 seconds, with excellent thermal shock resistance and long service life."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Heaters & Elements","to":"/products/ceramic-heaters"},{"label":"Silicon Nitride Heaters"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Ceramic Heaters & Elements","title":"Silicon nitride heaters,","titleHighlight":"flat, plate & rod.","subtitle":"Si₃N₄ resistive heating elements for <b>pellet stoves, industrial furnaces, and semiconductor wafer-chuck temperature control</b>. Ultra-fast thermal response (3 seconds to 1100°C), custom voltage from 12V to 230V, and custom geometry to OEM drawing.","stats":[{"num":"1300°C","lbl":"Max Surface Temp"},{"num":"3 sec","lbl":"Heat-Up"},{"num":"Custom","lbl":"Voltage & Size"},{"num":"ISO 9001","lbl":"Certified"}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Silicon Nitride Heaters · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Type","v":"Resistive"},{"k":"Max Surface Temp","v":"1300°C"},{"k":"Voltage","v":"12–230V custom"},{"k":"Heat-Up","v":"3 seconds"},{"k":"Geometry","v":"Flat / Plate / Rod"},{"k":"Sample Lead Time","v":"48 h"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Heater Types","headingHtml":"Three Si₃N₄ heater <span class=\"accent\">configurations</span>.","lead":"Same Si₃N₄ resistive core, three form factors. Choose by appliance geometry and mounting requirement.","columns":3,"items":[{"model":"Flat Blade Heater","subtitle":"Pellet Stove · Appliance","badge":"★ Most Popular","featured":true,"headGradient":true,"imageIcon":"🔆","imageLabel":"Flat Blade — front view","rows":[{"k":"Rated Voltage","v":"12–230","unit":"V"},{"k":"Power","v":"50–400","unit":"W","hot":true},{"k":"Surface Temp","v":"1100–1300","unit":"°C"},{"k":"Heat-Up","v":"3","unit":"s"},{"k":"Cycle Life","v":"100K+"}],"foot":"<b>Use:</b> Pellet stoves · BBQ grills · gas appliances"},{"model":"Heating Plate","subtitle":"Flat geometry · wafer chuck","imageIcon":"⬛","imageLabel":"Heating Plate — top view","rows":[{"k":"Form","v":"Flat plate"},{"k":"Flatness","v":"±0.1","unit":"mm"},{"k":"Surface Temp","v":"up to 1300","unit":"°C"},{"k":"Voltage","v":"Custom"},{"k":"Size","v":"Custom","unit":"mm"}],"foot":"<b>Use:</b> Semiconductor wafer chucks · press sintering"},{"model":"Rod Heater","subtitle":"Cylindrical · furnace","imageIcon":"🔩","imageLabel":"Rod Heater — side view","rows":[{"k":"Diameter","v":"Ø 5–50","unit":"mm"},{"k":"Length","v":"50–600","unit":"mm"},{"k":"Surface Temp","v":"up to 1300","unit":"°C"},{"k":"Voltage","v":"Custom"},{"k":"Environment","v":"Air · inert gas"}],"foot":"<b>Use:</b> Industrial furnaces · tube furnaces · lab"}],"footnote":"All Si₃N₄ heaters: operating temp range −40 to +85°C ambient · insulation resistance ≥100 MΩ · UL/CE available."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">Si₃N₄ heaters</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify voltage, geometry (flat/plate/rod), dimensions, and annual volume.","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Max operating temperature?","a":"Si₃N₄ heaters: up to 1300°C surface temperature. Ambient operating range −40 to +85°C."},{"q":"Can you match my existing heater geometry?","a":"Send STEP, DWG, or PDF — DFM review and quote within 48 hours. We match flat, plate, rod, and complex profile geometries."},{"q":"What voltage options are available?","a":"12V, 120V, 230V standard. Custom voltages on production orders — specify resistance target and we design accordingly."},{"q":"How quickly can I get samples?","a":"Stock flat blade samples: 48 hours. Custom geometry: 7–14 days from drawing approval."},{"q":"Do you offer OEM/private-label?","a":"Laser-marked branding free on production orders of 500+ units. Mutual NDA standard."},{"q":"What is the insulation resistance?","a":"≥100 MΩ at 500V DC across the full ambient temperature range. Tested and certified per batch."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Ceramic Heaters & Elements","desc":"All five heater types — Si₃N₄, SiC, Al₂O₃, and AlN in one overview.","to":"/products/ceramic-heaters"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Properties, thermal shock resistance, and why Si₃N₄ outperforms alumina in high-cycle heating.","to":"/materials/silicon-nitride"},{"eyebrow":"Application","title":"Advanced Combustion & Ignition","desc":"Pellet stoves, BBQ grills, gas furnaces, and boilers — all 8 ignition scenarios.","to":"/applications/advanced-combustion-fixed"}]}]'::jsonb,
  10,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'bde22157-f6e1-41df-b0db-89207ee6f899',
  'silicon-nitride-shaft-rod',
  'sku',
  'ceramic-structural',
  'Ceramic Structural Parts',
  '{"title":"Silicon Nitride Shaft Rods | High Precision & Lightweight","description":"High-precision Si₃N₄ ceramic shaft rods for CNC spindles, pump shafts, and turbo-machinery, offering low weight, high hardness, and non-magnetic performance."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Structural Parts","to":"/products/ceramic-structural"},{"label":"Si₃N₄ Shaft Rods"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Ceramic Structural Parts","title":"Silicon nitride shaft rods,","titleHighlight":"precision to ±0.01mm.","subtitle":"High-precision Si₃N₄ ceramic shaft rods for <b>high-speed CNC spindles, pump shafts, and turbo-machinery</b>. 60% lighter than steel, hardness 78 HRC, zero magnetic signature, and lubricant-free capable. Standard Ø3–100mm; custom dimensions to OEM drawing.","stats":[{"num":"±0.01mm","lbl":"Ground Tolerance"},{"num":"HRC 78","lbl":"Hardness"},{"num":"60%","lbl":"Lighter than Steel"},{"num":"Non-magnetic","lbl":"Zero Mag. Sig."}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Si₃N₄ Shaft Rods · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Density","v":"3.2 g/cm³"},{"k":"Hardness","v":"HRC 78"},{"k":"Diameter","v":"Ø 3–100mm"},{"k":"Tolerance","v":"±0.01mm ground"},{"k":"Magnetic","v":"Non-magnetic"},{"k":"Sample Lead Time","v":"14 d"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Size Ranges","headingHtml":"Three shaft rod <span class=\"accent\">diameter ranges</span>.","lead":"All three ranges share the same Si₃N₄ material. Choose based on your bore diameter and bearing interface requirement.","columns":3,"items":[{"model":"Small Diameter","subtitle":"Ø 3–20 mm · precision class","badge":"★ Highest Volume","featured":true,"headGradient":true,"imageIcon":"🔩","imageLabel":"Small diameter shaft — close-up","rows":[{"k":"Diameter","v":"Ø 3–20","unit":"mm"},{"k":"Tolerance","v":"±0.01","unit":"mm","hot":true},{"k":"Surface Finish","v":"Ra ≤0.2","unit":"µm"},{"k":"Straightness","v":"≤0.01/100","unit":"mm"},{"k":"Hardness","v":"HRC 78"}],"foot":"<b>Use:</b> CNC spindle shafts · dental turbines · precision instruments"},{"model":"Medium Diameter","subtitle":"Ø 20–50 mm · industrial class","imageIcon":"⚙️","imageLabel":"Medium diameter shaft","rows":[{"k":"Diameter","v":"Ø 20–50","unit":"mm"},{"k":"Tolerance","v":"±0.02","unit":"mm"},{"k":"Surface Finish","v":"Ra ≤0.4","unit":"µm"},{"k":"Straightness","v":"≤0.02/100","unit":"mm"},{"k":"Hardness","v":"HRC 78"}],"foot":"<b>Use:</b> Pump shafts · compressor shafts · chemical equipment"},{"model":"Large Diameter","subtitle":"Ø 50–100 mm · heavy duty","imageIcon":"🏭","imageLabel":"Large diameter shaft","rows":[{"k":"Diameter","v":"Ø 50–100","unit":"mm"},{"k":"Tolerance","v":"±0.05","unit":"mm"},{"k":"Surface Finish","v":"Ra ≤0.8","unit":"µm"},{"k":"Length","v":"Up to 600","unit":"mm"},{"k":"Application","v":"Turbo-machinery"}],"foot":"<b>Use:</b> Turbo-machinery · large pump shafts · custom structural"}],"footnote":"All Si₃N₄ shaft rods: density 3.2 g/cm³ · non-magnetic · lubricant-free · operating temp −40 to +800°C."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">Si₃N₄ shaft rods</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify diameter (OD), length, tolerance, and annual volume.","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Why Si₃N₄ over steel for shaft rods?","a":"Si₃N₄ is 60% lighter than steel, has zero magnetic signature, and can run lubricant-free. At high speeds (>40,000 RPM), the lighter shaft reduces centrifugal loads on bearings by 60%, extending bearing life 3× or more."},{"q":"What is the tightest tolerance?","a":"Ground ceramic: ±0.01mm on diameter and straightness. Ra ≤0.2µm surface finish on precision class. CMM inspection report with every production shipment."},{"q":"Can you match my existing steel shaft OD and length?","a":"Yes — send drawing (STEP/DWG) or just specify OD, length, and tolerance. We confirm material capability and quote within 48 hours."},{"q":"What is the minimum order quantity?","a":"Prototypes: no MOQ (single-unit quotes available). Production: 50 units minimum for standard dimensions. Volume pricing from 500 units."},{"q":"Operating temperature range?","a":"Si₃N₄ shaft rods operate continuously to 800°C. Ambient range −40 to +85°C. Suitable for high-temperature furnace, autoclave, and process equipment applications."},{"q":"Do you stock standard sizes?","a":"Common OD sizes (Ø5, Ø6, Ø8, Ø10, Ø12, Ø16, Ø20mm) in lengths to 300mm are held in stock. Non-stock: 14-day lead time."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Ceramic Structural Parts","desc":"All 12 sub-types: shafts, turbines, wear parts, seals, and custom machined components.","to":"/products/ceramic-structural"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Density, hardness, thermal shock resistance, and machinability of Si₃N₄ — the engineering data.","to":"/materials/silicon-nitride"},{"eyebrow":"Related Product","title":"Precision Ceramic Bearings","desc":"Full Si₃N₄ and hybrid ceramic bearings for high-speed spindles — paired with Si₃N₄ shaft rods.","to":"/products/precision-bearings"}]}]'::jsonb,
  11,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '977d75b6-1731-4935-8b6b-dd3e8b3a1b01',
  'silicon-nitride-balls',
  'sku',
  'ceramic-balls',
  'Ceramic Balls',
  '{"title":"Silicon Nitride Balls | Precision Si₃N₄ Ceramic Balls","description":"Precision Si₃N₄ ceramic balls from G3–G60 and Ø0.4–100mm. Up to 60% lighter than steel for high-speed precision bearings, ball screws, and valve seats."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Ceramic Balls","to":"/products/ceramic-balls"},{"label":"Silicon Nitride Balls"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Precision Ceramic Balls","title":"Silicon nitride balls,","titleHighlight":"G3 to G60.","subtitle":"Si₃N₄ ceramic balls for <b>precision bearings, ball screws, and valve seats</b>. 60% lighter than steel, hardness 78 HRC, non-magnetic, and lubricant-free capable. Grade G3 to G60 in stock. Diameter 0.4mm to 100mm.","stats":[{"num":"G3–G60","lbl":"Grade Range"},{"num":"Ø 0.4–100mm","lbl":"Diameter"},{"num":"HRC 78","lbl":"Hardness"},{"num":"Non-magnetic","lbl":"Zero Mag. Sig."}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Silicon Nitride Balls · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Density","v":"3.2 g/cm³"},{"k":"Hardness","v":"HRC 78"},{"k":"Size Range","v":"Ø 0.4–100mm"},{"k":"Grade Range","v":"G3–G60"},{"k":"Surface Finish","v":"Ra ≤0.01µm"},{"k":"Sample Lead Time","v":"48 h"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Grade Tiers","headingHtml":"Three grade <span class=\"accent\">tiers for every application</span>.","lead":"ISO 3290 grade = max allowable deviation in micrometres. Lower grade = tighter tolerance = higher precision. Match grade to your bearing accuracy class.","columns":3,"items":[{"model":"Precision Grade","subtitle":"G3 / G5 · aerospace & instrument","badge":"★ Highest Precision","featured":true,"headGradient":true,"imageIcon":"⚫","imageLabel":"G3 ball — microscope view","rows":[{"k":"Grade","v":"G3 / G5"},{"k":"Max Deviation","v":"0.08 / 0.13","unit":"µm","hot":true},{"k":"Bearing Class","v":"P2 / P4"},{"k":"Size Range","v":"Ø 0.4–20","unit":"mm"},{"k":"Surface","v":"Ra ≤0.008","unit":"µm"}],"foot":"<b>Use:</b> Gyroscopes · aerospace bearings · dental turbines"},{"model":"Engineering Grade","subtitle":"G10 / G16 · CNC & precision","imageIcon":"⚙️","imageLabel":"G10 ball — production batch","rows":[{"k":"Grade","v":"G10 / G16"},{"k":"Max Deviation","v":"0.25 / 0.4","unit":"µm"},{"k":"Bearing Class","v":"P4 / P5"},{"k":"Size Range","v":"Ø 0.4–50","unit":"mm"},{"k":"Surface","v":"Ra ≤0.016","unit":"µm"}],"foot":"<b>Use:</b> CNC spindles · machine tool bearings"},{"model":"Standard Grade","subtitle":"G25 / G40 / G60 · industrial","imageIcon":"📦","imageLabel":"Standard grade — bulk supply","rows":[{"k":"Grade","v":"G25 / G40 / G60"},{"k":"Max Deviation","v":"0.6 / 1.0 / 1.5","unit":"µm"},{"k":"Bearing Class","v":"P5 / P6 / P0"},{"k":"Size Range","v":"Ø 1–100","unit":"mm"},{"k":"Application","v":"Industrial · valve"}],"foot":"<b>Use:</b> Industrial bearings · ball screws · valve seats"}],"footnote":"All Si₃N₄ balls: density 3.2 g/cm³ · hardness HRC 78 · non-magnetic · operating temp −40 to +800°C."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">Si₃N₄ balls</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify diameter (mm), grade (G3/G5/G10/G16/G25/G40/G60), and annual volume.","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Which grade do I need?","a":"Match to bearing accuracy class: P2→G5, P4→G10–G16, P5→G16–G25, P0→G25–G60. Send bearing model number and we confirm."},{"q":"What is the minimum order?","a":"No MOQ for samples. Standard sizes in stock dispatch within 48h. Custom sizes below 5mm: 200pc minimum."},{"q":"How does Si₃N₄ compare to steel balls?","a":"Si₃N₄: 60% lighter (3.2 vs 7.8 g/cm³), harder (HRC 78 vs HRC 60), non-magnetic, runs without lubrication. 3× longer bearing life at high speed vs steel."},{"q":"What surface finish is available?","a":"Standard: Ra ≤0.01µm (mirror). G3 precision grade: Ra ≤0.008µm. Custom Ra to specification available."},{"q":"Do you stock all sizes?","a":"Common bearing ball sizes (Ø1.5–50.8mm) held in stock in G10 and G25. G3/G5 precision grade: 2–4 week lead time. Non-standard: quote on request."},{"q":"Aerospace and medical certifications?","a":"Material cert with every shipment. XRF purity analysis, AS9100 traceability, and medical-grade documentation available for OEM qualification programs."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Ceramic Balls","desc":"Si₃N₄ and ZrO₂ balls — full grade range overview and application comparison.","to":"/products/ceramic-balls"},{"eyebrow":"Related Product","title":"Precision Ceramic Bearings","desc":"Full Si₃N₄ bearings and hybrid bearings using Si₃N₄ balls.","to":"/products/precision-bearings"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Full material properties: density, hardness, fracture toughness, and thermal shock resistance.","to":"/materials/silicon-nitride"}]}]'::jsonb,
  12,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'd00a34fe-efb2-4fde-a1eb-3789666d682d',
  'full-silicon-nitride-bearings',
  'sku',
  'precision-bearings',
  'Precision Ceramic Bearings',
  '{"title":"Full Silicon Nitride Bearings | Extreme Environment Use","description":"Full Si₃N₄ ceramic bearings with P0–P5 precision and Ø3–200mm bores for high-temperature, corrosive, magnetically sensitive, and lubrication-free applications."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Precision Ceramic Bearings","to":"/products/precision-bearings"},{"label":"Full Si₃N₄ Bearings"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Precision Ceramic Bearings","title":"Full silicon nitride bearings,","titleHighlight":"P0 to P5.","subtitle":"Rings and balls both in Si₃N₄ — the highest-performance ceramic bearing for <b>high-temperature, corrosive, magnetically sensitive, and lubrication-free applications</b>. Precision P0 to P5, bore Ø3–200mm. Wind turbines, CNC spindles, aerospace gyroscopes.","stats":[{"num":"P0–P5","lbl":"Precision Class"},{"num":"Ø 3–200mm","lbl":"Bore Range"},{"num":"800°C","lbl":"Max Temperature"},{"num":"Non-magnetic","lbl":"Zero Mag. Sig."}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Full Si₃N₄ Bearings · At a Glance","rows":[{"k":"Material","v":"Full Si₃N₄"},{"k":"Type","v":"Full ceramic"},{"k":"Precision","v":"P0–P5"},{"k":"Bore Range","v":"Ø 3–200mm"},{"k":"Max Temp","v":"800°C continuous"},{"k":"Lubrication","v":"Not required"},{"k":"Sample Lead Time","v":"2–4 weeks"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Bearing Series","headingHtml":"Three standard <span class=\"accent\">series available</span>.","lead":"6xxx deep groove and 7xxx angular contact are the most common. Cylindrical and custom geometries available to drawing.","columns":3,"items":[{"model":"Deep Groove · 6xxx Series","subtitle":"P0–P5 · Ø 3–200mm","badge":"★ Most Stocked","featured":true,"headGradient":true,"imageIcon":"🔵","imageLabel":"6xxx deep groove — outer ring","rows":[{"k":"Series","v":"6xxx · deep groove"},{"k":"Bore Range","v":"Ø 3–200","unit":"mm"},{"k":"Precision","v":"P0–P5","hot":true},{"k":"Max Speed","v":"100K+","unit":"RPM"},{"k":"Temp Range","v":"−40 to +800","unit":"°C"}],"foot":"<b>Use:</b> General precision · pumps · medical equipment"},{"model":"Angular Contact · 7xxx Series","subtitle":"P2–P5 · high-speed","imageIcon":"⚙️","imageLabel":"7xxx angular contact — assembly","rows":[{"k":"Series","v":"7xxx · angular contact"},{"k":"Bore Range","v":"Ø 5–150","unit":"mm"},{"k":"Precision","v":"P2–P5"},{"k":"Contact Angle","v":"15° / 25°"},{"k":"Preload","v":"Light / Medium"}],"foot":"<b>Use:</b> CNC spindles · turbines · high-speed precision"},{"model":"Cylindrical Roller · NJ / NF","subtitle":"High radial load","imageIcon":"🏭","imageLabel":"Cylindrical roller — cross-section","rows":[{"k":"Series","v":"NJ · NF · N"},{"k":"Bore Range","v":"Ø 10–200","unit":"mm"},{"k":"Load","v":"High radial"},{"k":"Temperature","v":"Up to 800","unit":"°C"},{"k":"Application","v":"Pump shafts"}],"foot":"<b>Use:</b> High-load pump shafts · industrial machinery"}],"footnote":"All full Si₃N₄ bearings: non-magnetic · lubrication-free capable · corrosion-resistant · operating to 800°C continuous."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">full Si₃N₄ bearings</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify bore, OD, width (or series/size code), precision class, and annual volume.","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"What precision class do I need?","a":"P0 for general industrial; P6 for machine tool spindles; P5/P4 for high-speed CNC; P2 for gyroscopes and precision instruments. Send RPM and bore — we''ll recommend."},{"q":"Full ceramic vs hybrid — which is better?","a":"Full ceramic (Si₃N₄ rings + balls): for high temperature, corrosive media, magnetic sensitivity, or lubrication-free. Hybrid (steel rings + Si₃N₄ balls): lower cost, high speed, clean environments."},{"q":"Do full Si₃N₄ bearings really run lubrication-free?","a":"Yes — Si₃N₄ has self-lubricating properties at the contact interface. Running without grease is validated in vacuum, clean room, and food-safe applications. Speed and load limits apply."},{"q":"What is the lead time for non-standard sizes?","a":"Standard 6xxx/7xxx series in P0/P5: 2–4 weeks. Precision P2/P4 class: 4–8 weeks. Custom bore/OD/width: 8–12 weeks."},{"q":"Suitable for MRI-compatible equipment?","a":"Yes — Si₃N₄ has zero magnetic permeability. Full Si₃N₄ bearings are used in MRI-compatible surgical robots and navigation instruments where steel bearings are prohibited."},{"q":"What documentation is included?","a":"Material cert, dimensional report, and bearing accuracy class cert standard. PPAP, first-article, and SPC data for OEM qualification programs."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Precision Ceramic Bearings","desc":"All four bearing types: Full Si₃N₄, Full ZrO₂, Si₃N₄ Hybrid, ZrO₂ Hybrid.","to":"/products/precision-bearings"},{"eyebrow":"Related Product","title":"Si₃N₄ Ceramic Balls","desc":"Bearing balls for the full Si₃N₄ bearing — G3 to G16, all standard sizes.","to":"/products/silicon-nitride-balls"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Why Si₃N₄ outperforms steel and alumina in bearing applications.","to":"/materials/silicon-nitride"}]}]'::jsonb,
  13,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  '25f56cfd-ee23-45d9-894a-cd01504c7852',
  'silicon-nitride-grinding-balls',
  'sku',
  'grinding-media',
  'Grinding Media',
  '{"title":"Silicon Nitride Grinding Balls | Clean & Efficient Milling","description":"Si₃N₄ grinding balls offer higher milling efficiency, reduced wear, and zero contamination in battery slurries and ultra-high-purity ceramic powder production."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Grinding Media","to":"/products/grinding-media"},{"label":"Si₃N₄ Grinding Balls"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Ceramic Grinding Media","title":"Silicon nitride grinding balls,","titleHighlight":"zero contamination.","subtitle":"Si₃N₄ grinding balls for <b>hard mineral milling, battery electrode slurries, and ultra-high-purity ceramic powder production</b>. Hardness 78 HRC — outlasts alumina media 3–5×. Zero metal contamination critical for battery and electronics applications.","stats":[{"num":"78 HRC","lbl":"Hardness"},{"num":"0.4–100mm","lbl":"Bead Size"},{"num":"3–5×","lbl":"Longer than Al₂O₃"},{"num":"Zero","lbl":"Metal Contamination"}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Si₃N₄ Grinding Balls · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Density","v":"3.2 g/cm³"},{"k":"Hardness","v":"78 HRC"},{"k":"Size Range","v":"Ø 0.4–100mm"},{"k":"Contamination","v":"Zero metal"},{"k":"Wear vs Al₂O₃","v":"3–5× lower"},{"k":"Sample Lead Time","v":"48 h"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Size Ranges","headingHtml":"Three size <span class=\"accent\">ranges for every mill</span>.","lead":"Fine beads for high-energy attritor and bead mills; coarse balls for ball mills and rotary drums. All sizes: same Si₃N₄ composition, same zero-contamination performance.","columns":3,"items":[{"model":"Fine Beads","subtitle":"Ø 0.4–1 mm · bead mill","badge":"★ Battery Applications","featured":true,"headGradient":true,"imageIcon":"⚫","imageLabel":"Fine beads — macro photo","rows":[{"k":"Size","v":"Ø 0.4–1","unit":"mm"},{"k":"Hardness","v":"78","unit":"HRC","hot":true},{"k":"Density","v":"3.2","unit":"g/cm³"},{"k":"D50 Target","v":"<1","unit":"µm"},{"k":"Application","v":"Battery slurry"}],"foot":"<b>Use:</b> Battery cathode/anode · pigments · ultra-fine grinding"},{"model":"Medium Balls","subtitle":"Ø 1–10 mm · versatile","imageIcon":"⚙️","imageLabel":"Medium balls — jar mill","rows":[{"k":"Size","v":"Ø 1–10","unit":"mm"},{"k":"Hardness","v":"78","unit":"HRC"},{"k":"Density","v":"3.2","unit":"g/cm³"},{"k":"D50 Target","v":"1–50","unit":"µm"},{"k":"Application","v":"Ceramic powder"}],"foot":"<b>Use:</b> Ceramic powders · coatings · minerals"},{"model":"Coarse Balls","subtitle":"Ø 10–100 mm · ball mill","imageIcon":"🏭","imageLabel":"Coarse balls — drum mill","rows":[{"k":"Size","v":"Ø 10–100","unit":"mm"},{"k":"Hardness","v":"78","unit":"HRC"},{"k":"Density","v":"3.2","unit":"g/cm³"},{"k":"D50 Target","v":"50–500","unit":"µm"},{"k":"Application","v":"Hard minerals"}],"foot":"<b>Use:</b> Hard minerals · coarse ceramic grinding"}],"footnote":"All Si₃N₄ grinding balls: certified zero Fe contamination · batch-to-batch consistency · material cert with every shipment."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">Si₃N₄ grinding balls</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify bead size (mm), application (battery/pigment/mineral), and annual weight requirement (kg/yr).","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"Why Si₃N₄ for battery cathode milling?","a":"Battery slurry requires zero Fe contamination — Si₃N₄ contributes no metal ions. Hardness 78 HRC means 3–5× lower wear than alumina, further reducing contamination risk and lowering media replacement frequency."},{"q":"What size bead for my application?","a":"Target D50 determines optimal bead size: D50 < 1µm → use ≤0.5mm beads. D50 1–10µm → 1–3mm beads. D50 > 10µm → 3–10mm. Send your feed D90 and target D50 — we''ll recommend."},{"q":"How do I calculate media charge?","a":"Standard: 50–60% of mill volume. Si₃N₄ density 3.2 g/cm³ (lighter than ZrO₂ at 6.0 g/cm³) — adjust fill weight accordingly. We''ll advise on your specific mill geometry."},{"q":"Wear rate vs alumina and ZrO₂?","a":"Si₃N₄ wear rate: 3–5× lower than alumina, 1.5–2× lower than ZrO₂ in hard abrasive slurries. Higher initial cost offset by longer replacement intervals and lower contamination."},{"q":"What sample quantity is available?","a":"No MOQ on samples: 100g to 1kg sample packs for mill trials. No charge for qualification samples. Sample charges credit against first production order."},{"q":"What documentation is supplied?","a":"Material certificate (XRF purity), SDS, and lot traceability with every shipment. Trace metal content cert for battery manufacturer qualification programs."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Grinding Media","desc":"Si₃N₄ and ZrO₂ grinding balls — full range comparison.","to":"/products/grinding-media"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Density, hardness, chemical resistance, and why Si₃N₄ outperforms alumina in grinding applications.","to":"/materials/silicon-nitride"},{"eyebrow":"Application","title":"Clean Energy & Battery","desc":"Battery cathode slurry milling, electrode processing, and the role of ceramic media.","to":"/applications/app-clean-energy"}]}]'::jsonb,
  14,
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
  updated_at = now();

insert into public.product_pages (
  category_id, slug, page_type, parent_slug, parent_label,
  seo, breadcrumb, hero, hero_side, hero_ctas, spotlight, sections,
  sort_order, published
) values (
  'ab2b0569-e7d6-4b83-9329-77c2364452f1',
  'silicon-nitride-powder',
  'sku',
  'ceramic-powder',
  'Superfine Ceramic Powder',
  '{"title":"Silicon Nitride Powder | ≥99.5% Purity & Custom D50","description":"High-purity α/β-phase Si₃N₄ powder with custom D50 from 0.3–5µm, low oxygen content, for advanced ceramic manufacturing and composite reinforcement."}'::jsonb,
  '[{"label":"Home","to":"/"},{"label":"Products","to":"/products"},{"label":"Superfine Ceramic Powder","to":"/products/ceramic-powder"},{"label":"Si₃N₄ Powder"}]'::jsonb,
  '{"eyebrow":"★ Flagship · Superfine Ceramic Powder","title":"Silicon nitride powder,","titleHighlight":"purity ≥99.5%.","subtitle":"High-purity α/β-phase Si₃N₄ powder for <b>advanced ceramics sintering, thermal spray coatings, and composite reinforcement</b>. Purity ≥99.5%, low oxygen content for optimal sintering, D50 from 0.3µm. Batch-certified by XRF analysis.","stats":[{"num":"≥99.5%","lbl":"Purity"},{"num":"0.3–5µm","lbl":"D50 Range"},{"num":"α/β Phase","lbl":"Certified"},{"num":"Research-Grade","lbl":"Quality"}]}'::jsonb,
  'spotlight',
  '{"primary":{"label":"Request a Quote →","href":"#quote"},"secondary":{"label":"Download Datasheet ↓","href":"#downloads"}}'::jsonb,
  '{"tag":"Si₃N₄ Powder · At a Glance","rows":[{"k":"Material","v":"Si₃N₄"},{"k":"Purity","v":"≥99.5% (XRF)"},{"k":"Phase","v":"α-phase >90% std."},{"k":"D50 Range","v":"0.3–5µm custom"},{"k":"Oxygen Content","v":"Low (sintering grade)"},{"k":"Batch Cert","v":"XRF + PSD included"},{"k":"Sample","v":"From 100g"}]}'::jsonb,
  '[{"type":"spec-grid","num":"01 · Powder Grades","headingHtml":"Three Si₃N₄ powder <span class=\"accent\">grades</span>.","lead":"Standard, high-purity, and ultra-fine grades cover sintering, thermal spray, and R&D applications. Custom D50 and phase ratios available on request.","columns":3,"items":[{"model":"Standard Sintering Grade","subtitle":"α >90% · D50 0.5–2µm","badge":"★ Most Common","featured":true,"headGradient":true,"imageIcon":"⚫","imageLabel":"Standard grade — SEM view","rows":[{"k":"Purity","v":"≥99.5","unit":"%","hot":true},{"k":"Phase","v":"α >90% α-Si₃N₄"},{"k":"D50","v":"0.5–2","unit":"µm"},{"k":"D90","v":"<5","unit":"µm"},{"k":"Oxygen","v":"≤1.5","unit":"wt%"}],"foot":"<b>Use:</b> Structural ceramics sintering · pressing · green machining"},{"model":"High-Purity Grade","subtitle":"α >95% · D50 0.3–1µm","imageIcon":"🔬","imageLabel":"HP grade — particle analysis","rows":[{"k":"Purity","v":"≥99.8","unit":"%"},{"k":"Phase","v":"α >95% α-Si₃N₄"},{"k":"D50","v":"0.3–1","unit":"µm"},{"k":"D90","v":"<2","unit":"µm"},{"k":"Oxygen","v":"≤0.8","unit":"wt%"}],"foot":"<b>Use:</b> High-strength sintering · semiconductor tooling"},{"model":"Ultra-Fine Grade","subtitle":"D50 <0.3µm · R&D","imageIcon":"📦","imageLabel":"Ultra-fine — packaging","rows":[{"k":"Purity","v":"≥99.5","unit":"%"},{"k":"Phase","v":"α/β custom"},{"k":"D50","v":"<0.3","unit":"µm"},{"k":"BET","v":"≥12","unit":"m²/g"},{"k":"Packaging","v":"100g–1kg"}],"foot":"<b>Use:</b> R&D · thermal spray · composite reinforcement"}],"footnote":"All Si₃N₄ powders: XRF purity cert · PSD report (D10/D50/D90) · SDS · lot traceability with every shipment."},{"type":"downloads","id":"downloads","num":"02 · Datasheet & Downloads","headingHtml":"Drawings, datasheets, <span class=\"accent\">and certs</span>.","lead":"Everything your engineering and procurement teams need.","softBg":true,"items":[{"icon":"📄","name":"Product Datasheet","meta":"PDF · full specifications","btn":"Download PDF →","to":"#quote"},{"icon":"📐","name":"2D / 3D Drawings","meta":"STEP · DWG · PDF · on request","btn":"Request files →","to":"#quote"},{"icon":"🛡️","name":"Certification Files","meta":"ISO 9001 · CE · RoHS · REACH","btn":"Request scans →","to":"#quote"}]},{"type":"cert-grid","num":"03 · Certifications & Compliance","headingHtml":"Certified for <span class=\"accent\">global markets</span>.","lead":"All products shipped with certificate of conformity. Additional certification documentation available for OEM qualification programs.","items":[{"mark":"ISO","scope":"ISO 9001 quality management system. Full lot traceability and PPAP-level documentation for OEM programs.","tag":"Quality System"},{"mark":"CE","scope":"CE marking for European Union shipments. Declaration of Conformity provided with CE-marked products.","tag":"European Union"},{"mark":"RoHS","scope":"RoHS and REACH compliant. Material declarations available for restricted-substance compliance screening.","tag":"EU · Global"},{"mark":"IATF","scope":"Produced in an IATF 16949 / ISO 9001 facility. PPAP documentation available for automotive-adjacent applications.","tag":"Quality System"}]},{"type":"quote","id":"quote","num":"04 · Get a Quote","headingHtml":"Request a quote for <span class=\"accent\">Si₃N₄ powder</span>.","lead":"Tell us your specification, dimensions, grade, and annual volume. Our engineers reply within one business day with a quote and matched datasheet.","quoteNote":"Specify grade (standard/high-purity/ultra-fine), D50 target, phase ratio, and annual volume (kg/yr).","why":["Free samples, 48-hour dispatch on stock items — no MOQ.","Custom to drawing: DFM review in 48h, prototype in 14 days.","Direct manufacturer pricing — no trading layer.","ISO 9001 certified — full material certs with every shipment."]},{"type":"faq","num":"05 · Engineering FAQ","headingHtml":"The questions <span class=\"accent\">we get most</span>.","softBg":true,"items":[{"q":"What phase ratio is standard?","a":"Standard grade: α-phase >90%, with the balance as β-Si₃N₄. β-phase and custom α/β blend available — specify your sintering route and we recommend the right ratio."},{"q":"Can you hit a specific D50 target?","a":"Yes — jet milling and air classification to D50 ±10% of target. Specify D50 and D90 at order. Particle size distribution (laser diffraction) included with every shipment."},{"q":"Minimum order quantity?","a":"Sample: 100g–1kg, no charge for qualification. Production minimum: 5kg. Bulk pricing from 50kg. Scale-up without chemistry change — critical for R&D-to-production transition."},{"q":"What is the oxygen content?","a":"Standard grade: ≤1.5 wt% oxygen. High-purity grade: ≤0.8 wt%. Low oxygen is critical for achieving high green density and preventing oxide-phase formation during sintering."},{"q":"What documentation is supplied?","a":"Certificate of analysis (purity by XRF, PSD by laser diffraction, phase by XRD), SDS, and lot traceability standard. ICP-MS trace element analysis available for semiconductor-grade applications."},{"q":"Can you supply with sintering aids pre-mixed?","a":"Yes — Si₃N₄ powder with Y₂O₃, Al₂O₃, or MgO sintering additives pre-mixed and milled to specified ratios. Available with minimum order — specify additive type and wt%."}]},{"type":"related","num":"06 · Related","headingHtml":"Explore <span class=\"accent\">further</span>.","items":[{"eyebrow":"Product Category","title":"Superfine Ceramic Powder","desc":"Si₃N₄ and ZrO₂ powder — full grade range and application comparison.","to":"/products/ceramic-powder"},{"eyebrow":"Material","title":"Silicon Nitride (Si₃N₄)","desc":"Full material chemistry, sintering behaviour, and mechanical properties of Si₃N₄.","to":"/materials/silicon-nitride"},{"eyebrow":"Application","title":"Clean Energy & Battery","desc":"Advanced ceramics for battery manufacturing, fuel cell electrolytes, and energy applications.","to":"/applications/app-clean-energy"}]}]'::jsonb,
  15,
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
  updated_at = now();

-- Lineup items (requires page ids from slugs)
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Hot Surface Igniter · CN-300',
  '🔥',
  'Our flagship silicon nitride hot surface igniter for pellet stoves, BBQ grills, gas furnaces, and water heaters. Designed for high-cycle thermal duty, with 12V, 120V, and 230V variants built around a Si₃N₄ heating core.',
  ARRAY['Cycle life 100K+', 'Heat-up 3 s', '12–230V', 'UL/CE'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/products/silicon-nitride-igniters-final',
  (select id from public.product_pages where slug = 'silicon-nitride-igniters-final' limit 1),
  'View Details →',
  true,
  '★ Flagship',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Universal Hot Surface Igniter',
  '♨️',
  'General-purpose hot surface igniter for gas and liquid-fuel appliances. Compatible with most North American and EU gas appliance interfaces, standard mounting flanges.',
  ARRAY['Gas + fuel', 'Standard flange', 'NA / EU fit'],
  'Si₃N₄ or Al₂O₃',
  null,
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Alumina (Al₂O₃) Igniter',
  '📜',
  'Lower-cost replacement for older alumina-based ignition systems. Best for low-duty-cycle applications and cost-sensitive volume where Si₃N₄ cycle life isn''t required.',
  ARRAY['Legacy replace', 'Low-duty', 'Cost-optimized'],
  'Al₂O₃',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'SiC Hot Rod Igniter',
  '🌡️',
  'High-temperature SiC heating element for industrial boilers and commercial water heating. Operates at higher surface temperature (up to 1500°C) than Si₃N₄ alternatives.',
  ARRAY['Surface 1500°C', 'Industrial boiler', 'High-temp'],
  'SiC',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Glow Plug',
  '🔌',
  'Cylindrical glow-plug form factor for diesel engines, oil burners, and auxiliary cabin heaters. Sealed metal-sheath construction to automotive-grade vibration spec.',
  ARRAY['Diesel / oil', 'Sealed sheath', 'Auto-grade'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-igniters';

insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Heaters',
  '🔆',
  'High-cycle Si₃N₄ flat and rod heaters for pellet stoves, industrial furnaces, and wafer-chuck temperature control. Ultra-fast thermal response.',
  ARRAY['Up to 1300°C', 'Fast response', 'Compact'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Flagship',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Heating Plates',
  '⬛',
  'Flat Si₃N₄ heating plates for uniform surface heating. Used in press-sintering equipment, wafer-chuck heaters, and analytical instrument platforms.',
  ARRAY['Flat geometry', 'Uniform heat', 'Custom size'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Carbide Heaters',
  '🌡️',
  'SiC rod and tube heaters for extreme-temperature industrial furnaces. Continuous operation to 1600°C — the highest in our range.',
  ARRAY['Up to 1600°C', 'Industrial', 'Rod & tube'],
  'SiC',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Alumina Ceramic Heaters',
  '⚪',
  'Al₂O₃ resistive heaters for medium-temperature applications up to 1200°C. Cost-optimised where Si₃N₄ lifetime is not required.',
  ARRAY['Up to 1200°C', 'Cost-effective', 'Resistive'],
  'Al₂O₃',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Aluminum Nitride Heaters',
  '💡',
  'AlN heaters for semiconductor wafer-chuck and precision thermal management. Highest thermal conductivity of any ceramic heater — fast, uniform heating.',
  ARRAY['High conductivity', 'Wafer chuck', 'Precision'],
  'AlN',
  '/materials/aluminum-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-heaters';

insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Shaft Rods',
  '🔩',
  'High-precision silicon nitride shaft rods for high-speed spindles, pump shafts, and turbo-machinery shafts. 60% lighter than steel, zero magnetic signature, lubricant-free operation.',
  ARRAY['High-speed', 'Non-magnetic', 'Lubricant-free'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Most Popular',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Ceramic Lift Tubes',
  '🔥',
  'Silicon nitride lift tubes for low-pressure aluminium die casting. Non-wetting to molten Al, low thermal expansion — no cracking in cyclic service, 3–5× life vs cast-iron alternatives.',
  ARRAY['Molten Al-resistant', '1600°C rated', 'Long life'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Turbine Components',
  '⚙️',
  'Si₃N₄ turbocharger rotors, turbine wheels, and high-temperature blade assemblies. 30% lighter than Inconel, faster spool-up, no lubrication thermal limit.',
  ARRAY['30% lighter', 'No lube limit', 'High-temp'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ High-Speed Cutting Blades',
  '⚔️',
  'Ultra-thin silicon nitride high-speed blades for lithium battery film, cigarette tin foil, and other precision thin-material cutting. Fast cutting speed, clean edges without material damage, high hardness, wear resistance, and low friction coefficient.',
  ARRAY['Micron-level film', '3.9mm thick', '16.9×80mm', 'Ultra-thin available'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Tubes, Rods & Plungers',
  '🧪',
  'Al₂O₃ and SiC tubes, rods, and plungers for pump cylinders, valve internals, dosing pumps, and lab equipment. Standard lengths 100–600mm, custom on request.',
  ARRAY['Ø custom', '100–600mm', 'Pump-grade'],
  'Al₂O₃ / SiC',
  '/materials/alumina',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  4,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Spherical & Rotators',
  '⚫',
  'Precision ceramic balls and rotating bodies in Si₃N₄, ZrO₂, or Al₂O₃ for bearing balls, check-valve balls, and flow-control rotors. G3–G60 grade available.',
  ARRAY['G3–G60', 'Si₃N₄ · ZrO₂', 'Precision-ground'],
  'Si₃N₄ / ZrO₂',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  5,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Custom Machined Parts',
  '🔬',
  'Complex asymmetric precision components machined to drawing. Intricate profiles, internal channels, threaded features, and tight tolerances (±0.01mm) across all ceramic materials.',
  ARRAY['±0.01mm', 'Any geometry', 'All materials'],
  'All ceramics',
  null,
  '/contact',
  null,
  'Submit a drawing →',
  false,
  null,
  6,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Fluid Control & Seals',
  '💧',
  'Ceramic valve seats, seal faces, and flow-control components for pumps, valves, and metering equipment in corrosive, abrasive, and high-temperature media.',
  ARRAY['Corrosion-resistant', 'High-temp', 'SiC / Al₂O₃'],
  'SiC / Al₂O₃',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  7,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Plates, Discs & Substrates',
  '📐',
  'Flat ceramic plates, discs, and substrates for heating elements, semiconductor susceptors, wafer chucks, and precision fixtures. Surface flatness to 1µm.',
  ARRAY['Flatness 1µm', 'Custom size', 'AlN · Al₂O₃'],
  'AlN / Al₂O₃',
  '/materials/aluminum-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  8,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Wear-Resistant & Tribological Parts',
  '🛡️',
  'Ceramic wear parts for high-load sliding, abrasive, and erosive environments. SiC and Al₂O₃ components for mining, oil & gas, and industrial machinery.',
  ARRAY['Abrasion-resistant', 'SiC · Al₂O₃', 'Mining / O&G'],
  'SiC / Al₂O₃',
  '/materials/silicon-carbide',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  9,
  true
from public.product_pages p
where p.slug = 'ceramic-structural';
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
where p.slug = 'ceramic-structural';
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
where p.slug = 'ceramic-structural';

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
where p.slug = 'custom-ceramic';
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
where p.slug = 'custom-ceramic';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Production Run',
  '🏭',
  'Stable production from 500 units. Consistent material certs, dimension reports, and SPC data on request. Private-label marking available.',
  ARRAY['From 500 units', 'SPC data', 'Private-label'],
  'Any material',
  null,
  '/contact',
  null,
  'Get a quote →',
  false,
  'Step 3',
  2,
  true
from public.product_pages p
where p.slug = 'custom-ceramic';

insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Silicon Nitride Balls',
  '⚫',
  'Si₃N₄ ceramic balls for precision bearings, ball screws, and high-speed spindles. 60% lighter than steel, hardness 78 HRC, non-magnetic, lubrication-free capable.',
  ARRAY['Ø 0.4–100mm', 'G3–G60', '78 HRC', 'Non-magnetic'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/products/silicon-nitride-balls',
  (select id from public.product_pages where slug = 'silicon-nitride-balls' limit 1),
  'View specs →',
  true,
  '★ Recommended',
  0,
  true
from public.product_pages p
where p.slug = 'ceramic-balls';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Zirconia Balls',
  '🔵',
  'ZrO₂ ceramic balls for corrosive-media pumps, check valves, and food/pharmaceutical equipment. Higher density than Si₃N₄ — ideal for valve seats and grinding applications.',
  ARRAY['Ø 0.4–50.8mm', 'G3–G60', 'Corrosion-resistant', 'Electrical insulator'],
  'ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'ceramic-balls';

insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Full Si₃N₄ Ceramic Bearings',
  '🔵',
  'Rings and balls in silicon nitride. Best for high-temperature, corrosive, and magnetically sensitive applications. Zero lubrication required — runs dry in vacuum.',
  ARRAY['Ø 3–200mm', 'P0–P5', 'Lubrication-free', 'Non-magnetic'],
  'Si₃N₄',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  true,
  '★ Top Seller',
  0,
  true
from public.product_pages p
where p.slug = 'precision-bearings';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Full Zirconia Ceramic Bearings',
  '⚪',
  'Rings and balls in zirconia. Best for highly corrosive media — concentrated acids, alkalis, and seawater. Electrical insulator.',
  ARRAY['Ø 3–200mm', 'P0–P5', 'Acid-resistant', 'Electrical insulation'],
  'ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'precision-bearings';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'Si₃N₄ Hybrid Ball Bearings',
  '⚙️',
  'Steel rings with Si₃N₄ balls. Lower cost than full ceramic, higher speed than all-steel. Standard choice for CNC spindles and machine tool spindles.',
  ARRAY['Ø 3–250mm', 'P0–P4', 'CNC spindles', 'High speed'],
  'Si₃N₄ balls / steel rings',
  '/materials/silicon-nitride',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  2,
  true
from public.product_pages p
where p.slug = 'precision-bearings';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'ZrO₂ Hybrid Ball Bearings',
  '🔩',
  'Steel rings with zirconia balls. Cost-effective hybrid for corrosion resistance and electrical insulation without full ceramic rings.',
  ARRAY['Ø 3–250mm', 'P0–P4', 'Electrical insulation', 'Corrosion-resistant'],
  'ZrO₂ balls / steel rings',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  3,
  true
from public.product_pages p
where p.slug = 'precision-bearings';

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
where p.slug = 'grinding-media';
insert into public.product_lineup_items (
  page_id, name, icon, description, chips,
  material_label, material_path, link_path, link_page_id, link_label,
  flagship, badge, sort_order, published
) select
  p.id,
  'ZrO₂ Grinding Balls',
  '⬜',
  'Zirconia grinding balls for battery cathode/anode slurry milling, pigment dispersion, and mineral processing. High density (6.0 g/cm³) delivers excellent milling energy.',
  ARRAY['Ø 0.4–50.8mm', '6.0 g/cm³', 'Battery-grade', 'Coatings/mining'],
  'ZrO₂',
  '/materials/zirconia',
  '/contact',
  null,
  'Get a quote →',
  false,
  null,
  1,
  true
from public.product_pages p
where p.slug = 'grinding-media';

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
where p.slug = 'ceramic-powder';
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
where p.slug = 'ceramic-powder';
