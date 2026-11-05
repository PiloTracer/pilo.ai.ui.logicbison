# REFERENCE DNA — calendly

**What this is:** Distilled design mechanics from https://calendly.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; hover and responsive states not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `calendly` |
| URL | https://calendly.com/ |
| Final URL | https://calendly.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `9daee81f31ca…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `scheduling-booking`
- **All types (multi-label):** `scheduling-booking`, `saas-product`, `lead-generation`
- **Conversion goal:** `free-trial` · secondary: `demo-booking`, `contact-quote`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — lead-generation: sales CTA: talk to sales; saas-product: SaaS CTA/product language: pricing, software; scheduling-booking: scheduling language: meeting scheduling, scheduling software
- **Identity:** Scheduling SaaS. The page is clean and product-led: navy/cream palette, a product-UI hero, feature modules for booking/prep/recaps/payments, and a free-trial + sales path. *(estimated from page structure + measured facts)*
- **Title (observed):** Meeting Scheduling Software and AI Meeting Tools | Calendly
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'nav': 3, 'main': 1, 'section': 9, 'footer': 1}
- **Sections / articles / forms:** 9 / 0 / 0
- **Headings observed:** All the work around meetings, handled.; Book meetings with the world’s #1 scheduling tool; Introducing your 24/7 AI scheduling assistant; Actionable, shareable recaps for every meeting; Flexible, built-in payment tools
- **Nav labels:** Pricing, Scheduling Simplified booking, Callie Beta AI assistant, Notetaker Meeting recaps and action items, Contacts Relationship management tools, Payments Flexible ways to get paid, Integrations, Security
- **CTA labels:** Product, Solutions, Resources, Pricing, Talk to sales, Get started Get started for free, Integrations, Security
- **Layout mechanics:**
  - Product-UI hero with free-trial CTA *(estimated)*
  - Feature modules with alternating product shots *(estimated)*
  - Customer proof and integration/security trust *(estimated)*
  - Secondary sales CTA for larger buyers *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#071a31` | `oklch(21.6% 0.052 254.5)` | dark / text | 47 |
| `#fcfbf8` | `oklch(98.8% 0.004 91.4)` | light surface | 30 |
| `#5f6d77` | `oklch(52.7% 0.023 239.0)` | dark / text | 15 |
| `#6bb1ff` | `oklch(74.7% 0.134 252.4)` | accent | 13 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 11 |
| `#c6ccd2` | `oklch(84.2% 0.011 248.0)` | neutral | 10 |
| `#f5f5f7` | `oklch(97.1% 0.003 286.4)` | light surface | 9 |
| `#d8dce0` | `oklch(89.3% 0.007 247.9)` | neutral | 8 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--color-action-focus-border` | `#6bb1ff` |
| `--color-ash` | `#e4e6e9` |
| `--color-avocado` | `#343c17` |
| `--color-badge-error-bg` | `#fedfda` |
| `--color-badge-error-bg-hover` | `#fcd1ca` |
| `--color-badge-error-text` | `#841f0e` |
| `--color-badge-success-bg` | `#dbee9f` |
| `--color-badge-success-bg-hover` | `#cee67e` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Geist, Calendly Sans, Wulkan Text
- **Size declarations (top):** `var(--text-ui-body-sm)`, `var(--text-ui-body-sm-fixed)`, `var(--text-ui-body-md-fixed)`, `var(--text-sm)`, `var(--text-ui-body-md)`, `var(--text-ui-body-md)!important`, `var(--text-sm,.875rem)`, `12px`
- **Mechanism:** Geist + Calendly Sans/Wulkan; restrained scale; product UI typography dominates. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `inherit`, `var(--radius-btn-small)`, `var(--radius-btn-standard)`, `0`, `var(--radius-ui-xl)`, `var(--radius-ui-2xl)`
- **Breakpoints (measured media queries):** (none parsed)
- **Spacing signals (measured declarations):** margin: `0`×7, `auto 0`×4, `0 0 1.25rem`×3, `-1px`×2; padding: `0`×7, `25px`×6, `0!important`×5, `calc(var(--spacing)*6)`×5; gap: `calc(var(--spacing)*0)`×5, `calc(var(--spacing)*4)`×4, `calc(var(--spacing)*6)`×4, `var(--gap-3xl)`×4; max_width: `100%`×8, `none`×4, `var(--max-width-heading)`×4, `588px`×3
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Product; Solutions; Resources | yes (hierarchy, not wording) |
| Forms | 0 forms, 0 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 139 images, 317 SVGs, 18 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `none`, `opacity .2s`, `opacity 0.2s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product screenshots, UI cards, subtle gradients, customer logos.
- **Alt coverage (measured):** 126 of 139 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Scheduling-job headlines, benefit-led feature labels, "Get started for free" + "Talk to sales". *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** All the work around meetings, handled.; Book meetings with the world’s #1 scheduling tool; Introducing your 24/7 AI scheduling assistant
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Show the scheduling/product interaction in the hero
- Use restrained motion (≈200 ms opacity/transform)
- Keep a clear free-trial vs sales path

### Adapt
- Use own product UI, not Calendly screenshots
- Reduce the feature count for one screen
- Use own navy/cream balance or shift the hue

### Avoid
- Calendly product UI/logo
- Their blue accent and exact copy
- Meeting/recap feature claims

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own product visual
- Differentiating move: Own palette temperature
- Differentiating move: Own proof strategy

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `scheduling-booking` / `free-trial`; reasons: lead-generation: sales CTA: talk to sales; saas-product: SaaS CTA/product language: pricing, software; scheduling-booking: scheduling language: meeting scheduling, scheduling software |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - calendly <other-slug>` after operator review — or resolve the gaps above first.
