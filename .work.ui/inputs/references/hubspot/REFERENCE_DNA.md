# REFERENCE DNA — hubspot

**What this is:** Distilled design mechanics from https://www.hubspot.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure and named tokens; no screenshot/hover states.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `hubspot` |
| URL | https://www.hubspot.com/ |
| Final URL | https://www.hubspot.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `58723dd36c6f…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`, `lead-generation`
- **Conversion goal:** `free-trial` · secondary: `demo-booking`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — lead-generation: sales CTA: get a demo; lead-generation: form on a sales-CTA page; saas-product: SaaS CTA/product language: get started free, platform, software
- **Identity:** Large CRM/customer-platform marketing site. It uses a warm off-white canvas, near-black ink, and a single saturated orange accent to make a broad product family feel approachable; the page moves from platform promise to product hubs, proof, and a free/demo CTA pair. *(estimated from page structure + measured facts)*
- **Title (observed):** HubSpot | Software & Tools for your Business - Homepage
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'nav': 3, 'form': 2, 'section': 22, 'main': 1, 'footer': 1}
- **Sections / articles / forms:** 22 / 0 / 2
- **Headings observed:** The HubSpot Customer Platform; Marketing Hub; Sales Hub; Service Hub; Content Hub
- **Nav labels:** Customer Support, Contact Sales, About Us, Careers, Contact Us, Investor Relations, Management Team, Get a demo of HubSpot's premium software
- **CTA labels:** Get a demo of HubSpot's premium software, Get started free with HubSpot's free tools, Products, Free HubSpot CRM, Overview of all products, Free and premium plans, Learn more, See all integrations
- **Layout mechanics:**
  - Product-family navigation and a platform hero *(estimated)*
  - Hub-by-hub modules with consistent card grammar *(estimated)*
  - Proof/logo and customer-story bands *(estimated)*
  - Free-trial + demo CTA pairing at multiple depths *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 78 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 69 |
| `#1f1f1f` | `oklch(23.9% 0.000 89.9)` | dark / text | 63 |
| `#ff4800` | `oklch(66.3% 0.227 36.0)` | accent | 41 |
| `#f8f5ee` | `oklch(97.1% 0.010 87.5)` | light surface | 25 |
| `#c93700` | `oklch(55.4% 0.190 36.0)` | dark / text | 18 |
| `#fcfcfa` | `oklch(99.1% 0.003 106.4)` | light surface | 13 |
| `#9f2800` | `oklch(46.4% 0.161 35.6)` | dark / text | 12 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--cl-anchor-color` | `#1f1f1f` |
| `--cl-anchor-color-dark` | `#f8f5ee` |
| `--cl-anchor-hover-color` | `#1f1f1f` |
| `--cl-anchor-hover-color-dark` | `#f8f5ee` |
| `--cl-anchor-pressed-color` | `#1f1f1f` |
| `--cl-background` | `#fcfcfa` |
| `--cl-badge-background-color` | `#cfcccb` |
| `--cl-badge-background-color-default` | `#cfcccb` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** HubSpot Sans, HubSpot Serif, Zen Kaku Gothic New, HubSpot Serif Page Header Human
- **Size declarations (top):** `var(--cl-text-font-size)`, `var(--cl-font-size-h5)`, `var(--cl-font-size-h6)`, `var(--cl-font-size-microcopy)`, `var(--cl-font-size-microheading)`, `var(--cl-font-size-input-label)`, `.875rem`, `var(--cl-button-font-size)`
- **Mechanism:** HubSpot Sans + HubSpot Serif; strong display/body contrast; generous line-height; orange reserved for primary action. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `50%`, `var(--cl-border-radius-medium)`, `var(--cl-border-radius-container)`, `var(--cl-border-radius-small)`, `48px`, `inherit`
- **Breakpoints (measured media queries):** `max-width 568px`, `max-width 1080px`
- **Spacing signals (measured declarations):** margin: `0`×42, `auto`×4, `.5rem`×2, `1rem 0`×2; padding: `0`×30, `.5rem`×5, `1.5rem`×4, `1rem`×3; gap: `.5rem`×12, `1rem`×12, `1.5rem`×10, `.25rem`×5; max_width: `100%`×8, `unset`×3, `1030px`×2, `242px`×2
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Get a demo of HubSpot's premium software; Get started free with HubSpot's free tools; Products | yes (hierarchy, not wording) |
| Forms | 2 forms, 2 inputs, 2 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 95 images, 222 SVGs, 74 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `.15s background-color linear,.15s color linear`, `.3s ease-in-out`, `left .3s ease`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product UI, illustrations, customer logos, editorial photography.
- **Alt coverage (measured):** 26 of 95 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Plain-spoken platform promise, product-family naming, "Get started free" / "Get a demo" pairing. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** The HubSpot Customer Platform; Marketing Hub; Sales Hub
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Warm neutral canvas + one strong accent
- Consistent card grammar across product families
- Pair a low-friction free path with a high-intent demo path

### Adapt
- Use own product architecture, not HubSpot hub names
- Use own illustration/photography system
- Shift the accent hue away from HubSpot orange if confusion is possible

### Avoid
- HubSpot orange trade dress, logo, illustrations
- HubSpot copy/taglines/customer stories
- Their exact section order

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own accent and brand voice
- Differentiating move: Own product-family naming
- Differentiating move: Own proof assets

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `free-trial`; reasons: lead-generation: sales CTA: get a demo; lead-generation: form on a sales-CTA page; saas-product: SaaS CTA/product language: get started free, platform, software; saas-product: platform + product |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - hubspot <other-slug>` after operator review — or resolve the gaps above first.
