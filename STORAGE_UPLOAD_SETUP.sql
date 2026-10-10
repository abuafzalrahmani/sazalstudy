-- Sazal Study: verify Storage setup before running this script.
-- Creates a public bucket for published study files.
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('study-files', 'study-files', true, 52428800, array['application/pdf','image/jpeg','image/png','image/webp','image/gif'])
on conflict (id) do update set public = excluded.public, file_size_limit = excluded.file_size_limit, allowed_mime_types = excluded.allowed_mime_types;

-- Public read access for published study files. Upload/delete policies should be restricted to authenticated admins.
drop policy if exists "Public read study files" on storage.objects;
create policy "Public read study files" on storage.objects for select using (bucket_id = 'study-files');
