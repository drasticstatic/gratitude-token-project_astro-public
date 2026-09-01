# HANDOFF — gratitude-token-project_astro (private)

*Baked by Mystarch (Intent's app-level Chief of Staff), 2026-09-01. Intent's create-workspace
proposal card couldn't resolve a base branch for this repo even after the repo was seeded with a
commit and cloned locally — the brief that would have shipped inside that proposal's `initialPrompt`
is preserved here instead, so a manually-created Intent workspace (or any other session) pointed at
this repo picks it up cold. Read this file first, whatever specialist you are.*

## What this repo is

`gratitude-token-project_astro` — the Astro-based site repo, private, source-of-truth for a
future public counterpart `gratitude-token-project_astro-public` (does **not** exist yet — you
create it, see Task 5). Direct private→public flow, no `-preview` suffix, matching the
`pir-devine-news` / `pir-devine-news-public` pattern — **not** `iamoneself`'s
`-public-preview` staging pattern.

Full cross-repo context (naming conventions, why this repo exists, the doc-sync queue this fits
into): `/Users/christopherwilson/intent/workspaces/__chief__/pending-tasks.md`. Read that too.

## Reference templates — read these fully before writing anything

- `/Users/christopherwilson/code/my-template/.github/dependabot.yml`
- `/Users/christopherwilson/code/my-template/branch-protection/ruleset.json` — apply via
  `gh api repos/OWNER/REPO/rulesets --method POST --input branch-protection/ruleset.json`. This is
  **not** a repo file to commit — it's applied through the GitHub API against both this repo and
  the future public repo once each exists.
- `/Users/christopherwilson/code/my-template/workflow-templates/sync-public-allowlist.yml` —
  allowlist model (mostly private, only allowlisted paths sync out). This repo is already listed
  in that template's example-repo comment as of 2026-09-01.
- `/Users/christopherwilson/code/my-template/workflow-templates/GITEXPORTER-TO-ACTIONS-SYNC.md` —
  full setup walkthrough, PAT scope gotchas, `.nojekyll` notes.

## Tasks (in order)

1. **Confirm local state.** This repo is cloned at
   `/Users/christopherwilson/dappu/gratitude-token-project_astro`, `main` branch, one seed commit
   (`README.md`). Clean working tree as of 2026-09-01.
2. **Build the Astro site's initial file structure**, replacing the placeholder README with a real
   one documenting the private/public split, so a future Kavanah-style coordinator can read this
   repo cold.
3. **Add `.github/dependabot.yml`** from the my-template copy — adjust `package-ecosystem` entries
   to whatever the Astro scaffold actually uses (likely npm only; drop the commented pip block if
   unused).
4. **Add `.github/workflows/sync-public-allowlist.yml`** adapted from the my-template copy: target
   repo `gratitude-token-project_astro-public`. `public_allowlist` should include the built
   site output / public-facing source (README.md, LICENSE if added, site source dirs);
   `private_allowlist` should include `AGENT-SYNC/`, `CLAUDE.md`, `.claude/`, `specs/`, `HANDOFF.md`
   (this file — it's internal, per the ecosystem convention that HANDOFF.md is a private pickup
   brief, not public content), and anything else not meant for public eyes. Follow the
   validate-tripwire discipline in the template: **every new root path must be classified in the
   same commit** it's added in, or the next sync fails CI.
5. **Create the `gratitude-token-project_astro-public` GitHub repo** (public, `drasticstatic`
   account) via `gh repo create`. Two separate things here — don't conflate them:
   - (a) Creating the repo itself uses the already-authenticated `gh` CLI. No new token needed.
   - (b) The `PUBLIC_REPO_TOKEN` secret the sync workflow needs to *push* into that repo requires a
     **classic PAT with both `repo` + `workflow` scopes** (see the GOTCHAS block in
     `sync-public-allowlist.yml` for why `workflow` scope specifically matters). Ask Christopher for
     that PAT when you reach this step — don't assume you already have it.
6. **Apply the branch-protection ruleset** (`my-template/branch-protection/ruleset.json`) to `main`
   on both repos once each exists, via `gh api`.
7. **Write `AGENT-SYNC/created-by-mystarch/HANDOFF_ASTRO_INIT.md`** in this repo summarizing what
   was set up, what's pending (PAT entry, first sync run, Pages enablement), and pointing back to
   `gratitude-token-project`'s existing coordinator handoffs
   (`AGENT-SYNC/created-by-mystarch/HANDOFF_20260831_COORDINATOR_PICKUP.md` and
   `HANDOFF_20260831_INIT_RETIREMENT_AND_NEXT_TASKS.md` in the `tests-config` workspace) for the
   broader multi-repo context this fits into.

## Downstream note (informational — not yours to act on yet)

Once `react-config`'s coordinator finishes its current triple-404 work on
`gratitude-token-project_docs`, there's a planned follow-up to migrate `_docs` content that doesn't
belong in the public Docusaurus site into this private repo for record-keeping, leaving pointers
behind. Be aware of it; don't start it.

## Do not

- Force-push.
- Skip the validate-tripwire step in the sync workflow.
- Put personal/sensitive content (e.g. the "My Wy" passage found elsewhere in this ecosystem)
  anywhere that syncs to the public repo.
