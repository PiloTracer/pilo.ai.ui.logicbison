# REFERENCE DNA — monday

**What this is:** Distilled design mechanics from https://monday.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; product interactions not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `monday` |
| URL | https://monday.com/ |
| Final URL | https://monday.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `b61f8c6c0073…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `dashboard-app`
- **All types (multi-label):** `dashboard-app`, `saas-product`
- **Conversion goal:** `signup`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — saas-product: JSON-LD SoftwareApplication; content-seo: content language: insights; dashboard-app: app language: workspace
- **Identity:** AI workspace/product platform. The page is colorful and product-led: use-case segmentation, playful grids, many product screenshots, and a signup/free path. *(estimated from page structure + measured facts)*
- **Title (observed):** The AI Workspace for People & Agents | monday.com
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'section': 17, 'form': 2, 'nav': 2}
- **Sections / articles / forms:** 17 / 0 / 2
- **Headings observed:** The AI workspace for people and agents; People and agents working as one team; Get more done with agents; Posts, campaigns and ads. Done.; Tickets, issues and risks. Resolved.
- **Nav labels:** 繁體中文, Portuguese, 한국어
- **CTA labels:** View all use cases, Get Started, Go to homepage, Marketing, Operations, IT, Product, Sales
- **Layout mechanics:**
  - Bold hero with product UI and signup CTA *(estimated)*
  - Use-case segmentation by role/team *(estimated)*
  - Colorful feature blocks and product shots *(estimated)*
  - Integration/proof and pricing entry *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 126 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 32 |
| `#025231` | `oklch(38.7% 0.090 158.0)` | dark / text | 14 |
| `#7c7b7b` | `oklch(58.4% 0.001 17.2)` | neutral | 14 |
| `#cacbcd` | `oklch(84.2% 0.003 264.5)` | neutral | 13 |
| `#6161ff` | `oklch(58.7% 0.228 276.7)` | accent | 12 |
| `#323338` | `oklch(32.2% 0.009 276.9)` | dark / text | 9 |
| `#0c86ab` | `oklch(57.8% 0.109 226.4)` | accent | 9 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--crm--surface` | `#e7f4f6` |
| `--dev--surface` | `#e2f0e7` |
| `--surface-light` | `#f3f4f5` |
| `--text-color--black` | `#000000` |
| `--text-color--white` | `#ffffff` |
| `--clay--grey-ink` | `#7c7b7b` |
| `--crm-surface` | `#e7f4f6` |
| `--dev-surface` | `#e2f0e7` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Playfair Display, Poppins, Notosanshebrew Variablefont Wdth Wght
- **Size declarations (top):** `.875rem`, `1rem`, `1.125rem`, `2rem`, `1.25rem`, `2.5rem`, `3rem`, `1.5rem`
- **Mechanism:** Poppins/Playfair/Roboto mix; friendly geometric display with utilitarian body. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `1rem`, `.5rem`, `1.5rem`, `var(--radius--16)`, `10rem`, `2rem`
- **Breakpoints (measured media queries):** `max-width 375px`, `max-width 479px`, `max-width 767px`, `min-width 768px`, `max-width 991px`, `min-width 992px`
- **Spacing signals (measured declarations):** margin: `0`×52, `0 auto`×15, `auto`×13, `.25rem .125rem`×10; padding: `0`×219, `2rem`×170, `1.5rem`×146, `1rem`×135; gap: `.5rem`×3, `1rem`×3, `2rem`×3, `.75rem`×1; max_width: `none`×383, `100%`×143, `80rem`×47, `120rem`×42
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | View all use cases; Get Started; Go to homepage | yes (hierarchy, not wording) |
| Forms | 2 forms, 4 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 389 images, 191 SVGs, 346 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `all .2s`, `all .3s`, `all .1s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product screenshots, colorful UI cards, illustrations, customer logos.
- **Alt coverage (measured):** 312 of 389 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Outcome/role-led headlines, "Get Started", use-case verbs; playful but direct. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** The AI workspace for people and agents; People and agents working as one team; Get more done with agents
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Segment by role/use case
- Use color to separate product jobs
- Keep product UI close to the claim

### Adapt
- Limit the palette to a coherent accent set
- Replace screenshots with own product UI
- Reduce the section count for one screen

### Avoid
- monday brand colors, product screenshots, illustrations
- Their use-case copy/logos
- Exact grid composition

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own accent system
- Differentiating move: Own use-case taxonomy
- Differentiating move: Own product visuals

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `dashboard-app` / `signup`; reasons: saas-product: JSON-LD SoftwareApplication; content-seo: content language: insights; dashboard-app: app language: workspace |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - monday <other-slug>` after operator review — or resolve the gaps above first.
