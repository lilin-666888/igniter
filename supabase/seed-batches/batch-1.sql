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
