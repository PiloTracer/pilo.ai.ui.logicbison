# Golden paths — from empty repo to shippable UI

**Purpose:** Recipe-style skill chains for common project shapes. Use when you do not want to memorize the full `ui-*` registry — invoke `@ui-director - <description>` or follow a path below.

**Process memory (all paths):** `.work.ui/context/HANDOFF_UI.md` (session + decisions) · `.work.ui/plans/NEXT_UI.md` (iteration + intake queue) · `.work.ui/plans/UNKNOWNS.md` / `RISK_REGISTRY.md` (blocked items). Agent OS `@session-control` still owns commit/session when `.ai/` is present ([`COHABITATION.md`](../../COHABITATION.md)).

---

## Path 1 — SaaS product (web)

| Step | Command |
|------|---------|
| 1 | `@ui-bootstrap init` → merge cursorrules if needed |
| 2 | `@ui-project-approach - SaaS dashboard product` |
| 3 | `@ui-style-stack set - tailwind` (or your CSS stack) |
| 4 | `@ui-design-foundation greenfield` → `probe` if vague → `certify screen-spec-ready` |
| 5 | `@ui-screen-spec create - <slug>` per screen map |
| 6 | `@ui-design-system init` → `@ui-component-build plan - S0` → `start` → `continue` |
| 7 | Ship gate: `bash .ai.ui/scripts/ui-ship-check.sh` → `@ui-component-build complete` |

---

## Path 2 — Marketing site

Same as Path 1; archetype `marketing-site`. Add `@ui-concept-run - UIS-10` for landing/hero screens. Copy early: `@ui-copy plan - <screen>` after SPEC.

---

## Path 3 — Analytical dashboard

Path 1 + foundation doc 03 chart library + doc 02 chart tokens. Milestone verify: `@ui-concept-run - UIS-09`. See [`APPROACH.md`](../../APPROACH.md) analytical subtype.

---

## Path 4 — Python desktop app

| Step | Command |
|------|---------|
| 1–4 | Bootstrap → approach (`desktop-app`) → foundation (DTCG `tokens.json`) |
| 5 | `@ui-screen-spec create - <app-shell>` |
| 6 | `@ui-python-desktop stack set - pyside6` (or `flet` / `pyqt` — see license note in skill) |
| 7 | `@ui-python-desktop scaffold - <slug>` → `component add` → `verify - <path>` |
| 8 | Run app in **your** env ([`docs/guides/python-desktop-runbook.md`](../guides/python-desktop-runbook.md)); optional vision tier after §8.2 authorization |

---

## Path 5 — Brownfield / unsure request

`@ui-screen-spec intake - <one sentence>` → follow routed command · or `@ui-design-foundation probe` until `screen-spec-ready`.

---

## Path 6 — Full-stack feature (UI + backend)

`@x-director - <describe feature>` when Agent OS is present; UI slice uses Path 1 for screens only. Do not let backend work absorb UI gates.

---

## Debugging / follow-up (when something fails)

| Symptom | Run |
|---------|-----|
| “Where did we leave off?” | Read `HANDOFF_UI` + `NEXT_UI` |
| Verifiers red | `@ui-plan-verify audit` (routes gaps, never fixes) |
| Pre-merge UI | `bash .ai.ui/scripts/ui-ship-check.sh` |
| Routing feels wrong | `bash .ai.ui/scripts/director-routing-selftest.sh` |
| Done tasks with empty notes | Fix `NEXT_UI` § Done — `gate-verify` blocks commit |
| Blocked owner decisions | Append `.work.ui/plans/UNKNOWNS.md` |

See [`docs/guides/development-lifecycle.md`](../guides/development-lifecycle.md) for the full create → track → debug → ship loop.