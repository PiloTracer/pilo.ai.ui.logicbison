# REFERENCE DNA — charitywater

**What this is:** Distilled design mechanics from https://www.charitywater.org/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; photography content not analyzed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `charitywater` |
| URL | https://www.charitywater.org/ |
| Final URL | https://www.charitywater.org/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no robots groups found (treated as allow) |
| Evidence | `evidence.json` · HTML sha `5ce950710253…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `nonprofit-donation`
- **All types (multi-label):** `nonprofit-donation`
- **Conversion goal:** `donation`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — nonprofit-donation: giving language: donation, give today, nonprofit; nonprofit-donation: sponsor/fundraise
- **Identity:** Nonprofit donation site. Impact-first: full-bleed photography, one dominant donate CTA, proof numbers, and a direct mission statement; navigation is deliberately minimal. *(estimated from page structure + measured facts)*
- **Title (observed):** charity: water | Help Bring Clean and Safe Water to Communities
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'nav': 1, 'section': 8, 'footer': 1}
- **Sections / articles / forms:** 8 / 0 / 0
- **Headings observed:** Bring clean and safe water to every person on the planet; Other Ways to Give; Because clean water changes everything; Know that your donation is making a difference; 209,241
- **Nav labels:** (none in static HTML)
- **CTA labels:** GIVE TODAY, Join Today, Sponsor Now, Get Started, Browse Fundraisers, Learn more, Partner with us, Give Today
- **Layout mechanics:**
  - Mission hero with photography + donate CTA *(estimated)*
  - Impact/proof numbers *(estimated)*
  - Ways to give and fundraiser paths *(estimated)*
  - Story/proof sections with a repeated donate CTA *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 29 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 26 |
| `#222520` | `oklch(26.0% 0.010 132.7)` | dark / text | 16 |
| `#dfdfd7` | `oklch(90.1% 0.011 106.6)` | neutral | 13 |
| `#003366` | `oklch(32.3% 0.103 253.9)` | dark / text | 11 |
| `#c1c1ba` | `oklch(80.9% 0.010 106.6)` | neutral | 10 |
| `#1080b9` | `oklch(57.1% 0.125 239.3)` | accent | 8 |
| `#ffca0a` | `oklch(86.1% 0.175 89.3)` | accent | 8 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--background-dark` | `#222520` |
| `--background-light-primary` | `#faf7f0` |
| `--background-light-primary-with-opacity` | `#070001` |
| `--background-light-secondary` | `#f8eed3` |
| `--button-primary-bg` | `#ffca0a` |
| `--button-primary-bg-hover` | `#ffd53b` |
| `--button-primary-text` | `#222520` |
| `--text-accent` | `#5493d3` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Proxima Nova, Anonymous Pro
- **Size declarations (top):** `12px`, `14px`, `16px`, `15px`, `19px`, `0`, `13px`, `.9rem!important`
- **Mechanism:** Proxima Nova/Roboto body + Georgia serif accents; large mission statements, simple supporting text. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `4px`, `8px`, `50%`, `3px`, `10px`, `12px`
- **Breakpoints (measured media queries):** `min-width 0px`, `max-width 374px`, `max-width 500px`, `max-width 640px`, `max-width 641px`, `min-width 641px`
- **Spacing signals (measured declarations):** margin: `0`×31, `auto!important`×4, `0 auto`×3, `auto`×3; padding: `0`×40, `20px`×4, `0 15px`×3, `10px`×3; gap: `16px`×2, `2.5rem!important`×2, `.25rem!important`×1, `.5rem!important`×1; max_width: `100%`×9, `980px`×4, `415px`×3, `600px`×3
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 0 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | GIVE TODAY; Join Today; Sponsor Now | yes (hierarchy, not wording) |
| Forms | 0 forms, 0 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 25 images, 0 SVGs, 17 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `background-color .15s linear`, `color,opacity .15s linear`, `background .15s linear`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Documentary photography, impact portraits, field imagery; minimal iconography.
- **Alt coverage (measured):** 10 of 25 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Mission-first, urgent but dignified; "GIVE TODAY", "Sponsor Now", "Browse Fundraisers". *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Bring clean and safe water to every person on the planet; Other Ways to Give; Because clean water changes everything
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- One dominant donate CTA
- Impact numbers as proof
- Photography carries the emotional argument

### Adapt
- Use own licensed/owned photography
- Use own impact metrics and stories
- Adapt the urgency to the brand voice

### Avoid
- charity: water photography, stories, logo
- Their yellow/blue identity and copy
- Impact claims

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own photography/stories
- Differentiating move: Own impact data
- Differentiating move: Own CTA language

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `nonprofit-donation` / `donation`; reasons: nonprofit-donation: giving language: donation, give today, nonprofit; nonprofit-donation: sponsor/fundraise |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - charitywater <other-slug>` after operator review — or resolve the gaps above first.
