# REFERENCE DNA — mailchimp

**What this is:** Distilled design mechanics from https://mailchimp.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; editorial assets not analyzed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `mailchimp` |
| URL | https://mailchimp.com/ |
| Final URL | https://mailchimp.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no robots groups found (treated as allow) |
| Evidence | `evidence.json` · HTML sha `eb43c2357fd9…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`
- **Conversion goal:** `free-trial`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — saas-product: SaaS CTA/product language: pricing, platform; saas-product: pricing + signup/free-trial
- **Identity:** Email/SMS marketing platform. Editorial and warm: near-black ink, white/cream surfaces, a yellow CTA accent, serif display, and a content-led proof strategy across a very long page. *(estimated from page structure + measured facts)*
- **Title (observed):** Email & SMS Marketing Platform | Mailchimp
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'section': 58, 'aside': 1, 'header': 1, 'nav': 1, 'main': 1, 'form': 3, 'article': 1, 'footer': 1}
- **Sections / articles / forms:** 58 / 1 / 3
- **Headings observed:** Industries and Solutions; Integrations; Most Popular; Most Popular; Resources
- **Nav labels:** See what’s new, Restaurants, Entertainment + Leisure, Non-profit, Ecommerce, Small Business, Professional Services, Mid Market
- **CTA labels:** Industries and Solutions, See what’s new, Integrations, See 300+ Integrations, Resources, See all resources, Switch to Mailchimp, Pricing
- **Layout mechanics:**
  - Editorial hero with a warm neutral canvas *(estimated)*
  - Content/feature modules with serif display *(estimated)*
  - Proof/customer stories and integrations *(estimated)*
  - Free-trial/signup CTA repeated *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#231e15` | `oklch(23.8% 0.018 82.1)` | dark / text | 71 |
| `#ffe01b` | `oklch(90.5% 0.184 98.8)` | accent | 21 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 19 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 14 |
| `#692340` | `oklch(37.1% 0.105 357.8)` | dark / text | 10 |
| `#007c89` | `oklch(53.6% 0.092 207.6)` | dark / text | 9 |
| `#403b3b` | `oklch(35.7% 0.007 17.5)` | dark / text | 5 |
| `#8c8c8c` | `oklch(64.0% 0.000 89.9)` | neutral | 5 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--color-error` | `#ff7346` |
| `--cta-background-color` | `#ffe01b` |
| `--cta-background-color-disabled` | `#dbd9d2` |
| `--cta-depth-color` | `#231e15` |
| `--cta-stroke-color` | `#231e15` |
| `--cta-text-color` | `#231e15` |
| `--text-color` | `#575757` |
| `--copy-color` | `#231e15` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Means Web, Graphik Web, Tally, Source Code Pro, Lucida Console
- **Size declarations (top):** `.8125rem`, `1rem`, `.6875rem`, `.875rem`, `.75rem`, `1.25rem`, `.9375rem`, `2rem`
- **Mechanism:** Means Web display + Graphik body; editorial serif/sans contrast; yellow reserved for action. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `.25rem`, `50%`, `0`, `.5rem`, `1rem`, `var(--cta-border-radius)`
- **Breakpoints (measured media queries):** `min-width 25em`, `max-width 26.9375rem`, `max-width 28.125rem`, `min-width 28.1875rem`, `min-width 29.375rem`, `min-width 31.25em`
- **Spacing signals (measured declarations):** margin: `0`×50, `auto`×18, `0 auto`×11, `0 -.125rem`×6; padding: `0`×67, `1.25rem`×19, `1.5rem`×16, `1rem`×12; gap: `1rem`×21, `.5rem`×13, `1.5rem`×12, `.75rem`×8; max_width: `100%`×26, `none`×18, `unset`×6, `21.4375rem`×5
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Industries and Solutions; See what’s new; Integrations | yes (hierarchy, not wording) |
| Forms | 3 forms, 11 inputs, 13 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 161 images, 22 SVGs, 106 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `none`, `background-color .15s`, `all .15s linear`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Editorial photography, illustrations, product UI, customer logos.
- **Alt coverage (measured):** 50 of 161 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Warm, witty, plain-spoken; "Turn ideas into emails that connect", "Switch to Mailchimp". *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Industries and Solutions; Integrations; Most Popular
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Editorial serif/sans pairing
- Warm neutral + one yellow CTA accent
- Content-led proof

### Adapt
- Use own voice and photography
- Shift the yellow if trade-dress confusion is possible
- Shorten the page for one screen

### Avoid
- Mailchimp yellow trade dress, illustrations, copy
- Their customer stories/logos
- Exact editorial layout

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own serif/sans pairing
- Differentiating move: Own accent hue
- Differentiating move: Own content proof

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `free-trial`; reasons: saas-product: SaaS CTA/product language: pricing, platform; saas-product: pricing + signup/free-trial |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - mailchimp <other-slug>` after operator review — or resolve the gaps above first.
