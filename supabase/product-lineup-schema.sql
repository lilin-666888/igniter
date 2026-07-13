-- Product cards on category pages (lineup section, e.g. CN-300)
-- See supabase/schema.sql for full RLS policies

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
