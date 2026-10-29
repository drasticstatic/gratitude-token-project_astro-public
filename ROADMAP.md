# ROADMAP — gratitude-token-project_astro ("AstroSaurus")

*First drafted Oct 29, 2026 by Fortuna from the repo's scaffold, the claude.ai deliverables Christopher dropped into
`AGENT-SYNC/created-in-claude-cloud/` the same afternoon, and the cross-repo notes in `PENDING-TASKS.md`. Private file
(not in the sync allowlist). Nothing here is decided unless it says so; the direction of the protocol itself is
Christopher's and the attorneys' to settle.*

## What this repo is for

The Astro sidecar of the Ethereal Offering Protocol: changelog-as-content pages and a scrubbed structure map, published
separately from the dApp. On Oct 29 Christopher also made it the **catalyst** for the documents work: the six claude.ai
artifacts landed here first, and whether they belong here or in the Docusaurus site (`gratitude-token-project_docs`,
"DocuSaurus") is reconciled later ("the Sauruses", a candidate for one of the held ultrareviews). Until then this repo
holds the artifacts privately and this roadmap tells the story.

## The deliverables, and what reading them found (Oct 29)

Six files from the pinned claude.ai chat "Gratitude token blockchain project review" (`AGENT-SYNC/created-in-claude-cloud/`,
link in its README). **Christopher has not reviewed them for accuracy nor reconciled them with the real whitepaper or his
October 2025 pen-and-paper edits.** They are candidates, not the direction.

| File | What it is |
|---|---|
| `ethereal-legal-whitepaper.md` | legally revised whitepaper sections, first pass (disclaimers, executive summary, tokenomics) |
| `ethereal-legal-whitepaper v2.md` | the same plus "sacred liquidity pools", a Treasury Agent governed by the community, a "Sacred Exchange" AMM reframing, a Howey summary, privacy principles, a reframed risk disclosure |
| `simplified-tokenomics.md` | a **three-token** model (GRAT earn-only, Proof of Burn soulbound NFTs, Role soulbound NFTs); crowdsale, AMM/DEX, staking APR, liquid-staking derivatives and the other tokens removed |
| `extended-timeline.md` | 18 months in six phases, dated **January 2026 to June 2027** |
| `partnership-mou-template.md` | an MOU between Ethereal Offering and Psychedelics In Recovery (PIR) |
| `allison-hoots-presentation.md` | a legal consultation brief: securities risk, PA RFRA, three entity options, five questions for counsel |

**Findings a reader should know before relying on any of them:**

1. **The deliverables disagree with each other.** The whitepaper v2 keeps ETHO, a donation-with-token "Sacred Offering
   Campaign", liquidity pools, a trading Treasury Agent and an AMM, all reframed as active stewardship. The simplified
   tokenomics removes every one of those and keeps three tokens. The MOU allocates 5% of ETHO supply to PIR, a token the
   simplified model deletes. The timeline schedules the Sacred Offering Campaign, "Treasury Agent activation",
   "treasury yields" and a marketplace for non-soulbound NFTs, which the simplified model also removes. This is the real
   fork in the road: **reframed DeFi** or **simplified sacred core**. Christopher's four open questions from the chat
   (dual treasury, is active participation enough for Howey, is 18 months right, which document next) all hang on it.
2. **The dates are stale.** The timeline starts January 2026 and targets mainnet Q3 to Q4 2026; it is late October 2026.
   The Allison brief still says "mainnet within 90 days" while the timeline calls 90 days too aggressive. Treat every
   date as relative ("month 1" = whenever the legal consultation happens), not calendar.
3. **Facts stated as settled are the chat's framing.** Psanctuary Church as a 508(c)(1)(a), an "Ethereal Offering
   Foundation (501c3 pending)", a $100K legal defense fund, counsel "on retainer", a $250K to $480K budget: none of these
   are verified here. The attorneys and Christopher confirm or strike them.
