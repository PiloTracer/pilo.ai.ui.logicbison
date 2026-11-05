# Home — Screen SPEC

**Status:** Approved · **Date:** 2026-11-05
**Approved by:** operator 2026-11-05 ("apply all fixes"; prior "all approved")
**Needs:** build in the application repo (this framework repo has no app source).
**Slug:** home
**Path:** `.work.ui/screens/home/20261105-SCREEN-SPEC.md`

---

## 1. Summary

A B2B analytics landing page (`/home`) for a skeptical operations/analytics buyer. It moves from a calm editorial promise to proof, three feature modules, a comparison table, one customer story, and a final CTA. Reference direction: [`trusted-growth`](../../inputs/references/directions/trusted-growth.md) (Approved 2026-11-05).

## 2. Personas & jobs

| Persona | Job |
|---------|-----|
| Operations/analytics lead (20–200 person company) | Decide whether this tool is credible and worth a trial; compare it without marketing noise. |
| Evaluator / champion | Find proof and a clear next action to bring to a manager. |

## 3. States

| State | Behaviour |
|-------|-----------|
| loading | Static page; no skeleton needed above the fold. Comparison table may show a text "Loading comparison…" state if hydrated. |
| empty | Comparison table shows "No rows match" with a reset action. |
| error | Comparison table shows a retry row; page remains readable. |
| partial | Comparison table shows loaded rows plus a "Some providers omitted" note; no blank cells. |
| permission-denied | N/A — public marketing page; no authenticated or restricted state. |
| success | Default page; primary CTA + secondary demo link visible. |

## 4. Layout & hierarchy

| Region | Reference ID | Notes |
|--------|--------------|-------|
| Nav | `hubspot` | One product-family label, 4 links max, one primary CTA. |
| Hero | `basecamp` + `hubspot` | Serif display promise, one-line proof, primary CTA; product UI below fold. |
| Proof band | `nerdwallet` | One stat band + one named outcome; no copied logos. |
| Feature modules | `hubspot` | Three modules, each with a number and one job. |
| Comparison table | `nerdwallet` | Flat bordered table, sortable/filterable on desktop, stacked on mobile. |
| Customer story | `basecamp` | One story, own copy; no reference testimonial. |
| Final CTA | `basecamp` | One primary CTA, no competing accent. |

Breakpoints: 360 / 768 / 1024 / 1440. Container max 1,120 px; measure 62–70 ch.

## 5. Content

- Hero: "Make performance legible." / one-line proof / "Start free".
- Primary CTA: **Start free**; secondary text link: **Book a demo**.
- Feature labels: **Connect**, **Compare**, **Act** (each with one number).
- Comparison columns: product, setup time, metric coverage, price model, data ownership.
- No reference copy, taglines, testimonials, or customer names.

## 6. Interactions

- Nav: disclosure menu below 768 px; focus visible; escape closes.
- Comparison table: sort, filter, keyboard-navigable; mobile stacks rows with labels.
- Primary CTA: link to trial; secondary demo link to form.
- Tier 2 effect: one reveal on the proof band (opacity/translate, `--duration-fast`); disabled under reduced motion.
- No scroll-jacking, parallax, custom cursor, or autoplay media.

## 7. Data dependencies

- None for the demo page; trial/demo links are placeholders.
- Domain SPEC: N/A (marketing page).

## 8. Tokens & components

| Component | Catalog status | Native waiver |
|-----------|----------------|---------------|
| Button | native allowed | semantic `<button>` / `<a>` + token styles; no custom primitive |
| Card | native allowed | semantic `<article>` + token border/radius; no custom primitive |
| ComparisonTable | native allowed | native `<table>` + JS sort/filter; APG table semantics; no heavy data-grid dependency |
| Nav | native allowed | `<header>` / `<nav>` + disclosure JS; APG disclosure/menu |

