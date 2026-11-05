# REFERENCE DNA — leadpages

**What this is:** Distilled design mechanics from https://leadpages.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; template rendering not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `leadpages` |
| URL | https://leadpages.com/ |
| Final URL | https://leadpages.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · allow: / |
| Evidence | `evidence.json` · HTML sha `c1fd7cb2b8d4…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`
- **Conversion goal:** `free-trial` · secondary: `demo-booking`
- **Funnel stage:** `decision`
- **Classification confidence:** `high` — saas-product: SaaS CTA/product language: platform; saas-product: JSON-LD SoftwareApplication; saas-product: platform + product
- **Identity:** Landing-page builder/CRO platform. The page is conversion-first: benefit-led hero, template/proof modules, A/B testing story, and a free-trial CTA with a sales path. *(estimated from page structure + measured facts)*
- **Title (observed):** The AI Landing Page Builder | Leadpages
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'nav': 3, 'main': 1, 'section': 12, 'article': 5, 'footer': 1}
- **Sections / articles / forms:** 12 / 5 / 0
- **Headings observed:** The AI landing page builder CRO platform.; Landing pages that improve themselves with A/B testing, Smart Traffic and more.; Connect your email marketing, CRM, ads, and analytics.; Landing page templates that look designed, not generated.; Everything you need for lead generation and lead capture, built in.
- **Nav labels:** Pricing, AI Page Builder, A/B Testing, Smart Traffic, Heatmaps, Analytics, Personalization, Dynamic Text
- **CTA labels:** Product, Solutions, Resources, Create page, Create a landing page, Create a sales page, Create a lead gen page, Create a webinar page
- **Layout mechanics:**
  - Benefit-led hero + create-page CTA *(estimated)*
  - Template/proof modules and feature clusters *(estimated)*
  - CRO/testing story with metrics *(estimated)*
  - Pricing/free-trial and FAQ *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 170 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 80 |
| `#613dff` | `oklch(53.7% 0.265 281.2)` | dark / text | 30 |
| `#e5e7eb` | `oklch(92.8% 0.006 264.5)` | neutral | 24 |
| `#603eff` | `oklch(53.7% 0.264 280.8)` | dark / text | 21 |
| `#666d7a` | `oklch(53.3% 0.022 262.9)` | dark / text | 15 |
| `#111827` | `oklch(21.0% 0.032 264.7)` | dark / text | 12 |
| `#ceff66` | `oklch(93.7% 0.186 124.9)` | light surface | 12 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--ad-canvas-bg` | `#f1f1ee` |
| `--ad-canvas-dot` | `#282828` |
| `--ads-checkbox-border` | `#141414` |
| `--ads-chip-bg` | `#ffffff` |
| `--ads-chip-border` | `#000000` |
| `--ads-chip-btn-bg` | `#ffffff` |
| `--ads-chip-btn-bg-hover` | `#ffffff` |
| `--ads-chip-btn-border` | `#000000` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Inter, lumenSans, Space Mono, Instrument Sans, Instrument Serif, Fraunces, DM Sans, Archivo
- **Size declarations (top):** `3.2px`, `12px`, `4px`, `max(4.2px, calc(8px / var(--canvas-scale, 2)))`, `13px`, `2.8px`, `11px`, `15px`
- **Mechanism:** Inter + Instrument Serif/Space Mono/Fraunces accents; practical UI type with editorial highlights. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `999px`, `1.5px`, `inherit`, `10px`, `8px`, `12px`
- **Breakpoints (measured media queries):** `max-width 360px`, `min-width 360px`, `max-width 380px`, `max-width 400px`, `max-width 420px`, `max-width 430px`
- **Spacing signals (measured declarations):** margin: `0`×78, `0 auto`×16, `auto`×5, `0 0 12px`×4; padding: `0`×29, `0 5px`×24, `2.6px 0`×12, `1.6px 4.5px`×10; gap: `4px`×32, `0.32em`×24, `1px`×18, `1.5px`×16; max_width: `1200px`×10, `none`×7, `100%`×5, `1120px`×5
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Product; Solutions; Resources | yes (hierarchy, not wording) |
| Forms | 0 forms, 2 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 153 images, 127 SVGs, 58 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `opacity 300ms ease`, `transform 550ms cubic-bezier(0.22,0.7,0.28,1), opacity 450ms ease`, `color 160ms ease, border-color 160ms ease, background 160ms ease`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Template thumbnails, product UI, abstract shapes, customer logos.
- **Alt coverage (measured):** 64 of 153 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Conversion/outcome headlines, "Create a landing page", "Start 7-Day Free Trial", FAQ objection handling. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** The AI landing page builder CRO platform.; Landing pages that improve themselves with A/B testing, Smart Traffic and more.; Connect your email marketing, CRM, ads, and analytics.
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Benefit-led hero with a concrete create/start action
- Template/proof modules that show output
- FAQ as objection handling near the CTA

### Adapt
- Use own templates/proof
- Replace purple/lime identity
- Shorten the FAQ for a focused screen

### Avoid
- Leadpages purple/lime identity and templates
- Their CRO claims/copy
- Product screenshots

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own template/proof system
- Differentiating move: Own accent palette
- Differentiating move: Own CRO narrative

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `free-trial`; reasons: saas-product: SaaS CTA/product language: platform; saas-product: JSON-LD SoftwareApplication; saas-product: platform + product; content-seo: 5 <article> elements |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - leadpages <other-slug>` after operator review — or resolve the gaps above first.
