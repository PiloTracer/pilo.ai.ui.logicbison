# REFERENCE DNA — userpilot

**What this is:** Distilled design mechanics from https://userpilot.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; no screenshot or rendered states.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `userpilot` |
| URL | https://userpilot.com/ |
| Final URL | https://userpilot.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `44d457259d62…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `saas-product`
- **All types (multi-label):** `saas-product`, `lead-generation`
- **Conversion goal:** `demo-booking`
- **Funnel stage:** `decision`
- **Classification confidence:** `high` — lead-generation: sales CTA: get a demo; saas-product: SaaS CTA/product language: platform, software; saas-product: JSON-LD SoftwareApplication
- **Identity:** B2B product-growth platform selling onboarding, analytics, feedback, and engagement. The page is demo-led and product-UI-heavy: a large hero, then feature clusters that each pair a capability with an outcome and a product screenshot. *(estimated from page structure + measured facts)*
- **Title (observed):** Product Growth Platform | Userpilot
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'header': 1, 'nav': 3, 'main': 1, 'footer': 1}
- **Sections / articles / forms:** 0 / 0 / 0
- **Headings observed:** Customer Stories; Shipping software is getting easier. Getting people to use it isn’t.; Close the gap between user insights and in-app action; Understand user behavior and make data-driven product decisions; Onboard users, launch features & drive adoption across every channel
- **Nav labels:** Platform, Product, In-App Engagement Onboard, guide, and activate users, Product Analytics Understand every user interaction, User Feedback Run surveys, collect NPS, get insights, Session Replay Watch real user sessions, Email Send behavior-triggered emails, Mobile Engage users on mobile
- **CTA labels:** Learn More, Hear their stories, Get a Demo, Explore the Platform, AI Data Analytics, AI Feedback Analysis, AI User Engagement, Agent Analytics
- **Layout mechanics:**
  - Mega-menu product nav; hero with product UI + demo CTA *(estimated)*
  - Feature clusters repeated in a dense but grouped rhythm *(estimated)*
  - Proof strips and customer stories between feature blocks *(estimated)*
  - One primary demo CTA repeated at section boundaries *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 45 |
| `#6765e8` | `oklch(58.0% 0.193 279.2)` | accent | 43 |
| `#0e0841` | `oklch(19.7% 0.101 276.6)` | dark / text | 42 |
| `#15142e` | `oklch(20.8% 0.050 282.8)` | dark / text | 19 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 16 |
| `#f5f4ff` | `oklch(97.1% 0.015 290.3)` | light surface | 14 |
| `#9a98ff` | `oklch(72.5% 0.147 283.0)` | accent | 11 |
| `#1f1f24` | `oklch(24.1% 0.009 285.7)` | dark / text | 9 |

**Named color tokens (measured where present):**

| Token | Value |
|---|---|
| `--blob-color-1` | `#dedeff` |
| `--blob-color-2` | `#9a98ff` |
| `--blob-color-3` | `#e8659e` |
| `--hero-animation-light-cover-color` | `#f5f3fb` |
| `--menu-color-var` | `#6765e8` |
| `--up-color-body` | `#f2f2f2` |
| `--up-color-body-muted` | `#f2f2f2` |
| `--up-color-heading` | `#ffffff` |

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Garnett, Inter, Eudoxus Sans, Garnett Regular
- **Size declarations (top):** `14px`, `16px`, `12px`, `13px`, `18px`, `15px`, `22px`, `20px`
- **Mechanism:** Garnett + Inter/Eudoxus Sans; tight display tracking, comfortable body; mono only for small labels. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `8px`, `50%`, `12px`, `16px`, `6px`, `20px`
- **Breakpoints (measured media queries):** `max-width 380px`, `max-width 420px`, `min-width 427.98px`, `max-width 460px`, `max-width 462px`, `max-width 479px`
- **Spacing signals (measured declarations):** margin: `0`×140, `0 auto`×44, `0px`×11, `0 0 28px`×5; padding: `0`×64, `24px`×25, `0px`×11, `18px`×11; gap: `12px`×46, `10px`×30, `8px`×23, `16px`×20; max_width: `100%`×52, `none`×10, `25%`×7, `50%`×7
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Learn More; Hear their stories; Get a Demo | yes (hierarchy, not wording) |
| Forms | 0 forms, 0 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 98 images, 80 SVGs, 58 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `all 0.4s ease-in-out`, `0.5s`, `all 0.5s ease-in-out`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product screenshots, UI cards, soft gradient/blob backgrounds, customer logos.
- **Alt coverage (measured):** 63 of 98 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Outcome-led headlines ("Close the gap…"), capability labels, demo verbs ("Get a Demo", "Explore the Platform"). *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Customer Stories; Shipping software is getting easier. Getting people to use it isn’t.; Close the gap between user insights and in-app action
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- Pair every feature with a user outcome
- Repeat one primary demo CTA at section boundaries
- Use product UI as proof, not decoration

### Adapt
- Reduce feature count for a narrower screen
- Replace product screenshots with own UI or diagrams
- Tone down the gradient/blob layer if the brand is calmer

### Avoid
- Userpilot purple/indigo identity
- Their product screenshots and customer logos
- Verbatim feature/customer copy

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own accent (not indigo)
- Differentiating move: Own hero composition and proof order
- Differentiating move: Own product imagery

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `saas-product` / `demo-booking`; reasons: lead-generation: sales CTA: get a demo; saas-product: SaaS CTA/product language: platform, software; saas-product: JSON-LD SoftwareApplication; saas-product: platform + product |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - userpilot <other-slug>` after operator review — or resolve the gaps above first.