Use `--surface-*`, `--color-*`, `--space-*`, `--radius-*`, and motion tokens from foundation doc 02. Status must be **done** before build tasks unless a documented waiver exists.

## 9. Accessibility

WCAG 2.2 AA. Body 4.5:1, large/UI 3:1; 44 px targets; visible focus; table has caption + header associations; mobile stacked rows keep labels; no reference `alt` gaps inherited; reduced motion honored; keyboard-only pass before ship.

## 10. Analytics

`home_view`, `cta_start_free`, `cta_book_demo`, `comparison_sort`, `comparison_filter` (no PII).

## 11. Acceptance criteria

- [ ] Warm off-white canvas; one teal accent; no second accent.
- [ ] Display/body pair (Fraunces + Instrument Sans); body 17 px; 1.5 line-height.
- [ ] 8 px base; 32/64/96 section rhythm; 1,120 px container.
- [ ] Flat bordered cards (1 px, 12 px radius); shadow only on hover.
- [ ] One primary CTA per section; secondary CTA is a text link.
- [ ] Comparison table keyboard/filter/sort works; mobile stacks with labels.
- [ ] One Tier 2 reveal with reduced-motion fallback.
- [ ] No copied logo/asset/font/copy; recognition test passed.
- [ ] Reference binding: `hubspot`/`basecamp`/`nerdwallet` + Approved `trusted-growth` direction reflected; no reference assets.

## 12. Concept / UIS registry

| UIS | Applies | Reason | Status |
|-----|---------|--------|--------|
| UIS-01 | yes | new layout/hierarchy | pending |
| UIS-03 | yes | one Tier 2 reveal | pending |
| UIS-04 | yes | reference-derived token change | done — contrast measured 2026-11-05 |
| UIS-05 | yes | comparison-table widget | pending |
| UIS-06 | yes | agent build | pending |
| UIS-07 | yes | craft tier refined | pending |
| UIS-08 | yes | all screens before ship | pending |
| UIS-09 | no | no charts | n/a |
| UIS-10 | yes | marketing landing page | pending |

## 13. Visual references

| Field | Value |
|-------|-------|
| **exampleIds** | N/A — live website references; N/A waiver recorded in `HANDOFF_UI` |
| **referenceManifest** | `.work.ui/inputs/references/directions/trusted-growth.md` (Approved; the direction is the manifest) |
| **manifestPaths** | N/A |
| **craftTier** | refined |
| **beforeScreenshot** | N/A |
| **extractedRules** | 5 binding rules below; mirrored in §11 |

### extractedRules (binding)

- warm off-white canvas, one teal accent, no second accent
- display/body pair (Fraunces + Instrument Sans), 1.6 ratio, 1.5 body line-height
- 8 px base; 32/64/96 section rhythm; 1,120 px container
- flat cards, 1 px border, 12 px radius; shadow only on hover
- one primary CTA per section; secondary CTA is a text link

### regionMap

| §4 region | reference id |
|-----------|--------------|
| Nav | `hubspot` |
| Hero | `basecamp`, `hubspot` |
| Proof band | `nerdwallet` |
| Comparison table | `nerdwallet` |
| Final CTA | `basecamp` |

### Figma / external (optional)

- N/A

### Reference DNA (binding)

- **referenceIds:** `hubspot`, `basecamp`, `nerdwallet`
- **referenceManifest:** `.work.ui/inputs/references/directions/trusted-growth.md` (Approved 2026-11-05)
- **doNotCopy:** logos/wordmarks; HubSpot orange identity; Basecamp illustrations/voice; NerdWallet ratings/comparison content; source copy/testimonials; proprietary fonts
- **originalityCheck:** own teal palette, composition, imagery, copy, and component shape; side-by-side recognition test passed
- **accessibility:** WCAG 2.2 AA; reference image `alt` gaps not inherited

## 14. Data visualization

N/A — no charts or data visualization on this screen.

---

## Next action

`@ui-design-system init` — run in the application repo (this framework repo has no app source).
