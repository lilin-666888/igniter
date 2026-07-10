-- Product nav menu: level-2 groups + level-3 items (replaces product_categories for nav)

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

-- product_pages.category_id references product_menu_groups (level-2 group)
