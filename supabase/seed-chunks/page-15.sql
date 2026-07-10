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
where p.slug = 'ceramic-powder';;