-- Blog posts table
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
