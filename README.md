# gratitude-token-project_astro (private)

[![License: MIT](https://img.shields.io/badge/license-MIT-lightgrey?style=flat)](LICENSE)
[![Sync](https://github.com/drasticstatic/gratitude-token-project_astro/actions/workflows/sync-public-allowlist.yml/badge.svg)](https://github.com/drasticstatic/gratitude-token-project_astro/actions/workflows/sync-public-allowlist.yml)

Sidecar [Astro](https://astro.build) site for the
[gratitude-token-project](https://github.com/drasticstatic/gratitude-token-project) dApp
(the "Ethereal Offering Protocol"). It publishes two things the main dApp repo doesn't:

- **Changelog-as-content pages** — the project's `changelog.md` rendered as a public,
  browsable site.
- **A scrubbed structure map** — contract/module relationships only (via
  [graphify](https://github.com/drasticstatic/gratitude-token-project/tree/main/graphify-out)),
  with no source snippets.

Neither is populated yet — this repo currently holds the initial site scaffold only.

## Private / public split

This repo is **private** and is the source of truth. A public sibling,
[`gratitude-token-project_astro-public`](https://github.com/drasticstatic/gratitude-token-project_astro-public),
mirrors only what's explicitly allowlisted, pushed automatically by
[`sync-public-allowlist.yml`](.github/workflows/sync-public-allowlist.yml) on every push to
`main`. This is a direct private→public flow (same pattern as
[`pir-devine-news`](https://github.com/drasticstatic/pir-devine-news) →
`pir-devine-news-public`) — there is no `-preview` staging lane.

Everything not named in the sync workflow's `public_allowlist` stays private by default,
including this repo's agent orchestration files (`AGENT-SYNC/`, `CLAUDE.md`, `.claude/`,
`.augment/`, `specs/`) and this `HANDOFF-create_astro-workspace-proposal.md`.

## Local development

```bash
npm install
npm run dev       # dev server
npm run build      # production build to dist/
npm run preview    # preview the production build
```

Requires Node.js `>=22.12.0`.

## Structure

```
src/pages/   Astro pages (currently just a placeholder homepage)
public/      Static assets served as-is
```
