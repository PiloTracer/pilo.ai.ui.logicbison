# REFERENCE DNA — basecamp

**What this is:** Distilled design mechanics from https://basecamp.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; illustration intent inferred from markup, not pixels.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `basecamp` |
| URL | https://basecamp.com/ |
| Final URL | https://basecamp.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · allow: / |
| Evidence | `evidence.json` · HTML sha `c13ccffe1bfb…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`
- **Conversion goal:** `free-trial` · secondary: `newsletter`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — saas-product: SaaS CTA/product language: 
- **Identity:** Calm, editorial project-management product page. A huge display headline, generous whitespace, illustration-led proof, and a single strong "try free" CTA create a deliberately anti-hype tone. *(estimated from page structure + measured facts)*
- **Title (observed):** Basecamp
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'nav': 2, 'main': 1, 'header': 1, 'section': 7, 'article': 2, 'footer': 1, 'form': 1}
- **Sections / articles / forms:** 7 / 2 / 1
- **Headings observed:** Manage projects, coordinate teams, and master your company with Basecamp.; Famously straightforward and easy‑to‑use, there’s simply nothing else like it.; Take a minute to meet some of our customers; We asked our customers: “What changed for the better since you switched to Basecamp?”; How about a quick demonstration?
- **Nav labels:** Have an account? Sign in, Want an account? Sign up free, Pricing & sign up, Basecamp 5 is here, Features, Paths, API, CLI, Skills, Reliable to the core
- **CTA labels:** No, thanks, Yes, that’s fine, Have an account? Sign in, Want an account? Sign up free, Try Basecamp Free, Take a 3-minute tour See how Basecamp works, Subscribe, Try Basecamp free
- **Layout mechanics:**
  - Oversized editorial hero with one primary CTA *(estimated)*
  - Customer-story/illustration blocks with lots of air *(estimated)*
  - Proof numbers and reliability/service sections *(estimated)*
  - Simple footer with minimal nav repetition *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 20 |
| `#29353c` | `oklch(32.1% 0.020 233.8)` | dark / text | 14 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 10 |
| `#1b2930` | `oklch(27.1% 0.023 230.3)` | dark / text | 9 |
| `#f5faf6` | `oklch(98.0% 0.007 151.9)` | light surface | 6 |
| `#146dc7` | `oklch(53.6% 0.160 253.9)` | dark / text | 5 |
| `#0b151b` | `oklch(18.9% 0.019 235.5)` | dark / text | 4 |
| `#0067de` | `oklch(53.8% 0.199 258.0)` | dark / text | 4 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--background-blue-green` | `#117af3` |
| `--background-blue-light` | `#0067de` |
| `--background-blue-purple` | `#117af3` |
| `--background-orange-red` | `#ff801f` |
| `--background-purple-blue` | `#7a70ff` |
| `--background-red-orange` | `#fa423c` |
| `--background-yellow-light-yellow` | `#fdf2c4` |
| `--background-yellow-orange` | `#ffdc74` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Sharpie, Martian Mono, Monaspace, Graphik
- **Size declarations (top):** `var(--font-size-x-small)`, `var(--font-size-xx-small)`, `var(--font-size)`, `var(--font-size-medium)`, `var(--font-size-small)`, `inherit`, `var(--font-size-xx-large)`, `var(--font-size-xxx-small)`
- **Mechanism:** Graphik for body/UI; Sharpie/Martian Mono/Monaspace as expressive accents; very large display sizes, tight tracking. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `0.25em`, `1.25em 1.25em 0.3em 1.25em`, `1.25em 1.25em 1.25em 0.3em`, `100%`, `100em`
- **Breakpoints (measured media queries):** `min-width 27em`, `min-width 36em`, `min-width 48em`, `min-width 64em`
- **Spacing signals (measured declarations):** margin: `0`×2, `-1px`×1, `calc(-1 * var(--space-large)) calc(-1 * var(--space-large)) var(--space-large)`×1, `calc(-1 * var(--space-neutral)) calc(-1 * var(--space-neutral)) var(--space-neutral)`×1; padding: `0`×4, `0 var(--space-large) var(--space-large)`×1, `0 var(--space-medium) var(--space-medium)`×1, `0.45em 0.65em`×1; gap: `var(--space-medium)`×7, `0.3em`×2, `1.25em`×2, `0 0.65em`×1; max_width: `100%`×3, `16em`×1, `85%`×1
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | No, thanks; Yes, that’s fine; Have an account? Sign in | yes (hierarchy, not wording) |
| Forms | 1 forms, 3 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 148 images, 73 SVGs, 13 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `opacity var(--transition)`, `backdrop-filter var(--transition), -webkit-backdrop-filter var(--transition), background var(--transition), color var(--transition), transform var(--transition)`, `background-color var(--transition), color var(--transition)`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Hand-drawn illustrations, customer photography, product details, soft shapes.
- **Alt coverage (measured):** 144 of 148 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Conversational, confident, anti-corporate; long-form headlines; "Try Basecamp Free". *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Manage projects, coordinate teams, and master your company with Basecamp.; Famously straightforward and easy‑to‑use, there’s simply nothing else like it.; Take a minute to meet some of our customers
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Editorial scale + generous section rhythm
- One strong CTA rather than many competing ones
- Use illustration/photography as proof of personality

### Adapt
- Keep the calm rhythm but shorten the page for a focused screen
- Replace hand-drawn assets with own illustration system
- Use own voice; do not imitate the anti-corporate tone verbatim

### Avoid
- Basecamp illustrations, voice, customer stories
- Their blue/green brand palette as identity
- Long-form copy

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own illustration language
- Differentiating move: Own display type choice
- Differentiating move: Own proof narrative

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `free-trial`; reasons: saas-product: SaaS CTA/product language:  |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - basecamp <other-slug>` after operator review — or resolve the gaps above first.
