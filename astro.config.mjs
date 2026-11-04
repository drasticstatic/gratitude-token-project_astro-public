// @ts-check
import { defineConfig } from 'astro/config';

// https://astro.build/config
export default defineConfig({
  // Served from the public twin's gh-pages branch (docs/ASTRO-PUBLIC-TWIN-PAGES.md, Nov 4 2026)
  site: 'https://drasticstatic.github.io',
  base: '/gratitude-token-project_astro-public',
});
