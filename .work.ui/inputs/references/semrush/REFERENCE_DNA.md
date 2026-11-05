# REFERENCE DNA — semrush

**What this is:** Distilled design mechanics from https://www.semrush.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; product UI/interactions not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `semrush` |
| URL | https://www.semrush.com/ |
| Final URL | https://www.semrush.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `ed27e2dabdb4…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`, `lead-generation`, `content-seo`
- **Conversion goal:** `free-trial` · secondary: `demo-booking`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — lead-generation: sales CTA: book a demo; lead-generation: form on a sales-CTA page; saas-product: SaaS CTA/product language: try for free, start for free, platform
- **Identity:** SEO/marketing data platform. The page combines a data-product hero, capability clusters (discover/create/track), free-tool lead capture, and an enterprise demo path; lavender/blue accents signal the product. *(estimated from page structure + measured facts)*
- **Title (observed):** Semrush: Your Unfair Advantage for Growing Brand Visibility
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'main': 1, 'section': 10, 'form': 1, 'article': 10, 'footer': 11}
- **Sections / articles / forms:** 10 / 10 / 1
- **Headings observed:** Get started; Discover; Create and optimize; Track; Use cases
- **Nav labels:** (none in static HTML)
- **CTA labels:** Product, Solutions, Resources, Start for free, Get insights, Try for free, Connect Semrush MCP, Book a demo
- **Layout mechanics:**
  - Data-product hero with free-trial CTA *(estimated)*
  - Capability clusters by job *(estimated)*
  - Use-case/role/industry segmentation *(estimated)*
  - Demo/enterprise path and proof *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 25 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 13 |
| `#181e15` | `oklch(22.6% 0.019 135.3)` | dark / text | 12 |
| `#dceeeb` | `oklch(93.5% 0.019 184.9)` | light surface | 9 |
| `#6c6e79` | `oklch(54.0% 0.017 277.6)` | dark / text | 7 |
| `#c190ff` | `oklch(74.4% 0.162 303.0)` | accent | 7 |
| `#b072ff` | `oklch(68.0% 0.204 301.5)` | accent | 6 |
| `#191b23` | `oklch(22.4% 0.016 274.0)` | dark / text | 5 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--color-dark-grey` | `#6c6e79` |
| `--color-lavender` | `#c190ff` |
| `--color-lavender-dark` | `#b072ff` |
| `--color-mint` | `#dceeeb` |
| `--color-monotones-black` | `#181e15` |
| `--color-white` | `#ffffff` |
| `--mp-focus-border` | `#006dca` |
| `--mp-focus-color` | `#008ff8` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Inter, Lazzer, Factor A Variable, Factor A, Lazzer VF
- **Size declarations (top):** `14px`, `16px`, `18px`, `12px`, `32px`, `56px`, `24px`, `48px`
- **Mechanism:** Inter + Lazzer/Factor A; compact data-product hierarchy; mono/utility for metrics. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `6px`, `var(--mp-border-radius)`, `50%`, `5px`, `0`, `6px 0 0 6px`
- **Breakpoints (measured media queries):** `max-width 480px`, `max-width 767px`, `min-width 768px`, `max-width 1023px`, `min-width 1024px`, `min-width 1440px`
- **Spacing signals (measured declarations):** margin: `0`×21, `0 auto`×5, `-1px`×1, `0 1px`×1; padding: `0`×14, `8px`×6, `0 32px`×3, `12px`×3; gap: `12px`×13, `16px`×9, `8px`×7, `24px`×6; max_width: `100%`×5, `460px`×4, `600px`×2, `90%`×2
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 0 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Product; Solutions; Resources | yes (hierarchy, not wording) |
| Forms | 1 forms, 3 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 55 images, 2 SVGs, 55 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `var(--mp-stats-transition-duration) var(--mp-stats-transition-easing)`, `none`, `transform .1s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product UI, data visualizations, abstract gradients, customer logos.
- **Alt coverage (measured):** 21 of 55 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Capability/outcome headlines, "Start for free", "Book a demo", data-backed proof. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Get started; Discover; Create and optimize
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Capability clusters organized by job
- Free-tool/trial as lead capture
- Separate self-serve and enterprise paths

### Adapt
- Use own data visuals and metrics
- Shift the lavender/blue identity
- Reduce cluster count for one screen

### Avoid
- Semrush brand palette, product UI, data claims
- Their copy/logos
- Exact capability taxonomy

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own data-visual language
- Differentiating move: Own capability taxonomy
- Differentiating move: Own proof metrics

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `free-trial`; reasons: lead-generation: sales CTA: book a demo; lead-generation: form on a sales-CTA page; saas-product: SaaS CTA/product language: try for free, start for free, platform; saas-product: platform + product |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - semrush <other-slug>` after operator review — or resolve the gaps above first.
