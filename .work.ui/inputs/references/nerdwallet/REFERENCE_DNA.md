# REFERENCE DNA — nerdwallet

**What this is:** Distilled design mechanics from https://www.nerdwallet.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; comparison logic and affiliate behavior not exercised.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `nerdwallet` |
| URL | https://www.nerdwallet.com/ |
| Final URL | https://www.nerdwallet.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `4ca917a618d4…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `comparison-marketplace`
- **All types (multi-label):** `comparison-marketplace`, `finance`, `content-seo`
- **Conversion goal:** `affiliate-referral`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — content-seo: 21 <article> elements; content-seo: content language: news; comparison-marketplace: comparison language: rates, find the right
- **Identity:** Finance comparison and content site. Trust and density are the design: a white canvas, emerald/lime accents, deep category navigation, article cards, ratings/comparison modules, and affiliate-style "apply" paths. *(estimated from page structure + measured facts)*
- **Title (observed):** NerdWallet: Finance smarter
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'nav': 20, 'form': 1, 'main': 1, 'section': 11, 'article': 21, 'footer': 1}
- **Sections / articles / forms:** 11 / 21 / 1
- **Headings observed:** Smart financial decisions start with NerdWallet; Why millions trust NerdWallet; News That Impacts Your Wallet; What Does a ‘Blue Wave’ Mean for Mortgage Rates?; Pet Insurance on Your Mind? Buy It Now, Not Later
- **Nav labels:** Best credit cards, Best credit card bonus offers, Best balance transfer credit cards, Best travel credit cards, Best cash back credit cards, Best 0% APR credit cards, Best rewards credit cards, Best airline credit cards
- **CTA labels:** My NerdWallet, Credit Cards, Insurance, Mortgages, Personal loans, Small business, Banking, Investing
- **Layout mechanics:**
  - Search/hero + trust statement *(estimated)*
  - Deep category navigation and comparison modules *(estimated)*
  - Editorial news/article grid *(estimated)*
  - Affiliate/apply CTAs inside comparison content *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 72 |
| `#008254` | `oklch(53.5% 0.121 159.9)` | dark / text | 70 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 64 |
| `#a8ea4c` | `oklch(86.3% 0.197 129.4)` | accent | 43 |
| `#64666a` | `oklch(51.0% 0.007 264.5)` | dark / text | 39 |
| `#3d4045` | `oklch(37.1% 0.009 260.7)` | dark / text | 29 |
| `#006642` | `oklch(45.0% 0.101 160.6)` | dark / text | 23 |
| `#8b8c8f` | `oklch(64.0% 0.005 271.3)` | neutral | 23 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--bg` | `#ffffff` |
| `--color-background` | `#ffffff` |
| `--color-black` | `#000000` |
| `--color-blue` | `#005fb9` |
| `--color-blue-700` | `#1447e6` |
| `--color-blue-dark` | `#02427e` |
| `--color-blue-default` | `#005fb9` |
| `--color-blue-light` | `#4b99e6` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Gotham, Gotham SSm A, Gotham SSm B, Chronicle Display
- **Size declarations (top):** `11px`, `16px`, `var(--text-2xl)`, `var(--text-xl)`, `1.5rem`, `13px`, `14px`, `20px`
- **Mechanism:** Gotham/Chronicle Display + Open Sans; dense editorial hierarchy, small supporting sizes. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `0`, `3.40282e38px`, `8px`, `inherit`, `var(--radius-2xl)`, `.25rem`
- **Breakpoints (measured media queries):** `min-width 27.5rem`, `min-width 40rem`, `min-width 48rem`, `min-width 64rem`, `min-width 80rem`, `min-width 82rem`
- **Spacing signals (measured declarations):** margin: `0`×11, `0 0 16px`×3, `calc(var(--spacing)*0)`×3, `-1px`×2; padding: `0`×17, `calc(var(--spacing)*0)`×4, `calc(var(--spacing)*6)`×4, `calc(var(--spacing)*4)`×3; gap: `calc(var(--spacing)*10)`×4, `calc(var(--spacing)*2)`×4, `calc(var(--spacing)*3)`×4, `calc(var(--spacing)*4)`×4; max_width: `100%`×8, `none`×5, `unset`×3, `300px`×2
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | My NerdWallet; Credit Cards; Insurance | yes (hierarchy, not wording) |
| Forms | 1 forms, 22 inputs, 36 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 294 images, 116 SVGs, 273 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `all 700ms cubic-bezier(0.22, 0.61, 0.36, 1)`, `width 700ms cubic-bezier(0.22, 0.61, 0.36, 1), height 700ms cubic-bezier(0.22, 0.61, 0.36, 1), opacity 700ms cubic-bezier(0.22, 0.61, 0.36, 1)`, `none`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Article thumbnails, product cards, brand logos, data tables.
- **Alt coverage (measured):** 226 of 294 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** "Finance smarter", "find the right product", ratings/rates, editorial headlines; trust-first. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Smart financial decisions start with NerdWallet; Why millions trust NerdWallet; News That Impacts Your Wallet
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Trust-first proof and transparent comparison structure
- Deep category navigation for a complex domain
- Editorial cards paired with comparison modules

### Adapt
- Reduce density for a marketing screen
- Use own data/ratings and disclosure language
- Use own green/lime or shift hue

### Avoid
- NerdWallet ratings, comparison content, brand green/lime
- Their article copy/testimonials
- Exact category taxonomy

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own trust signals and data
- Differentiating move: Own editorial voice
- Differentiating move: Own comparison layout

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `comparison-marketplace` / `affiliate-referral`; reasons: content-seo: 21 <article> elements; content-seo: content language: news; comparison-marketplace: comparison language: rates, find the right; comparison-marketplace: many nav groups + article cards |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - nerdwallet <other-slug>` after operator review — or resolve the gaps above first.
