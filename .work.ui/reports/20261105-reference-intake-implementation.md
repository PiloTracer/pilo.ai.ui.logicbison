# Website-reference intake — implementation report

**What this is:** Evidence that UI Design OS can now intake live websites as design inspiration and carry them through DNA, synthesis, SPEC binding, and build/verify — without cloning.
**Status:** Delivered (framework capability) · **Date:** 2026-11-05
**Needs:** operator approval of the demo direction (`trusted-growth`) before it is bound; no other blocker.

## 1. Goal

> "This Agent OS framework should understand, interpret, and implement a user's requirement that requires using other websites as inspiration/reference for customization of design … if the thin client asks to implement something like the webdesign in: [14 URLs]. IT SHOULD BE ABLE TO DO IT."

**Before:** the framework could consume annotated screenshots/manifests and a reference *image*, but had no path for a live website: no URL intake, no measured design evidence, no synthesis/originality gate, no binding to tokens/SPECs.

**After:** `@ui-reference-intake` is a first-class workflow: `scan → dna → synthesize → bind → build → verify`, with a static scanner, two-axis classification, templates, a verified catalog, and a worked direction.

## 2. What was added

| Artifact | Path | Role |
|---|---|---|
| Skill | `skills/ui-reference-intake/skill.md` + `reference.md` | Modes: `scan`, `dna`, `synthesize`, `find`, `bind`, `audit`, `status`; hard rules |
| Scanner | `scripts/reference-scan.py` | Static HTTPS scan, SSRF/robots guards, CSS var resolution, palette/type/space/motion extraction, two-axis classification, `list`/`audit`/`--self-test` |
| Guide | `docs/guides/web-reference-intake.md` | End-to-end runbook, legal/originality, static limits, browser opt-in, troubleshooting |
| Taxonomy | `resources/reference-types.md` | Site type × conversion goal (multi-label); "lead-generating" is a goal family |
| Catalog | `resources/reference-sites.md` | 13 scanned + 1 blocked (Warby Parker 403) references with type/goal/learn/avoid |
| Templates | `templates/work.ui/inputs/references/*` | DNA, direction, registry, screen map |
| Demo evidence | `.work.ui/inputs/references/` | 13 evidence JSON + 13 Draft DNA + `trusted-growth` direction + screen map |
| Routing | `ui-director`, `ui-screen-spec`, `ui-design-foundation`, `ui-visual-verify`, `ui-process-router`, `START_HERE`, `APPROACH`, `README`, `skills/README`, `SKILL_DEPENDENCIES` | Free text → reference workflow; URL vs image distinction; reference-fidelity verify |

## 3. Classification answer (the "lead-generating" question)

Yes — but not as a single genre. The model is **two axes, multi-label**:

- **Site type:** `lead-generation`, `saas-product`, `ecommerce`, `content-seo`, `comparison-marketplace`, `nonprofit-donation`, `scheduling-booking`, `forms-surveys`, `community-membership`, `portfolio-agency`, `dashboard-app`, `education`, `finance`, `media-publisher`, `marketplace`, `other`.
- **Conversion goal:** `demo-booking`, `free-trial`, `signup`, `purchase`, `donation`, `booking`, `newsletter`, `lead-magnet`, `contact-quote`, `application`, `affiliate-referral`, `hybrid`, `unknown`.

The **lead-generating family** = site type `lead-generation` **or** goal in `{demo-booking, contact-quote, lead-magnet, affiliate-referral}` (newsletter alone is deliberately excluded — it is a weak/footer signal).

```bash
python3 scripts/reference-scan.py list --work-ui .work.ui --family lead-generating
```

Result on the 13 scanned references: **8** — `userpilot`, `calendly`, `ellevest`, `hubspot`, `leadpages`, `nerdwallet`, `semrush`, `typeform`. `basecamp`/`databox`/`mailchimp` are SaaS trial pages with a newsletter secondary, not lead-generation pages; the query excludes them. `warbyparker` is ecommerce/purchase but scan-blocked (403) and remains catalog-only. This is exactly why both axes exist: a B2B service page, a SaaS demo page, a finance comparison, and an agency portfolio can all be lead-generating but need different mechanisms.

**Future website types:** add to `REFERENCE_TYPES`/`CONVERSION_GOALS` + taxonomy doc + catalog + a classifier self-test; bump `TAXONOMY_VERSION`. The evidence carries the tags, so future retrieval is not prose guesswork.

## 4. Live scan evidence

Scanned 2026-11-05 (static HTML/CSS, robots-aware, no browser):

