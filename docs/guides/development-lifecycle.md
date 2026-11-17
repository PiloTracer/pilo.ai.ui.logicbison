# UI development lifecycle — create, track, debug, improve

**Purpose:** Map UI Design OS artifacts and commands to the whole software workflow: project creation, iteration, verification, issue follow-up, and continuous improvement — alongside Agent OS for engineering and sessions.

This framework **does not** replace `@session-control`, `@code-implementation`, or backend skills. It owns the **UI layer** under `.work.ui/` and the quality gates that keep generated UI trustworthy.

---

## 1. Create (project / UI layer)

| Goal | Owner | Artifact / command |
|------|--------|-------------------|
| Scaffold UI memory | `@ui-bootstrap init` | `.work.ui/`, `HANDOFF_UI`, `NEXT_UI` |
| Classify product | `@ui-project-approach` | Archetype in foundation doc 01 |
| Tokens + screen map | `@ui-design-foundation greenfield` | Docs 01–04, `tokens.json` |
| Free-text idea | `@ui-screen-spec intake` or `@ui-director` | Intake queue in `NEXT_UI` |
| Deploy framework elsewhere | `@deploy-basic` / `@deploy-files` | Target `.cursorrules` + `.work.ui/` |

Recipes: [`docs/adoption/GOLDEN_PATHS.md`](../adoption/GOLDEN_PATHS.md).

---

## 2. Track (process memory)

| File | What it tracks |
|------|----------------|
| `HANDOFF_UI.md` | Latest `@ui-director` action, session open/close, blockers, next command |
| `NEXT_UI.md` | Current milestone `S{N}`, tasks, **Done** (must include Notes — `gate-verify`) |
| `PROBE_LEDGER.md` | Foundation/roadmap probe coverage (honesty-checked) |
| `UNKNOWNS.md` | Owner-blocked UI decisions |
| `RISK_REGISTRY.md` / `ASSUMPTIONS.md` | UI risks and assumptions |
| `screens/<slug>/` | Screen SPECs (source of truth for build) |
| `.work.ui/reports/` | Audits, eval JSON, vision demos |

**Cross-link:** When `.work/` exists, mirror milestone status in Agent OS `HANDOFF.md` § UI layer (`COHABITATION.md`).

---

## 3. Develop (implementation)

| Phase | Skill |
|-------|--------|
| Primitives | `@ui-design-system init` / `add` |
| Milestone plan | `@ui-component-build plan - S{N}` |
| Code | `start` / `continue` (UI task gate per task) |
| Copy | `@ui-copy write` / `plan` / `review` |
| Desktop | `@ui-python-desktop scaffold` / `component add` |

Self-revision loop (agent-assisted): generate → render → assert → fix (max 2 iterations); log in task Notes.

---

## 4. Debug & resolve (when quality or planning breaks)

| Problem | Diagnostic | Resolution route |
|---------|------------|------------------|
| Verifier failure | `@ui-plan-verify audit` | Named `@ui-*` command per gap |
| orphan screen / no SPEC | `traceability-verify` | `@ui-screen-spec create` |
| Thin probe coverage | `readiness-verify` | `@ui-design-foundation probe` |
| Token drift / raw hex | `token-lint.sh` | Fix to semantic tokens |
| DTCG invalid | `token-schema-verify.sh` | Fix `tokens.json` |
| Inconsistent button labels | `copy-label-scan.sh` | `@ui-copy audit` |
| Director mis-route | `director-routing-selftest.sh` | Fix `ui-director` bucket table + golden TSV |
| Visual / a11y | `@ui-visual-verify`, `@ui-accessibility-audit` | Fix + re-run |
| Stuck / vague scope | `@ui-design-foundation probe` | Until `certify screen-spec-ready` |

**Honesty rule:** Never mark PASS when script output shows FAIL.

---

## 5. Ship (milestone boundary)

```bash
# Adopter repo (prefix .ai.ui/ if nested):
bash .ai.ui/scripts/ui-ship-check.sh
```

Then skills: `@ui-visual-verify milestone` · `@ui-accessibility-audit milestone` · `@ui-plan-verify audit` · `@ui-component-build complete`.

Static-first; browser/vision tiers only with §8.2 authorization ([`resources/web-research-2026.md`](../../resources/web-research-2026.md)).

---

## 6. Improve (framework & product)

| Activity | Where |
|----------|--------|
| Framework changes | `CHANGELOG.md`, `framework-verify.sh`, touch-scope |
| UI improvement plans | `.work.ui/reports/*-improvement-plan*.md` |
| Eval trends (advisory) | `ui-eval.sh` + `.work.ui/reports/ui-eval-*.json` |
| Post-mortem | Append `HANDOFF_UI` + optional report under `.work.ui/reports/` |

---

## 7. Single entry for humans

**Free text:** `@ui-director - <describe what you want>` — classification, chain, and `HANDOFF_UI` record.

**UI-only Q&A:** `@ui-process-router - <question>`.

**Full stack:** `@x-director` when Agent OS + UI Design OS coexist.