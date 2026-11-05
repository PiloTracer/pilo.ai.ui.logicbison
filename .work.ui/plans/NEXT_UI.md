# NEXT_UI — UI planning backlog

> **Demo skeleton.** In an adopter repo, **`@ui-component-build`** owns `## Current UI iteration`; **`ui-*` skills** and session close update **Recommended next**.

**Updated:** 2026-11-05

---

## Done (UI)

| Item | Artifact |
|------|----------|
| 2026-11-05 — website-reference intake capability (19th skill) | `skills/ui-reference-intake/`, `scripts/reference-scan.py`, `docs/guides/web-reference-intake.md`, `resources/reference-types.md`, `resources/reference-sites.md`, templates; 13 live scans + Draft DNA; `trusted-growth` direction (Draft); scanner self-test 35/35, audit PASS, framework-verify PASS, touch-scope PASS, blast-radius PASS, gate-verify PASS |
| 2026-11-05 — effects & modern widgets layer | `resources/effects-and-widgets.md`; UIS-03/UIS-05 expanded; CATALOG `Behavior source`/`APG pattern`/`States`; `ui-component-build` + `ui-visual-verify` gates for Tier 2–3 effects and complex widgets |
| 2026-11-05 — `trusted-growth` approved + bound to `home`; SPEC approved | direction Approved; tokens applied (44 DTCG tokens valid; measured contrasts pass); `screens/home/20261105-SCREEN-SPEC.md` Approved; SPEC §13/§11 bound; screen map S3; `SCREEN_REFERENCE_MAP.md`; `find - lead-generating` → 8 refs; traceability PASS |
| 2026-08-19 — ui-deploy-repo removed (consistency, operator-directed) | deleted `skills/ui-deploy-repo/` + `scripts/ui-deploy-repo.sh`; reference sweep (registries, verifier self-tests, cursorrules template, `.quick/`); deploy family = basic + files (parity with Agent OS / `pilo.ai.logicbison`); gates PASS (touch-scope, blast-radius, framework-verify 18 skills, gate-verify) |
| UI Design OS bootstrap | `.work.ui/` skeleton |
| 2026-08-19 — Frameworks registry + six-slot sister discovery, released as v0.6.1 | `.cursorrules` Layer-1 registry; `templates/cursorrules.ui.template` (7 rows, family-aware); `scripts/sister-discovery.sh`; `ui-deploy-basic` deploy-time fill; `cursorrules-verify.sh` six-slot audit + `--fix`; `docs/homogenization/ui.md`; gates PASS (touch-scope, blast-radius, framework-verify, gate-verify). By design: child never resolves the parent orchestrator (`.ai` legacy-only). |
| 2026-08-13 — `ui-session` session-control parity + dual-scope model | `skills/ui-session/skill.md` + new `reference.md`; `scripts/ui-session.sh` (verbs start/status/context/add/commit/close/push, `scoped`, aliases, secrets scan, ref-prefixed default message; framework repo = whole tree, target repos = `.work.ui/` only); reference sweep across registries/docs/templates; gates PASS (touch-scope, blast-radius, framework-verify, gate-verify) |

---

## Reference & effects follow-up

| Priority | Item | Notes |
|----------|------|-------|
| 0 | In the **application repo**: `@ui-design-system init` → `@ui-component-build plan - S1` → build `home` | Reference workflow + SPEC approval complete; this framework repo has no app source |
| 1 | Run `@ui-reference-intake find - lead-generating` for the thin client (`system-news`) and pick 2–4 refs per screen | Do not blend all 14; classify before scanning |
| 2 | Add Tier 2–3 effect/widget evidence to the next screen SPEC (§6/§8) | Use `resources/effects-and-widgets.md`; Tier 3 needs a browser pass |

---

## Blocked on owner (UI)

| # | Item | Notes |
|---|------|-------|
| - | (none) | |

---

## Recommended next

| Priority | Item | Notes |
|----------|------|-------|
| **0** | `@ui-design-foundation greenfield` | Creates foundation docs 01–04 under `.work.ui/plans/foundation/` |
| **1** | `@ui-design-foundation certify screen-spec-ready` | After foundation gates |
| **2** | `@ui-design-system init` | Catalog from foundation doc 03 |
| **3** | `@ui-screen-spec create - <slug>` | Per screen in screen map |
| **4** | `@ui-component-build plan - S0` | P0 primitives when craft tier ≥ refined |
| **5** | `@ui-component-build plan - S1` | After SPECs **Approved** + primitives done |

---

## Intake queue

> Free-text UI requests captured by `@ui-screen-spec intake - <sentence>`. Format: `- <YYYY-MM-DD> · <class> · "<sentence>" → <next command>`. Classes: local / cross-cutting / brownfield / underspecified.

- (none yet)

---

## Current UI iteration

*(No active UI iteration — run `@ui-component-build plan - S0` then `S1` after **screen-spec-ready**.)*

```markdown
## Current UI iteration - S{N}: <milestone name>

**Milestone ref:** S{N} · screen map / UI roadmap
**Status:** planning | in-progress | complete
**Started:** YYYY-MM-DD

### In scope
- …

### Out of scope (explicit)
- …

### Tasks
| ID | Description | Files | Status | Notes |
|----|-------------|-------|--------|-------|
| S1-T1 | … | `REPLACE:UI_APP_ROOT/...` | pending | |

### Acceptance criteria
- …

### UIS registry (this iteration)
| UIS | Applies | Reason | Status |
|-----|---------|--------|--------|
| UIS-06 | yes | agent UI session | pending |

### Done this UI iteration
(move completed tasks here on `@ui-component-build complete`)
```

---

## Shared engineering unknowns

When UI blockers affect backend, add a row to **`.work/plans/UNKNOWNS.md`** (Agent OS) and reference here.