4. **Provenance.** The original whitepaper JSON imports came from ChatGPT and the Docusaurus site was built from them; these
   six are Claude Opus 5.5 drafts from Oct 2026. The pen-and-paper edits (Oct 2025) are a third source and the only one in
   Christopher's own hand.

## Phases

### Phase 0 · The scaffold as it stands (done Sep 23, 2026; unchanged)
- Astro placeholder homepage, private/public split with `sync-public-allowlist.yml` to `gratitude-token-project_astro-public`.
- Breadcrumb: build the changelog pages from `my-template/changelog-template/`, not from scratch.
- Oct 29: the six deliverables filed privately; this roadmap; `PENDING-TASKS.md` updated.

### Phase 1 · Reconcile the three sources (Christopher, with the attorneys; agents format)
- [ ] Christopher reads the six deliverables and marks each section keep / strike / unsure.
- [ ] Transcribe or dictate the October 2025 pen-and-paper whitepaper edits (agents format; see `_docs/PENDING-TASKS.md`).
- [ ] Decide the fork: reframed DeFi (v2) or simplified sacred core (three tokens), or a staged path (simplified first,
      DeFi only if counsel clears it). Record the decision and the date in this file.
- [ ] Answer the chat's four questions in writing: dual treasury; active-participation Howey defence; the timeline; the
      next document (Terms of Service, smart-contract specs, Psanctuary Board deck, or a beta-tester guide).
- [ ] Verify or strike every entity and money fact in finding 3 above. Gather the PA RFRA document and the Psanctuary
      formation documents before the meeting with Allison Hoots.
- Output: one reconciled whitepaper outline, dated, with a "draft, not legal advice" banner.

### Phase 2 · Content into the sites
- [ ] Docusaurus (`_docs`): the reconciled whitepaper, the MOU template (as a template), the timeline rewritten in
      relative months with the fork decision applied. Keep the existing content conventions there.
- [ ] This repo: changelog-as-content from the main repo's `changelog.md` via the changelog template; the scrubbed
      structure map rendered from `graphify-out/` (rendered map only; the raw graph never enters an allowlist).
- [ ] The "Sauruses" question settled: what lives in Astro, what in Docusaurus, one link between them. Candidate for a
      held ultrareview once both have content.

### Phase 3 · Psanctuary organisation migration (Alfred prepares the arrival kit)
- [ ] First repo to move to the **Psanctuary** GitHub org (not PsanctuaryChurch): CLAUDE.md pointer, AGENTS.md, the sync
      re-pointed at the org's public twin, Pages, the Littlebird bridge section if the org allows it. Pattern: THEF's
      `iamoneself` / `david-amaringo` moves (transfer plus secrets, `preview` → `main` by Promote).
- [ ] Blockers: Phase 1 and 2 content exists; the org has a CLAUDE.md/AGENTS.md convention to land in.

### Phase 4 · Agents and the longer arc
- [ ] Eliza-style character definitions for the project's agents (idea, no build yet).
- [ ] A proposal to Allison Hoots and Psanctuary in the lab's proposal format (seeded from the legal brief), showing what
      is being built piece by piece: on Christopher's word, not before Phase 1.
- [ ] Contracts review in the main repo before any Sepolia deploy (Alfred's recon, Oct 28): untrack `dist/`, then an
      ultrareview Christopher launches.

## Working notes

- Littlebird has two projects for this work: 🕊️ Ethereal Offering (existing) and ✨ Ethereal Offering 🦕 AstroSaurus (new,
  Oct 29). Both kept for now; merged later if they turn out to be one project.
- Christopher may teleport a claude.ai cloud session into this repo when the build starts; the deliverables folder is the
  hand-off point either way.
- `.intent/` and `AGENT-SYNC/created-by-mystarch/HANDOFF_ASTRO_INIT.md` carry uncommitted changes from an Intent workspace;
  not touched by this roadmap.
- Builders while Augment is on hiatus: Alfred / Kavanah; Fortuna contributes cross-repo notes only.
