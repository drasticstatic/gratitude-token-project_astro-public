# Gratitude Token Project — Astro Site 🙏

> Sidecar Astro site for the Ethereal Offering Protocol — changelog-as-content and a scrubbed structure map, published separately from the main dApp.

[![License: MIT](https://img.shields.io/badge/license-MIT-lightgrey?style=flat)](LICENSE)
[![Public Preview](https://img.shields.io/badge/%F0%9F%8C%90%20Public%20Preview-Available-brightgreen)](https://drasticstatic.github.io/gratitude-token-project_astro-public/) [![Sync](https://github.com/drasticstatic/gratitude-token-project_astro/actions/workflows/sync-public-allowlist.yml/badge.svg)](https://github.com/drasticstatic/gratitude-token-project_astro/actions/workflows/sync-public-allowlist.yml) [![Built with Claude Code](https://img.shields.io/badge/Built%20with-Claude%20Code%20CLI-blueviolet)](https://code.claude.com/docs/en/overview) [![Status](https://img.shields.io/badge/Status-%F0%9F%8C%B1%20Early%20Scaffold-orange)](https://github.com/drasticstatic/gratitude-token-project_astro)

---

**🌐 [Explore the Public Preview →](https://drasticstatic.github.io/gratitude-token-project_astro-public/)**

---

## Table of Contents

- [👋 What This Is](#what-this-is)
- [🔒 Private / Public Split](#private-public-split)
- [💻 Local Development](#local-development)
- [🏗️ Structure](#structure)

---

<a id="what-this-is"></a>
## 👋 What This Is

Sidecar [Astro](https://astro.build) site for the
[gratitude-token-project](https://github.com/drasticstatic/gratitude-token-project) dApp
(the "Ethereal Offering Protocol"). It publishes two things the main dApp repo doesn't:

- **Changelog-as-content pages** — the project's `changelog.md` rendered as a public,
  browsable site.
- **A scrubbed structure map** — contract/module relationships only (via
  [graphify](https://github.com/drasticstatic/gratitude-token-project/tree/main/graphify-out)),
  with no source snippets.

Neither is populated yet — this repo currently holds the initial site scaffold only.

---

<a id="private-public-split"></a>
## 🔒 Private / Public Split

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

---

<a id="local-development"></a>
## 💻 Local Development

```bash
npm install
npm run dev       # dev server
npm run build      # production build to dist/
npm run preview    # preview the production build
```

Requires Node.js `>=22.12.0`.

---

<a id="structure"></a>
## 🏗️ Structure

```
src/pages/   Astro pages (currently just a placeholder homepage)
public/      Static assets served as-is
```

---

*Built and maintained by [drasticstatic](https://github.com/drasticstatic) · w/ Anthropic's Claude Code CLI*
