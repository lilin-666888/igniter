-- Product pages (category + SKU landing pages)
-- Run after schema.sql: paste in Supabase SQL Editor or merge into db:setup

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

drop trigger if exists product_pages_updated_at on public.product_pages;
create trigger product_pages_updated_at
  before update on public.product_pages
  for each row execute function public.set_updated_at();

alter table public.product_pages enable row level security;

grant select on public.product_pages to anon, authenticated;
grant insert, update, delete on public.product_pages to authenticated;

drop policy if exists "public read product_pages" on public.product_pages;
create policy "public read product_pages"
  on public.product_pages for select to anon, authenticated
  using (published = true);

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
