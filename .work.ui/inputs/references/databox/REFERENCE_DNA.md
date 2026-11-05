# REFERENCE DNA — databox

**What this is:** Distilled design mechanics from https://databox.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/layout signals; rendered charts not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `databox` |
| URL | https://databox.com/ |
| Final URL | https://databox.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `c0e9776d1366…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `dashboard-app`
- **All types (multi-label):** `dashboard-app`, `saas-product`
- **Conversion goal:** `free-trial` · secondary: `newsletter`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — saas-product: SaaS CTA/product language: try it free, platform; content-seo: content language: insights; dashboard-app: app language: dashboard, analytics platform
- **Identity:** Analytics platform for agencies and teams. The page sells a data product through a dashboard-in-hero, metric proof, and modular capability blocks, with a free-trial path. *(estimated from page structure + measured facts)*
- **Title (observed):** Agentic Analytics Platform for Agencies and Teams | Databox
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'nav': 2, 'main': 1, 'section': 8, 'footer': 1}
- **Sections / articles / forms:** 8 / 0 / 0
- **Headings observed:** Analyze, report, and act on performance. Automatically.; Connect your data. Databox handles the rest.; Everything you need to understand and improve performance; Same model. Same question. A different answer.; Loved by the teams behind 20,000+ businesses
- **Nav labels:** Pricing, Platform overview, AI Analyst, Agents & Automations, MCP, MCP connectors, Integrations, Data governance
- **CTA labels:** Platform, Solutions, Resources, Try it free, AI Analyst Ask questions and get trusted answers from live data., Agents & automations Automate recurring analysis and turn insights into action., MCP Ground AI tools in trusted data and business context., Integrations Connect 130+ tools, spreadsheets, databases, and APIs.
- **Layout mechanics:**
  - Dashboard/product UI in the hero; free-trial CTA *(estimated)*
  - Metric proof band, then capability modules *(estimated)*
  - Long page with repeated "connect → analyze → act" framing *(estimated)*
  - Integration/logo proof and trust sections *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 45 |
| `#757677` | `oklch(56.5% 0.002 247.9)` | neutral | 33 |
| `#2b2c2f` | `oklch(29.3% 0.006 271.2)` | dark / text | 26 |
| `#4d71f1` | `oklch(59.3% 0.196 268.0)` | accent | 23 |
| `#fafafc` | `oklch(98.6% 0.003 286.4)` | light surface | 22 |
| `#eeeef0` | `oklch(95.0% 0.003 286.3)` | light surface | 19 |
| `#7540ab` | `oklch(48.9% 0.166 303.6)` | dark / text | 14 |
| `#25a767` | `oklch(64.5% 0.145 156.0)` | accent | 14 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--accent` | `#757677` |
| `--accent-foreground` | `#2b2c2f` |
| `--accent-hover` | `#757677` |
| `--accent-muted-1` | `#2e4797` |
| `--accent-muted-2` | `#7540ab` |
| `--accent-muted-3` | `#009eb4` |
| `--accent-muted-4` | `#f4bb42` |
| `--accent-muted-5` | `#fa870c` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Geist, Geist Mono, IBM Plex Serif
- **Size declarations (top):** `var(--tw-text-sm)`, `var(--tw-text-xl)`, `var(--tw-text-3xl)`, `var(--tw-text-2xl)`, `14px`, `var(--tw-text-4xl)`, `var(--tw-text-base)`, `12px`
- **Mechanism:** Geist + IBM Plex Serif accents; dense data-product typography; utilitarian mono where needed. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `3.40282e38px`, `var(--tw-radius-md)`, `0`, `9999px`, `var(--tw-radius-2xl)`, `var(--tw-radius-3xl)`
- **Breakpoints (measured media queries):** `min-width 40rem`, `min-width 48rem`, `min-width 56rem`, `min-width 64rem`, `min-width 75rem`, `min-width 80rem`
- **Spacing signals (measured declarations):** margin: `0`×10, `-1px`×3, `4px 0 0`×2, `.5em 0 .5em 1em`×1; padding: `0`×16, `calc(var(--tw-spacing) * 5)`×8, `calc(var(--tw-spacing) * 8)`×8, `calc(var(--tw-spacing) * 6)`×7; gap: `calc(var(--tw-spacing) * 5)`×6, `calc(var(--tw-spacing) * 3)`×4, `calc(var(--tw-spacing) * 4)`×4, `0`×3; max_width: `none`×10, `100%`×6, `524px`×3, `var(--tw-container-md)`×3
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Platform; Solutions; Resources | yes (hierarchy, not wording) |
| Forms | 0 forms, 3 inputs, 3 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 29 images, 85 SVGs, 24 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `all 0.2s`, `border-color .15s,box-shadow .15s`, `filter linear 0s 0s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Dashboard screenshots, data cards, integration logos, soft glows.
- **Alt coverage (measured):** 2 of 29 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Automation/outcome headlines, metric-led proof, "Try it free" and "Start free" CTAs. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Analyze, report, and act on performance. Automatically.; Connect your data. Databox handles the rest.; Everything you need to understand and improve performance
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Show the product in the hero if the product is visual
- Use metric proof before feature detail
- Modular capability blocks with one job each

### Adapt
- Simplify the module count for a single screen
- Use own data visuals, not their dashboard
- Reduce glow/gradient density for a calmer brand

### Avoid
- Databox dashboard screenshots
- Their blue identity and integration logo wall
- Metric claims/copy

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own data-visual language
- Differentiating move: Own proof metrics
- Differentiating move: Own hero composition

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `dashboard-app` / `free-trial`; reasons: saas-product: SaaS CTA/product language: try it free, platform; content-seo: content language: insights; dashboard-app: app language: dashboard, analytics platform |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - databox <other-slug>` after operator review — or resolve the gaps above first.