| Ref | Types | Goal | Palette candidates | Status |
|---|---|---|---|---|
| userpilot | saas-product, lead-generation | demo-booking | 48 | ok |
| databox | dashboard-app, saas-product | free-trial | 60 | ok |
| hubspot | saas-product, lead-generation | free-trial (+demo) | 60 | ok |
| basecamp | saas-product | free-trial | 29 | ok |
| calendly | scheduling-booking, saas-product, lead-generation | free-trial (+demo) | 61 | ok |
| typeform | forms-surveys, saas-product, lead-generation | free-trial (+demo) | 60 | ok |
| ellevest | forms-surveys, finance | contact-quote (+lead-magnet) | 70 | ok |
| nerdwallet | comparison-marketplace, finance, content-seo | affiliate-referral | 61 | ok |
| monday | dashboard-app, saas-product | signup | 62 | ok |
| leadpages | saas-product | free-trial (+demo) | 25 | ok |
| charitywater | nonprofit-donation | donation | 55 | ok |
| semrush | saas-product, lead-generation, content-seo | free-trial (+demo) | 48 | ok |
| mailchimp | saas-product | free-trial | 44 | ok |
| warbyparker | ecommerce (catalog) | purchase (catalog) | — | **blocked HTTP 403** — use operator screenshot/PDF |

Every `ok` row has `evidence.json` + `REFERENCE_DNA.md` (Draft) and is registered in `REFERENCES.md`/`index.json`. `audit` PASS (0 problems/warnings). `warbyparker` was moved out of the project reference tree (catalog-only) so blocked evidence cannot be mistaken for usable evidence.

## 5. Worked synthesis

`directions/trusted-growth.md` blends `hubspot` (primary 50), `basecamp` (secondary 30), `nerdwallet` (accent 20) into a B2B analytics landing-page direction:

- **Thesis:** calm editorial trust for a buyer who dislikes hype — warm canvas, one teal accent, proof before features.
- **Tokens:** OKLCH proposal with measured contrast (text 15.32:1, muted 6.63:1, accent 4.69:1, white-on-accent 5.03:1); open-source fonts only.
- **Originality:** no HubSpot orange identity/illustrations, Basecamp assets/voice, or NerdWallet ratings/content; recognition test + 3 differentiating moves.
- **A11y:** reference image `alt` gaps are explicitly not inherited (HubSpot 26/95, Basecamp 144/148, NerdWallet 226/294 measured).
- **Status:** Draft — requires operator approval before `bind`.

## 6. Verification

| Gate | Result | Evidence |
|---|---|---|
| Scanner self-test | **PASS** (35 checks) | `python3 scripts/reference-scan.py --self-test` |
| Reference audit | **PASS** (0 problems, 0 warnings) | `python3 scripts/reference-scan.py audit --work-ui .work.ui` |
| Framework structure | **PASS** | `bash scripts/framework-verify.sh` (19 skills; link scan clean; bootstrap test pass) |
| Touch scope | **PASS** (94 files) | `bash scripts/touch-scope-verify.sh` |
| Blast radius | **PASS** (high risk, approved in `.work.ui/touch-scope`) | `bash scripts/blast-radius-check.sh` |
| Gate check | **PASS** | `bash scripts/gate-verify.sh .work.ui/plans/NEXT_UI.md` |

**Environment note:** this container's `/tmp` does not support `chgrp`, so `rsync -a` fails during the deploy self-tests. The framework-verify PASS was produced with a verification-only `rsync` shim (`.work.ui/tmp/bin/rsync`, `-a` → `-rlptD`) that drops group/owner preservation; no repository file was changed for this. Without the shim, framework-verify exits 23 at the deploy self-test (pre-existing environment limitation, not a framework failure).

## 7. Honesty / gaps

- **Static only.** No JS-rendered DOM, computed styles, screenshots, hover/focus, or responsive states. DNA confidence is mostly `medium`; §12 records the gap.
- **Classification is heuristic.** It is multi-label, confidence-scored, and overridable (`--type`, `--goal`); it is not a claim about the site's business model.
- **No assets/copy.** No logos, images, fonts, or page copy were reused; meta descriptions are not reproduced in DNA.
- **No bind yet.** `trusted-growth` is Draft, no `home` SPEC exists, and tokens are not applied. `bind` is correctly blocked.
- **Warby Parker** is catalog-only due to 403; no DNA/evidence is claimed.
- **No legal advice.** Originality guardrails reduce risk; counsel reviews high-risk similarity.

## 8. Next

1. Operator reviews/approves `directions/trusted-growth.md` (or rejects/edits the thesis).
2. Create `home` SPEC (`@ui-screen-spec create - home`), apply the direction's tokens, run token-schema/token-lint.
3. `@ui-reference-intake bind - home` → build → `@ui-visual-verify milestone` (reference-fidelity check).
4. For the thin client (`system-news`): run the same chain with its target screens; scan the specific references, not all 14.

## Next action

`@ui-reference-intake find - lead-generating` to inspect the shortlist, or approve the demo direction before binding.
