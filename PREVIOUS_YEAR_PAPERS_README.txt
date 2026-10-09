SAZAL STUDY — PREVIOUS YEAR PAPERS UPDATE

Files included:
- index.html: public Previous Year Papers section with filters and View/Download
- admin.html: authenticated admin form for uploading, publishing, unpublishing, and deleting paper entries
- PREVIOUS_YEAR_PAPERS_SETUP.sql: additive Supabase table and policies
- All original files from the supplied Admin Managed Quiz ZIP are preserved, including supabase-config.js, quiz setup, robots.txt, sitemap.xml, and Google verification file.

IMPORTANT FIRST STEP
1. Back up/download the current GitHub repository before replacing files.
2. Supabase Dashboard > SQL Editor: run PREVIOUS_YEAR_PAPERS_SETUP.sql.
3. Upload the updated index.html and admin.html to the repository root, and add PREVIOUS_YEAR_PAPERS_SETUP.sql for backup/documentation. Keep the existing supabase-config.js and SEO files unchanged.
4. Wait for GitHub Pages to deploy, then test Admin login, an upload, public filters, View and Download.

SECURITY NOTE
The supplied frontend uses the existing study-files public bucket. Public URLs can be opened by anyone who has them; do not upload private or restricted papers. The SQL starter policies allow signed-in users to manage only rows whose created_by matches their own auth user. If your Supabase Auth allows public sign-ups, disable public sign-ups or replace write policies with an explicit admin allowlist before production. Existing notes and quiz logic are not modified.

RIGHTS NOTE
Upload only papers you have permission to redistribute, and check the source's terms.
