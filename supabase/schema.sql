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

-- Product nav menu (Products 二级/三级导航)
create table if not exists public.product_menu_groups (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  label text not null,
  path text not null,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create table if not exists public.product_menu_items (
  id uuid primary key default gen_random_uuid(),
  group_id uuid not null references public.product_menu_groups(id) on delete cascade,
  label text not null,
  path text not null,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists product_menu_groups_sort_idx on public.product_menu_groups (sort_order);
create index if not exists product_menu_items_group_sort_idx on public.product_menu_items (group_id, sort_order);

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

-- Product landing pages (category + SKU), content as JSON
create table if not exists public.product_pages (
  id uuid primary key default gen_random_uuid(),
  category_id uuid references public.product_menu_groups(id) on delete set null,
  slug text not null unique,
  page_type text not null check (page_type in ('category', 'sku')),
  parent_slug text,
  parent_label text,
  seo jsonb not null default '{}'::jsonb,
  breadcrumb jsonb not null default '[]'::jsonb,
  hero jsonb not null default '{}'::jsonb,
  hero_side text not null default 'quote' check (hero_side in ('quote', 'spotlight')),
  hero_ctas jsonb,
  spotlight jsonb,
  sections jsonb not null default '[]'::jsonb,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists product_pages_category_idx on public.product_pages (category_id, sort_order);
create index if not exists product_pages_published_slug_idx on public.product_pages (published, slug);

-- Product cards on category pages (lineup section)
create table if not exists public.product_lineup_items (
  id uuid primary key default gen_random_uuid(),
  page_id uuid not null references public.product_pages(id) on delete cascade,
  name text not null,
  icon text not null default '📦',
  description text not null default '',
  chips text[] not null default '{}',
  material_label text,
  material_path text,
  link_path text,
  link_page_id uuid references public.product_pages(id) on delete set null,
  link_label text not null default 'View Details →',
  image_src text,
  flagship boolean not null default false,
  badge text,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists product_lineup_items_page_sort_idx
  on public.product_lineup_items (page_id, sort_order);

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

drop trigger if exists product_menu_groups_updated_at on public.product_menu_groups;
create trigger product_menu_groups_updated_at
  before update on public.product_menu_groups
  for each row execute function public.set_updated_at();

drop trigger if exists product_menu_items_updated_at on public.product_menu_items;
create trigger product_menu_items_updated_at
  before update on public.product_menu_items
  for each row execute function public.set_updated_at();

drop trigger if exists product_lineup_items_updated_at on public.product_lineup_items;
create trigger product_lineup_items_updated_at
  before update on public.product_lineup_items
  for each row execute function public.set_updated_at();

drop trigger if exists inquiries_updated_at on public.inquiries;
create trigger inquiries_updated_at
  before update on public.inquiries
  for each row execute function public.set_updated_at();

drop trigger if exists product_pages_updated_at on public.product_pages;
create trigger product_pages_updated_at
  before update on public.product_pages
  for each row execute function public.set_updated_at();

-- RLS
alter table public.site_settings enable row level security;
alter table public.content_items enable row level security;
alter table public.product_menu_groups enable row level security;
alter table public.product_menu_items enable row level security;
alter table public.product_pages enable row level security;
alter table public.product_lineup_items enable row level security;
alter table public.inquiries enable row level security;

-- Grants
grant select on public.site_settings to anon, authenticated;
grant select on public.content_items to anon, authenticated;
grant select on public.product_menu_groups to anon, authenticated;
grant select on public.product_menu_items to anon, authenticated;
grant select on public.product_pages to anon, authenticated;
grant select on public.product_lineup_items to anon, authenticated;
grant insert on public.inquiries to anon, authenticated;

grant insert, update, delete on public.site_settings to authenticated;
grant insert, update, delete on public.content_items to authenticated;
grant insert, update, delete on public.product_menu_groups to authenticated;
grant insert, update, delete on public.product_menu_items to authenticated;
grant insert, update, delete on public.product_pages to authenticated;
grant insert, update, delete on public.product_lineup_items to authenticated;
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

drop policy if exists "public read product_menu_groups" on public.product_menu_groups;
create policy "public read product_menu_groups"
  on public.product_menu_groups for select to anon, authenticated
  using (published = true);

drop policy if exists "public read product_menu_items" on public.product_menu_items;
create policy "public read product_menu_items"
  on public.product_menu_items for select to anon, authenticated
  using (published = true);

drop policy if exists "public read product_pages" on public.product_pages;
create policy "public read product_pages"
  on public.product_pages for select to anon, authenticated
  using (published = true);

drop policy if exists "public read product_lineup_items" on public.product_lineup_items;
create policy "public read product_lineup_items"
  on public.product_lineup_items for select to anon, authenticated
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

drop policy if exists "admin read all product_menu_groups" on public.product_menu_groups;
drop policy if exists "admin write product_menu_groups" on public.product_menu_groups;
drop policy if exists "admin update product_menu_groups" on public.product_menu_groups;
drop policy if exists "admin delete product_menu_groups" on public.product_menu_groups;
create policy "admin read all product_menu_groups"
  on public.product_menu_groups for select to authenticated
  using ((select public.is_admin()));

create policy "admin write product_menu_groups"
  on public.product_menu_groups for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update product_menu_groups"
  on public.product_menu_groups for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete product_menu_groups"
  on public.product_menu_groups for delete to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin read all product_menu_items" on public.product_menu_items;
drop policy if exists "admin write product_menu_items" on public.product_menu_items;
drop policy if exists "admin update product_menu_items" on public.product_menu_items;
drop policy if exists "admin delete product_menu_items" on public.product_menu_items;
create policy "admin read all product_menu_items"
  on public.product_menu_items for select to authenticated
  using ((select public.is_admin()));

create policy "admin write product_menu_items"
  on public.product_menu_items for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update product_menu_items"
  on public.product_menu_items for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete product_menu_items"
  on public.product_menu_items for delete to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin read all product_pages" on public.product_pages;
drop policy if exists "admin write product_pages" on public.product_pages;
drop policy if exists "admin update product_pages" on public.product_pages;
drop policy if exists "admin delete product_pages" on public.product_pages;

create policy "admin read all product_pages"
  on public.product_pages for select to authenticated
  using ((select public.is_admin()));

create policy "admin write product_pages"
  on public.product_pages for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update product_pages"
  on public.product_pages for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete product_pages"
  on public.product_pages for delete to authenticated
  using ((select public.is_admin()));

drop policy if exists "admin read all product_lineup_items" on public.product_lineup_items;
drop policy if exists "admin write product_lineup_items" on public.product_lineup_items;
drop policy if exists "admin update product_lineup_items" on public.product_lineup_items;
drop policy if exists "admin delete product_lineup_items" on public.product_lineup_items;

create policy "admin read all product_lineup_items"
  on public.product_lineup_items for select to authenticated
  using ((select public.is_admin()));

create policy "admin write product_lineup_items"
  on public.product_lineup_items for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update product_lineup_items"
  on public.product_lineup_items for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete product_lineup_items"
  on public.product_lineup_items for delete to authenticated
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

-- Blog posts (engineering articles)
create table if not exists public.blog_posts (
  id uuid primary key default gen_random_uuid(),
  slug text not null unique,
  title text not null,
  excerpt text not null default '',
  category text not null default 'Material Guide',
  content_html text not null default '',
  date_label text not null default '',
  read_time text not null default '',
  featured boolean not null default false,
  tags text[] not null default '{}',
  card_icon text not null default '📄',
  card_label text not null default '',
  card_img_class text,
  card_style text,
  hero_sub text,
  breadcrumb_title text,
  author jsonb,
  hero_caption text,
  hero_icon text,
  hero_label text,
  toc jsonb,
  related_slugs text[] not null default '{}',
  product_link jsonb,
  sort_order integer not null default 0,
  published boolean not null default true,
  created_at timestamptz not null default now(),
  updated_at timestamptz not null default now()
);

create index if not exists blog_posts_slug_idx on public.blog_posts (slug);
create index if not exists blog_posts_published_sort_idx on public.blog_posts (published, sort_order);

drop trigger if exists blog_posts_updated_at on public.blog_posts;
create trigger blog_posts_updated_at
  before update on public.blog_posts
  for each row execute function public.set_updated_at();

alter table public.blog_posts enable row level security;

grant select on public.blog_posts to anon, authenticated;
grant insert, update, delete on public.blog_posts to authenticated;

drop policy if exists "public read blog_posts" on public.blog_posts;
create policy "public read blog_posts"
  on public.blog_posts for select to anon, authenticated
  using (published = true);

drop policy if exists "admin read all blog_posts" on public.blog_posts;
drop policy if exists "admin write blog_posts" on public.blog_posts;
drop policy if exists "admin update blog_posts" on public.blog_posts;
drop policy if exists "admin delete blog_posts" on public.blog_posts;

create policy "admin read all blog_posts"
  on public.blog_posts for select to authenticated
  using ((select public.is_admin()));

create policy "admin write blog_posts"
  on public.blog_posts for insert to authenticated
  with check ((select public.is_admin()));

create policy "admin update blog_posts"
  on public.blog_posts for update to authenticated
  using ((select public.is_admin()))
  with check ((select public.is_admin()));

create policy "admin delete blog_posts"
  on public.blog_posts for delete to authenticated
  using ((select public.is_admin()));
