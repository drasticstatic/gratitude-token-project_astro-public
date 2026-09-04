# Graph Report - .  (2026-09-04)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 8 nodes · 9 edges · 3 communities
- Extraction: 78% EXTRACTED · 22% INFERRED · 0% AMBIGUOUS · INFERRED: 2 edges (avg confidence: 0.65)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `99e9428b`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- [[_COMMUNITY_Community 1|Community 1]]

## God Nodes (most connected - your core abstractions)
1. `HANDOFF — gratitude-token-project_astro (private)` - 3 edges
2. `Handoff — Astro Init Complete` - 3 edges

## Surprising Connections (you probably didn't know these)
- `Handoff — Astro Init Complete` --references--> `HANDOFF — gratitude-token-project_astro (private)`  [EXTRACTED]
  AGENT-SYNC/created-by-mystarch/HANDOFF_ASTRO_INIT.md → HANDOFF-create_astro-workspace-proposal.md

## Communities (3 total, 0 thin omitted)

### Community 1 - "Community 1"
Cohesion: 1.0
Nodes (3): gratitude-token-project, Handoff — Astro Init Complete, HANDOFF — gratitude-token-project_astro (private)

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `Handoff — Astro Init Complete` connect `Community 1` to `Community 0`?**
  _High betweenness centrality (0.048) - this node is a cross-community bridge._
- **Why does `HANDOFF — gratitude-token-project_astro (private)` connect `Community 1` to `Community 0`?**
  _High betweenness centrality (0.048) - this node is a cross-community bridge._