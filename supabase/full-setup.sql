-- Ceramitell CMS schema
-- Run via: npm run db:setup (requires SUPABASE_DB_URL)
-- Or paste into Supabase SQL Editor

create extension if not exists "pgcrypto";

-- Admin check: role must be in app_metadata (never user_metadata)
create or replace function public.is_admin()
returns boolean
language sql
stable
security invoker
set search_path = ''
as $$
  select coalesce(
    (select auth.jwt() -> 'app_metadata' ->> 'role') = 'admin',
    false
  );
$$;

revoke all on function public.is_admin() from public;
grant execute on function public.is_admin() to anon, authenticated;

-- Site-wide key-value settings (contact, nav, footer, hero copy)
create table if not exists public.site_settings (
  key text primary key,
  value jsonb not null default '{}'::jsonb,
  updated_at timestamptz not null default now()
);

-- Ordered content blocks (homepage sections, certifications, etc.)
create table if not exists public.content_items (
  id uuid primary key default gen_random_uuid(),
  section text not null,
  sort_order integer not null default 0,
  data jsonb not null default '{}'::jsonb,
  image_path text,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists content_items_section_idx on public.content_items (section, sort_order);

-- Product catalog categories (homepage + products index)
create table if not exists public.product_categories (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  description text not null default '',
  meta text not null default '',
  emoji text not null default '',
  href text not null default '/products',
  image_path text,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

-- Customer inquiries from contact forms
create table if not exists public.inquiries (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  email text not null,
  phone text,
  message text,
  page_url text,
  product_context text,
  status text not null default 'new' check (status in ('new', 'assigned', 'quoted', 'won', 'lost', 'closed')),
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists inquiries_status_idx on public.inquiries (status, created_at desc);

-- Updated_at trigger
create or replace function public.set_updated_at()
returns trigger
language plpgsql
security invoker
set search_path = ''
as $$
begin
  new.updated_at = now();
  return new;
end;
$$;

drop trigger if exists site_settings_updated_at on public.site_settings;
create trigger site_settings_updated_at
  before update on public.site_settings
  for each row execute function public.set_updated_at();

drop trigger if exists content_items_updated_at on public.content_items;
create trigger content_items_updated_at
  before update on public.content_items
  for each row execute function public.set_updated_at();

drop trigger if exists product_categories_updated_at on public.product_categories;
create trigger product_categories_updated_at
  before update on public.product_categories
  for each row execute function public.set_updated_at();

drop trigger if exists inquiries_updated_at on public.inquiries;
create trigger inquiries_updated_at
  before update on public.inquiries
  for each row execute function public.set_updated_at();

-- RLS
alter table public.site_settings enable row level security;
alter table public.content_items enable row level security;
alter table public.product_categories enable row level security;
alter table public.inquiries enable row level security;

-- Grants
grant select on public.site_settings to anon, authenticated;
grant select on public.content_items to anon, authenticated;
grant select on public.product_categories to anon, authenticated;
grant insert on public.inquiries to anon, authenticated;

grant insert, update, delete on public.site_settings to authenticated;
grant insert, update, delete on public.content_items to authenticated;
grant insert, update, delete on public.product_categories to authenticated;
grant select, update on public.inquiries to authenticated;

-- Policies: public read
drop policy if exists "public read site_settings" on public.site_settings;
create policy "public read site_settings"
  on public.site_settings for select to anon, authenticated
  using (true);

drop policy if exists "public read content_items" on public.content_items;
create policy "public read content_items"
  on public.content_items for select to anon, authenticated
  using (published = true);

drop policy if exists "public read product_categories" on public.product_categories;
create policy "public read product_categories"
  on public.product_categories for select to anon, authenticated
  using (published = true);

-- Policies: anyone can submit inquiries
drop policy if exists "public insert inquiries" on public.inquiries;
create policy "public insert inquiries"
  on public.inquiries for insert to anon, authenticated
  with check (true);

-- Policies: admin full access
drop policy if exists "admin manage site_settings" on public.site_settings;
create policy "admin manage site_settings"
  on public.site_settings for all to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

drop policy if exists "admin manage content_items" on public.content_items;
drop policy if exists "admin read all content_items" on public.content_items;
drop policy if exists "admin write content_items" on public.content_items;
drop policy if exists "admin update content_items" on public.content_items;
drop policy if exists "admin delete content_items" on public.content_items;
create policy "admin read all content_items"
  on public.content_items for select to authenticated
  using ((select public.is_admin()));

create policy "admin write content_items"
  on public.content_items for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update content_items"
  on public.content_items for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete content_items"
  on public.content_items for delete to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin manage product_categories" on public.product_categories;
drop policy if exists "admin read all product_categories" on public.product_categories;
drop policy if exists "admin write product_categories" on public.product_categories;
drop policy if exists "admin update product_categories" on public.product_categories;
drop policy if exists "admin delete product_categories" on public.product_categories;
create policy "admin read all product_categories"
  on public.product_categories for select to authenticated
  using ((select public.is_admin()));

create policy "admin write product_categories"
  on public.product_categories for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update product_categories"
  on public.product_categories for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete product_categories"
  on public.product_categories for delete to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin read inquiries" on public.inquiries;
create policy "admin read inquiries"
  on public.inquiries for select to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin update inquiries" on public.inquiries;
create policy "admin update inquiries"
  on public.inquiries for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));
-- Auto-generated seed data. Run after supabase/schema.sql

insert into public.site_settings (key, value) values ('contact_info', '{"email":"sales@ceramitell.com","phone":"+86 151 9017 9780","display":"sales@ceramitell.com · +86 151 9017 9780","engineering_email":"engineering@ceramitell.com","wechat":"+86 151 9017 9780","linkedin":"Ceramitell Industrial Ceramics","address":"No.568, Tianyi Road,\nQingpu District, Shanghai 201712,\nChina","factory":"Pingxiang, Jiangxi, China\n(Visit by appointment)","business_hours":"Mon–Fri 09:00–18:00 CST (UTC+8)\nSat by appointment"}'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('topbar_items', '[{"dot":true,"text":"Free Samples · 48h Dispatch"},{"text":"OEM Manufacturer Since 2014"},{"text":"Reply Within 24h"}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('nav_links', '[{"label":"Materials","to":"/materials","groups":[{"label":"All Materials","to":"/materials","links":[]},{"label":"Silicon Nitride","to":"/materials/silicon-nitride","links":[]},{"label":"Alumina","to":"/materials/alumina","links":[]},{"label":"Zirconia","to":"/materials/zirconia","links":[]},{"label":"Silicon Carbide","to":"/materials/silicon-carbide","links":[]},{"label":"Boron Carbide","to":"/materials/boron-carbide","links":[]},{"label":"Aluminum Nitride","to":"/materials/aluminum-nitride","links":[]},{"label":"Boron Nitride","to":"/materials/boron-nitride","links":[]},{"label":"Si₃N₄ vs Al₂O₃","to":"/resources/silicon-nitride-vs-alumina","links":[]}]},{"label":"Products","to":"/products","groups":[{"label":"Ceramic Igniters","to":"/products/ceramic-igniters","links":[{"label":"Silicon Nitride Igniters","to":"/products/silicon-nitride-igniters-final"},{"label":"Hot Surface Igniters","to":"/products/ceramic-igniters#hot-surface"},{"label":"Alumina Ceramic Igniters","to":"/products/ceramic-igniters#alumina-igniter"},{"label":"Silicon Carbide Igniters","to":"/products/ceramic-igniters#sic-igniter"},{"label":"Silicon Nitride Glow Plugs","to":"/products/ceramic-igniters#glow-plug"}]},{"label":"Ceramic Heaters and Elements","to":"/products/ceramic-heaters","links":[{"label":"Silicon Nitride Heaters","to":"/products/silicon-nitride-heaters"},{"label":"Silicon Nitride Heating Plates","to":"/products/ceramic-heaters"},{"label":"Silicon Carbide Heaters","to":"/products/ceramic-heaters"},{"label":"Alumina Ceramic Heaters","to":"/products/ceramic-heaters"},{"label":"Aluminum Nitride Heaters","to":"/products/ceramic-heaters"}]},{"label":"Ceramic Structural Parts","to":"/products/ceramic-structural","links":[{"label":"Silicon Nitride Shaft Rod","to":"/products/silicon-nitride-shaft-rod"},{"label":"Silicon Nitride Lift Tube","to":"/products/ceramic-structural"},{"label":"Silicon Nitride Turbine","to":"/products/ceramic-structural"},{"label":"Silicon Nitride Cutting Blade","to":"/products/ceramic-structural"},{"label":"Tubes, Rods & Plungers","to":"/products/ceramic-structural"},{"label":"Spherical & Rotators","to":"/products/ceramic-structural"},{"label":"Custom Machined Parts","to":"/products/ceramic-structural"},{"label":"Fluid Control & Seals","to":"/products/ceramic-structural"},{"label":"Plates, Discs & Substrates","to":"/products/ceramic-structural"},{"label":"Wear-Resistant Parts","to":"/products/ceramic-structural"},{"label":"Corrosion-Resistant Parts","to":"/products/ceramic-structural"},{"label":"High-Temperature Parts","to":"/products/ceramic-structural"}]},{"label":"Custom Ceramic Components","to":"/products/custom-ceramic","links":[{"label":"DFM Service","to":"/products/custom-ceramic"},{"label":"Drawing to Production Flow","to":"/products/custom-ceramic"},{"label":"Submit Drawing","to":"/contact"}]},{"label":"Ceramic Balls","to":"/products/ceramic-balls","links":[{"label":"Silicon Nitride Balls","to":"/products/silicon-nitride-balls"},{"label":"Zirconia Balls","to":"/products/ceramic-balls"},{"label":"Grade Guide (G3–G60)","to":"/products/ceramic-balls"}]},{"label":"Precision Ceramic Bearings","to":"/products/precision-bearings","links":[{"label":"Full Silicon Nitride Bearings","to":"/products/full-silicon-nitride-bearings"},{"label":"Full Zirconia Bearings","to":"/products/precision-bearings"},{"label":"Si₃N₄ Hybrid Ball Bearings","to":"/products/precision-bearings"},{"label":"Zirconia Hybrid Ball Bearings","to":"/products/precision-bearings"}]},{"label":"Grinding Media","to":"/products/grinding-media","links":[{"label":"Silicon Nitride Grinding Balls","to":"/products/silicon-nitride-grinding-balls"},{"label":"Zirconia Grinding Balls","to":"/products/grinding-media"}]},{"label":"Superfine Ceramic Powder","to":"/products/ceramic-powder","links":[{"label":"Silicon Nitride Powder","to":"/products/silicon-nitride-powder"},{"label":"Zirconia Powder","to":"/products/ceramic-powder"}]}]},{"label":"Applications","to":"/applications","groups":[{"label":"Overview","to":"/applications","links":[{"label":"All Applications","to":"/applications"},{"label":"8 Industry Verticals","to":"/applications"}]},{"label":"Advanced Combustion & Ignition","to":"/applications/advanced-combustion-fixed","links":[{"label":"Biomass & Pellet Stoves","to":"/applications/sub-biomass-pellet-stoves"},{"label":"BBQ Grills","to":"/applications/sub-bbq-grills"},{"label":"Residential Gas Appliances","to":"/applications/sub-gas-appliances"},{"label":"Gas Furnaces","to":"/applications/sub-gas-appliances"},{"label":"Gas Burners","to":"/applications/sub-gas-appliances"},{"label":"Commercial & Industrial Boilers","to":"/applications/sub-commercial-boilers"},{"label":"Water Heaters","to":"/applications/sub-water-heaters"},{"label":"HVAC","to":"/applications/sub-hvac-ignition"},{"label":"Ovens and Cooktops","to":"/applications/sub-ovens-cooktops"},{"label":"Hydrogen Energy","to":"/applications/sub-hydrogen-energy"},{"label":"Request Samples","to":"/contact"}]},{"label":"Semiconductor & Electronics","to":"/applications/app-semiconductor","links":[{"label":"Aluminum Nitride Heaters","to":"/applications/sub-semiconductor-aln-heaters"},{"label":"AlN Substrates","to":"/applications/sub-semiconductor-aln-substrates"},{"label":"High-Purity Al₂O₃","to":"/applications/sub-semiconductor-alumina"}]},{"label":"Aerospace & Precision Machinery","to":"/applications/app-aerospace","links":[{"label":"Boron Carbide (B₄C)","to":"/materials/boron-carbide"},{"label":"Precision Bearings","to":"/products/precision-bearings"}]},{"label":"Clean Energy & Battery","to":"/applications/app-clean-energy","links":[{"label":"Battery Manufacturing","to":"/applications/app-clean-energy"},{"label":"Grinding Media","to":"/products/grinding-media"}]},{"label":"Metallurgy & Foundry","to":"/applications/app-metallurgy","links":[{"label":"High-Temperature Melting","to":"/applications/app-metallurgy"},{"label":"1600°C Operation","to":"/applications/app-metallurgy"},{"label":"Structural Parts","to":"/products/ceramic-structural"}]},{"label":"Chemical Processing","to":"/applications/app-chemical-processing","links":[{"label":"Fluid Control","to":"/applications/app-chemical-processing"},{"label":"Pump Seals & Valves","to":"/products/ceramic-structural"}]},{"label":"Laboratory Equipment","to":"/applications/app-laboratory","links":[{"label":"Analytical Instruments","to":"/applications/app-laboratory"},{"label":"Crucibles & Tubes","to":"/products/ceramic-structural"}]},{"label":"Biology & Medicine","to":"/applications/app-biology-medicine","links":[{"label":"Biocompatible Components","to":"/applications/app-biology-medicine"},{"label":"Precision Bearings","to":"/products/precision-bearings"}]}]},{"label":"Capabilities","to":"/capabilities","groups":[{"label":"Vertical Integration","to":"/capabilities/vertical-integration","links":[{"label":"Powder to Finished Assembly","to":"/capabilities/vertical-integration"},{"label":"Full Process Traceability","to":"/capabilities/vertical-integration"}]},{"label":"Rapid Prototyping","to":"/capabilities/rapid-prototyping","links":[{"label":"1–3 Day Stock Sample Dispatch","to":"/capabilities/rapid-prototyping"},{"label":"5–20 Day Custom Sample Delivery","to":"/capabilities/rapid-prototyping"},{"label":"DFM Engineering Support","to":"/capabilities/rapid-prototyping#step-1"}]},{"label":"Quality Control","to":"/capabilities/quality-control","links":[{"label":"ISO 9001 / IATF 16949","to":"/capabilities/quality-control"},{"label":"Full-Process Inspection","to":"/capabilities/quality-control"},{"label":"Failure Mode Analysis","to":"/capabilities/quality-control"}]},{"label":"Manufacturing Process","to":"/capabilities/manufacturing-process","links":[{"label":"Powder Preparation","to":"/capabilities/manufacturing-process#stage-powder"},{"label":"Forming Process","to":"/capabilities/manufacturing-process#stage-forming"},{"label":"Sintering Process","to":"/capabilities/manufacturing-process#stage-sintering"},{"label":"Finishing & Grinding","to":"/capabilities/manufacturing-process#stage-grinding"}]}]},{"label":"About","to":"/about","groups":[{"label":"Company Story","to":"/about","links":[{"label":"Founded in 2014","to":"/about"},{"label":"Team","to":"/about"},{"label":"Location: China","to":"/about"},{"label":"11+ Years OEM Experience","to":"/about"},{"label":"Contact Sales","to":"/contact"}]},{"label":"Manufacturing","to":"/capabilities/vertical-integration","links":[{"label":"Factory Overview","to":"/capabilities/vertical-integration"},{"label":"Production Lines","to":"/capabilities/manufacturing-process"},{"label":"Testing Equipment","to":"/capabilities/quality-control"}]},{"label":"Quality & Certifications","to":"/about","links":[{"label":"ISO 9001:2015","to":"/resources/iso-9001-certification"},{"label":"IATF 16949","to":"/resources/iso-9001-certification"},{"label":"CE Marking","to":"/about"},{"label":"RoHS · REACH","to":"/about"}]}]}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('footer_columns', '[{"title":"Materials","links":[{"label":"Silicon Nitride","to":"/materials/silicon-nitride"},{"label":"Alumina","to":"/materials/alumina"},{"label":"Zirconia","to":"/materials/zirconia"},{"label":"Silicon Carbide","to":"/materials/silicon-carbide"},{"label":"Aluminum Nitride","to":"/materials/aluminum-nitride"},{"label":"Boron Carbide","to":"/materials/boron-carbide"},{"label":"Boron Nitride","to":"/materials/boron-nitride"}]},{"title":"Products","links":[{"label":"Ceramic Igniters","to":"/products/ceramic-igniters"},{"label":"Heating Elements","to":"/products/ceramic-heaters"},{"label":"Structural Parts","to":"/products/ceramic-structural"},{"label":"Balls & Bearings","to":"/products/ceramic-balls"},{"label":"Grinding Media","to":"/products/grinding-media"},{"label":"Custom Parts","to":"/products/custom-ceramic"}]},{"title":"Resources","links":[{"label":"All Resources","to":"/resources"},{"label":"Si₃N₄ vs Alumina","to":"/resources/silicon-nitride-vs-alumina"},{"label":"Grade Selection Guide","to":"/resources/ceramic-grade-selection-guide"},{"label":"Certifications & Quality","to":"/resources/iso-9001-certification"}]},{"title":"Company","links":[{"label":"About Ceramitell","to":"/about"},{"label":"Capabilities","to":"/capabilities"},{"label":"Contact Sales","to":"/contact"}]},{"title":"Reach Us","links":[{"label":"sales@ceramitell.com","to":"mailto:sales@ceramitell.com"},{"label":"engineering@ceramitell.com","to":"mailto:engineering@ceramitell.com"},{"label":"WhatsApp: +86 151 9017 9780","to":"https://wa.me/8615190179780"},{"label":"WeChat: ceramitell-sales"}]}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('footer_legal', '[{"label":"Privacy","to":"/about"},{"label":"Terms","to":"/about"},{"label":"Sitemap","to":"/resources"}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('hero_stats', '[{"num":"5","lbl":"Materials"},{"num":"100K+","lbl":"Cycle Life"},{"num":"42","lbl":"Countries"},{"num":"11 yrs","lbl":"OEM Experience","nowrap":true}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('spec_card_specs', '[{"label":"Voltage","value":"120V AC"},{"label":"Power","value":"300W"},{"label":"Heat-up","value":"3 sec"},{"label":"Lifecycle","value":"100K+"}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('spotlight_stats', '[{"value":"Si₃N₄","label":"Heating · bearings"},{"value":"Al₂O₃","label":"95% – 99.7% purity"},{"value":"ZrO₂","label":"Y-TZP precision"},{"value":"SiC","label":"RBSC / SSiC wear"},{"value":"AlN","label":"Substrates · heat sinks"},{"value":"1600°C","label":"Max operating temp"}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();
insert into public.site_settings (key, value) values ('quote_outcomes', '[{"num":"-38%","lbl":"Warranty Returns"},{"num":"-32%","lbl":"Cold-Start Failures"},{"num":"12h","lbl":"Engineer Response"},{"num":"7 yr","lbl":"Partnership"}]'::jsonb) on conflict (key) do update set value = excluded.value, updated_at = now();

delete from public.content_items;
insert into public.content_items (section, sort_order, data, published) values ('entry_cards', 0, '{"href":"/materials","icon":"⚛","eyebrow":"For Engineers","title":"Browse by Material","desc":"You know the substrate — Si₃N₄, alumina, zirconia, SiC, or AlN — and you want full property tables, grade variants, and selection guidance.","linkMain":"5 Materials →","linkSub":"Datasheets · Selection guide"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('entry_cards', 1, '{"href":"/applications","icon":"🏭","eyebrow":"For Industry Buyers","title":"Browse by Application","desc":"You know the use case — pellet stove ignition, semiconductor wafer processing, lab furnaces — and you want the right ceramic matched to your duty cycle.","linkMain":"9 Applications →","linkSub":"Heating · Industrial Precision"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('entry_cards', 2, '{"href":"/products","icon":"📦","eyebrow":"For Direct Buyers","title":"Browse by Product","desc":"You know the part — igniters, balls, bearings, grinding media, custom drawings. Jump straight to product specs, SKUs, and quick quote.","linkMain":"7 Categories →","linkSub":"Stock · Custom · By Drawing"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 0, '{"emoji":"🔥","title":"Si₃N₄ Igniters","desc":"Hot surface igniters · 12V–230V · 100,000+ cycle life · UL/CE · pellet, BBQ, fireplace.","meta":"★ FLAGSHIP CATEGORY →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 1, '{"emoji":"🧪","title":"Alumina Heating Rods","desc":"95% to 99.7% purity Al₂O₃ · lab furnaces · metallurgy · spectral analysis · 1600°C.","meta":"EXPLORE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 2, '{"emoji":"⚪","title":"Ceramic Balls & Bearings","desc":"Si₃N₄ / ZrO₂ · G5–G20 precision grade · 0.5–50mm · HIP processed.","meta":"EXPLORE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 3, '{"emoji":"🌀","title":"Grinding Media","desc":"0.1mm–30mm · Al₂O₃ / ZrO₂ · paint, mining, battery slurries.","meta":"EXPLORE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 4, '{"emoji":"🧱","title":"Structural Ceramics","desc":"Plates · tubes · rings · seals · liners · custom geometries to drawing.","meta":"EXPLORE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 5, '{"emoji":"⚛","title":"Ceramic Powders","desc":"Al₂O₃ · ZrO₂ · Si₃N₄ · ≥99.5% purity · spray-dried for downstream use.","meta":"EXPLORE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 6, '{"emoji":"⚙","title":"Semicon Components","desc":"High-purity Al₂O₃ wafer parts · low-particle ZrO₂ · AlN substrates.","meta":"CUSTOM SPEC →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('catalog_items', 7, '{"emoji":"🧩","title":"Custom Parts","desc":"Engineered to drawing · ISO 9001 inspection · DFM support.","meta":"PER QUOTE →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('testimonials', 0, '{"quote":"Their CN-300 igniters cut our warranty returns 38% in year one. Engineering replies within 12 hours from China — faster than two of our European suppliers.","avatar":"MR","name":"M. Rossi","role":"Engineering Director","company":"Italian Pellet Stove OEM · 180K units/yr"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('testimonials', 1, '{"quote":"We needed UL/CE compliant igniters at half our previous supplier''s cost. Ceramitell delivered DFM feedback in 48 hours, prototypes in 10 days. Smoothest supplier transition we''ve done.","avatar":"DM","name":"D. Mitchell","role":"Sourcing Manager","company":"US Outdoor Cooking Brand · 90K units/yr"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('testimonials', 2, '{"quote":"Custom alumina crucibles to our drawing, 99.7% purity verified by independent test. Lot-specific certs on every shipment. Reliable for our analytical instrument production.","avatar":"KS","name":"Dr. K. Schmidt","role":"Senior Engineer","company":"German Analytical Equipment Maker"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('resource_cards', 0, '{"href":"/resources","tag":"SELECTION GUIDE · 8 MIN","title":"Si₃N₄ vs Alumina · Choosing the Right Igniter Substrate","excerpt":"Side-by-side comparison across thermal shock, lifecycle, cost, and lead time — with field data from 10M shipped units."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('resource_cards', 1, '{"href":"/resources","tag":"FAILURE ANALYSIS · 12 MIN","title":"Five Common Igniter Failure Modes — and How to Design Them Out","excerpt":"Thermal cycling cracks, electrode oxidation, moisture ingress — what your warranty data really tells you."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('resource_cards', 2, '{"href":"/resources","tag":"TECHNICAL FAQ · 5 MIN","title":"How Long Should a Ceramic Hot Surface Igniter Last?","excerpt":"Industry benchmarks for cycle life, the design choices that drive longevity, how to spec for your duty cycle."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 0, '{"icon":"📄","tag":"Datasheets","title":"5 Material Datasheets","meta":"PDF · ~600KB each","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 1, '{"icon":"📘","tag":"Selection Guide","title":"Material Selection by Application","meta":"32 pages · PDF","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 2, '{"icon":"📐","tag":"Design Guide","title":"DFM Rules for Ceramic Parts","meta":"Wall · Radii · Tolerance","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 3, '{"icon":"✓","tag":"Certifications","title":"ISO / IATF / CE / UL / RoHS","meta":"Cert scans · ZIP","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 4, '{"icon":"🔍","tag":"Failure Modes","title":"5 Common Igniter Failure Modes","meta":"Field cases · PDF","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 5, '{"icon":"🧪","tag":"Test Reports","title":"Third-Party Lab Test Reports","meta":"SGS · TÜV · Intertek","action":"Request →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 6, '{"icon":"📚","tag":"Glossary","title":"Ceramic Engineering Glossary","meta":"120+ terms · Web","action":"Open →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('techman_cards', 7, '{"icon":"📋","tag":"Full Catalog","title":"Ceramitell Master Catalog 2026","meta":"68 pages · PDF","action":"Download →"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('contact_promises', 0, '{"strong":"Reply within 24 hours","text":" — our engineering team, not a bot."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('contact_promises', 1, '{"strong":"Free sample shipped within 14 days","text":" for standard SKUs."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('contact_promises', 2, '{"strong":"Custom drawings welcome","text":" — STEP / PDF / DWG, DFM feedback included."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('contact_promises', 3, '{"strong":"CE / UL compliant","text":" parts with lot-specific certs on every shipment."}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('certifications', 0, '{"name":"ISO 9001:2015"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('certifications', 1, '{"name":"IATF 16949"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('certifications', 2, '{"name":"CE"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('certifications', 3, '{"name":"RoHS · REACH"}'::jsonb, true);
insert into public.content_items (section, sort_order, data, published) values ('certifications', 4, '{"name":"UL RECOGNIZED"}'::jsonb, true);

delete from public.product_categories;
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('si-n-igniters', 'Si₃N₄ Igniters', 'Hot surface igniters · 12V–230V · 100,000+ cycle life · UL/CE · pellet, BBQ, fireplace.', '★ FLAGSHIP CATEGORY →', '🔥', '/products', 0, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('alumina-heating-rods', 'Alumina Heating Rods', '95% to 99.7% purity Al₂O₃ · lab furnaces · metallurgy · spectral analysis · 1600°C.', 'EXPLORE →', '🧪', '/products', 1, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('ceramic-balls-bearings', 'Ceramic Balls & Bearings', 'Si₃N₄ / ZrO₂ · G5–G20 precision grade · 0.5–50mm · HIP processed.', 'EXPLORE →', '⚪', '/products', 2, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('grinding-media', 'Grinding Media', '0.1mm–30mm · Al₂O₃ / ZrO₂ · paint, mining, battery slurries.', 'EXPLORE →', '🌀', '/products', 3, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('structural-ceramics', 'Structural Ceramics', 'Plates · tubes · rings · seals · liners · custom geometries to drawing.', 'EXPLORE →', '🧱', '/products', 4, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('ceramic-powders', 'Ceramic Powders', 'Al₂O₃ · ZrO₂ · Si₃N₄ · ≥99.5% purity · spray-dried for downstream use.', 'EXPLORE →', '⚛', '/products', 5, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('semicon-components', 'Semicon Components', 'High-purity Al₂O₃ wafer parts · low-particle ZrO₂ · AlN substrates.', 'CUSTOM SPEC →', '⚙', '/products', 6, true);
insert into public.product_categories (slug, title, description, meta, emoji, href, sort_order, published) values ('custom-parts', 'Custom Parts', 'Engineered to drawing · ISO 9001 inspection · DFM support.', 'PER QUOTE →', '🧩', '/products', 7, true);
