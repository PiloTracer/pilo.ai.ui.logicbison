# REFERENCE DNA — ellevest

**What this is:** Distilled design mechanics from https://www.ellevest.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; actual quiz flow not exercised.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `ellevest` |
| URL | https://www.ellevest.com/ |
| Final URL | https://www.ellevest.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `2866d72a637d…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `forms-surveys`
- **All types (multi-label):** `forms-surveys`, `finance`
- **Conversion goal:** `contact-quote` · secondary: `lead-magnet`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — content-seo: content language: news, guide, insights; forms-surveys: forms language: quiz; finance: finance identity: wealth, financial
- **Identity:** Wealth-management and financial-planning site for women. It combines a warm green/cream/teal palette, editorial photography, audience-specific voice, and a quiz as a low-friction lead path. *(estimated from page structure + measured facts)*
- **Title (observed):** Wealth management and financial planning | Ellevest
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'nav': 1, 'section': 3, 'footer': 1, 'form': 2}
- **Sections / articles / forms:** 3 / 0 / 2
- **Headings observed:** Need help finding the right product?; Wealth management tailored to you; Uncertain about your financial future; Building generational wealth; Retiring on your own terms
- **Nav labels:** Goals and milestone planning, Insights, Equity compensation, Divorce, Inheritance, Retirement
- **CTA labels:** Goals and milestone planning, Insights, Equity compensation, Divorce, Inheritance, Retirement, Take our quiz, Newsroom
- **Layout mechanics:**
  - Mission/audience hero with editorial photography *(estimated)*
  - Product paths by life stage/goal *(estimated)*
  - Quiz + "get in touch" conversion paths *(estimated)*
  - Proof/team/impact content *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 15 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 12 |
| `#2b2928` | `oklch(28.3% 0.003 48.6)` | dark / text | 10 |
| `#2a4431` | `oklch(35.9% 0.046 152.1)` | dark / text | 7 |
| `#2d7538` | `oklch(50.2% 0.118 146.5)` | dark / text | 7 |
| `#0f9a8e` | `oklch(61.8% 0.107 185.0)` | accent | 7 |
| `#3b6348` | `oklch(46.2% 0.063 153.7)` | dark / text | 6 |
| `#446c5d` | `oklch(49.7% 0.051 168.6)` | dark / text | 6 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--accent-green` | `#707f56` |
| `--bg-ev-green` | `#496f55` |
| `--ev-green-accent` | `#2d7538` |
| `--pink` | `#f1cbb5` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** GT Super Display, Maison Neue Demi, Maison Neue Book, Maison Neue Mono, Maison Neue Light, Merriweather Custom, Lato Custom, Maisonneue Demi
- **Size declarations (top):** `18px`, `16px`, `24px`, `14px`, `1rem`, `12px`, `15px`, `32px`
- **Mechanism:** GT Super display + Maison Neue body + Merriweather/Lato accents; editorial, warm, human. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `50%`, `100%`, `3px`, `40px`, `100px`, `.25rem`
- **Breakpoints (measured media queries):** `max-width 479px`, `max-width 767px`, `min-width 768px`, `max-width 991px`, `min-width 1280px`, `min-width 1440px`
- **Spacing signals (measured declarations):** margin: `0`×11, `1.5rem`×5, `auto`×5, `0 .5rem 0 0`×3; padding: `100px 30px`×53, `0`×48, `50px 24px`×35, `20px`×15; max_width: `none`×35, `100%`×28, `300px`×8, `80rem`×6
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 6 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Goals and milestone planning; Insights; Equity compensation | yes (hierarchy, not wording) |
| Forms | 2 forms, 6 inputs, 3 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 50 images, 17 SVGs, 49 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `all .2s`, `all .3s`, `all .4s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Editorial photography of real people, warm lifestyle imagery, subtle textures.
- **Alt coverage (measured):** 46 of 50 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Audience-specific, plain-spoken finance language; "Take our quiz", "Get in touch", "Become a client". *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Need help finding the right product?; Wealth management tailored to you; Uncertain about your financial future
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Audience-specific voice and imagery
- Quiz as a low-friction lead magnet
- Warm finance palette instead of cold blue

### Adapt
- Use own audience research and photography
- Replace the quiz with an equivalent low-friction path
- Use own green/cream balance

### Avoid
- Ellevest photography, brand palette, copy
- Their audience claims and testimonials
- Exact quiz design

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own audience narrative
- Differentiating move: Own photography/illustration
- Differentiating move: Own lead-capture mechanism

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `forms-surveys` / `contact-quote`; reasons: content-seo: content language: news, guide, insights; forms-surveys: forms language: quiz; finance: finance identity: wealth, financial |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - ellevest <other-slug>` after operator review — or resolve the gaps above first.
