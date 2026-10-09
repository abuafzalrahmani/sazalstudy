-- Sazal Study optional features setup (run once in Supabase SQL Editor)
-- These policies permit anonymous insert/read of limited public stats. Do not store emails or personal data.
create table if not exists public.site_events (
  id bigint generated always as identity primary key,
  event_type text not null check (event_type in ('page_view','note_view_click','note_download_click')),
  details jsonb not null default '{}'::jsonb,
  created_at timestamptz not null default now()
);
alter table public.site_events enable row level security;
drop policy if exists "Public can record anonymous site events" on public.site_events;
create policy "Public can record anonymous site events" on public.site_events for insert to anon, authenticated with check (event_type in ('page_view','note_view_click','note_download_click'));
drop policy if exists "Public can count site events" on public.site_events;
create policy "Public can count site events" on public.site_events for select to anon, authenticated using (true);
grant insert, select on public.site_events to anon, authenticated;
grant usage, select on sequence public.site_events_id_seq to anon, authenticated;

create table if not exists public.quiz_leaderboard (
  id bigint generated always as identity primary key,
  nickname text not null check (char_length(nickname) between 1 and 24),
  category text not null check (char_length(category) <= 40),
  score integer not null check (score >= 0),
  total integer not null check (total > 0 and score <= total),
  created_at timestamptz not null default now()
);
alter table public.quiz_leaderboard enable row level security;
drop policy if exists "Public can read quiz leaderboard" on public.quiz_leaderboard;
create policy "Public can read quiz leaderboard" on public.quiz_leaderboard for select to anon, authenticated using (true);
drop policy if exists "Public can submit quiz scores" on public.quiz_leaderboard;
create policy "Public can submit quiz scores" on public.quiz_leaderboard for insert to anon, authenticated with check (char_length(nickname) between 1 and 24 and char_length(category) <= 40 and score >= 0 and total > 0 and score <= total);
grant select, insert on public.quiz_leaderboard to anon, authenticated;
grant usage, select on sequence public.quiz_leaderboard_id_seq to anon, authenticated;
