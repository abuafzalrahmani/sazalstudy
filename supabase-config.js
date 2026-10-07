// Sazal Study - Supabase configuration
// Paste your Supabase Project URL and Publishable Key below.
// IMPORTANT: Never put the Supabase Secret Key here.
const SUPABASE_URL = 'https://bohwrqylsqvzmugqyiif.supabase.co';
const SUPABASE_PUBLISHABLE_KEY = 'sb_publishable_fff7UoPYDvcNMFDMRZK_6g_ba7N7iaS';

const sb = window.supabase.createClient(SUPABASE_URL, SUPABASE_PUBLISHABLE_KEY);
