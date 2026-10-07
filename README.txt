Sazal Study - Supabase Connected Version

Files:
- index.html: public study notes page
- admin.html: Supabase Auth admin login + file upload
- supabase-config.js: Supabase Project URL + Publishable Key

IMPORTANT SETUP:
1. Open supabase-config.js.
2. Replace PASTE_YOUR_SUPABASE_PROJECT_URL_HERE with your Supabase Project URL.
3. Replace PASTE_YOUR_SUPABASE_PUBLISHABLE_KEY_HERE with your Supabase Publishable Key.
4. NEVER put the Supabase Secret Key in this file.
5. Upload all 4 files to the same GitHub Pages folder.

Supabase already configured for this version:
- Storage bucket: study-files (public)
- notes table with public SELECT and authenticated INSERT
- storage authenticated INSERT policy
- Admin user can log in using Supabase Auth.

After upload, open admin.html, log in, and upload a PDF/image. Students will see it on index.html.
