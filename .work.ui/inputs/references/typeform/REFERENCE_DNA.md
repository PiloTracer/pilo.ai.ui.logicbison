# REFERENCE DNA — typeform

**What this is:** Distilled design mechanics from https://www.typeform.com/, used as inspiration for an original design.
**Status:** Draft · **Date:** 2026-11-05
**Needs:** operator review of the transfer rules and classification; approve before this DNA feeds an Approved direction.
**Rights basis:** operator requested public-page design analysis on 2026-11-05; no assets, logos, copy, or fonts are licensed for reuse.
**Confidence:** medium — Measured palette/type/structure; interaction behavior inferred, not observed.

> Source URL, scan method, and limits are in §1. Claims are tagged `measured` / `estimated` / `assumption`. No page copy, testimonial, logo, or asset URL is reproduced here.

## 1. Source & provenance

| Field | Value |
|---|---|
| Reference ID | `typeform` |
| URL | https://www.typeform.com/ |
| Final URL | https://www.typeform.com/ |
| Fetched | 2026-11-05 · static HTML/CSS · no JS · no browser |
| HTTP / robots | 200 · no matching robots rule (allow) |
| Evidence | `evidence.json` · HTML sha `571bac1aff11…` |
| Rights basis | Operator-requested public-page analysis, 2026-11-05; no asset/copy/font licence |
| Limits | Static only; JS-rendered DOM, computed styles, hover/focus, responsive states, and assets were not observed |

## 2. Identity & positioning

- **Primary site type:** `forms-surveys`
- **All types (multi-label):** `forms-surveys`, `saas-product`, `lead-generation`
- **Conversion goal:** `free-trial` · secondary: `demo-booking`
- **Funnel stage:** `decision`
- **Classification confidence:** `medium` — lead-generation: sales CTA: contact sales; saas-product: SaaS CTA/product language: start free; content-seo: content language: blog, insights
- **Identity:** Form/survey product. The page uses a dark ink + white base with a lime accent, very large type, and a conversational one-question-at-a-time metaphor; the product is the interaction model. *(estimated from page structure + measured facts)*
- **Title (observed):** Form Builder with AI Automation | Typeform
- **Meta description:** observed but not reproduced here (no verbatim-copy rule); see `evidence.json` if a factual summary is needed.

## 3. Layout & information architecture

- **Landmarks (measured):** {'nav': 17, 'main': 1, 'section': 10, 'footer': 1}
- **Sections / articles / forms:** 10 / 0 / 0
- **Headings observed:** Platform; Tools; TEMPLATES; Research Flow; TEAMS
- **Nav labels:** Typeform Icon, Platform overview What is Typeform?, Typeform AI Your AI know-pilot, Typeform MCP New Use Typeform from your AI tools, Growth Flow New Automated workflows for GTM teams, Research Flow New AI-moderated research studies, Contacts & Automations Automated workflows to grow your business, Video engagement Interactive video forms
- **CTA labels:** Try it now, Choose one →, Learn more →, View all use cases →, Browse blog →, Contact sales, Sign up, Get started—it’s free
- **Layout mechanics:**
  - Large type-led hero with a single lime accent *(estimated)*
  - Feature blocks framed as "explore" paths *(estimated)*
  - Template/use-case and integration proof *(estimated)*
  - Free-trial CTA repeated with low friction *(estimated)*

## 4. Color

**Palette candidates (measured: CSS declaration frequency; not computed usage):**

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#1f1d1e` | `oklch(23.3% 0.004 345.5)` | dark / text | 16 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 14 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 11 |
| `#f4f0eb` | `oklch(95.7% 0.008 73.7)` | light surface | 6 |
| `#c6fb50` | `oklch(92.1% 0.201 125.2)` | accent | 5 |
| `#faf9fb` | `oklch(98.3% 0.003 308.4)` | light surface | 5 |
| `#ad9eb1` | `oklch(71.8% 0.032 319.1)` | neutral | 4 |
| `#191919` | `oklch(21.3% 0.000 89.9)` | dark / text | 3 |

**Named color tokens (measured where present):**

_No semantic color tokens exposed in the fetched CSS._

- **Role reading:** use the measured surfaces/text/accent as *roles*, not as an identity palette. Shift hue/lightness to the project brand.
- **Contrast:** not computed pair-by-pair from static declarations; verify every text/surface pair at WCAG 2.2 AA before use.
- **Dark mode:** not observed unless stated above. Do not assume one.

## 5. Typography

- **Families observed:** Tobias, Twklausanne 500, Twklausanne 600, Twklausanne 350, Twklausanne 700, Twklausanne 400, Gt America Web, Apercupro
- **Size declarations (top):** `.875rem`, `1rem`, `1.25rem`, `14px`, `1.125rem`, `1.5rem`, `1.75rem`, `.75rem`
- **Mechanism:** Tobias display + TWK Lausanne body; oversized display, airy leading; lime reserved for action/highlight. *(estimated from declarations + page structure)*
- **Licence check:** the reference fonts are not licensed by this analysis. Ship open-source alternatives (Fontsource) or a licensed family only.

## 6. Space, shape & surface

- **Radii (measured declarations):** `var(--_size-and-spacing---tokens--corner-radius--sm)`, `var(--_size-and-spacing---tokens--corner-radius--md)`, `1rem`, `0`, `50%`, `16px`
- **Breakpoints (measured media queries):** `max-width 479px`, `max-width 767px`, `min-width 768px`, `max-width 768px`, `min-width 769px`, `min-width 991px`
- **Spacing signals (measured declarations):** margin: `0`×41, `auto`×6, `0 0 10px`×3, `0 0 16px`×3; padding: `0`×71, `1.5rem`×17, `var(--_size-and-spacing---primitives--spacers--150)`×12, `.5rem`×10; gap: `16px`×2, `32px`×2, `.5rem 1.25rem`×1, `1.5rem`×1; max_width: `none`×41, `100%`×31, `calc(var(--number)*1ch)`×10, `52rem`×9
- **Surface language:** estimate from borders/shadows/radius; verify in a screenshot before binding.

## 7. Components & patterns

| Pattern | Observed mechanism | Transfer? |
|---|---|---|
| Navigation | 8 static nav labels; product-family/role segmentation | yes (structure) |
| Primary CTA | Try it now; Choose one →; Learn more → | yes (hierarchy, not wording) |
| Forms | 0 forms, 0 inputs, 0 labels | conditional |
| Proof | logos/stats/testimonials/case studies where present | yes (strategy) |
| Imagery | 208 images, 24 SVGs, 159 lazy | no (assets) |

## 8. Motion & interaction

- **Measured transition declarations:** `background-color .3s`, `opacity .35s`, `opacity .3s`
- **Unobserved:** hover, focus, scroll, page transitions, and reduced-motion behavior (static scan).
- **Transfer:** prefer a restrained 150–200 ms opacity/transform language unless a specific interaction requires more; always honor `prefers-reduced-motion`.

## 9. Imagery & iconography

- **Observed mix:** Product UI, abstract shapes, template thumbnails, subtle motion.
- **Alt coverage (measured):** 187 of 208 images missing `alt` — an accessibility risk to **not** inherit.
- **Do not reuse:** logos, illustrations, photos, icon sets, or their recognizable compositions.

## 10. Copy & content patterns

- **Voice/patterns:** Conversational questions, "Try it now", "Get started — it's free", use-case-led labels. *(estimated; no verbatim reuse)*
- **Observed headings (short labels only):** Platform; Tools; TEMPLATES
- **Rule:** paraphrase; never copy paragraphs, taglines, testimonials, or customer names.

## 11. Transfer rules

### Adopt
- One-question/one-step framing for complex flows
- Oversized type with generous air
- One high-contrast accent reserved for action

### Adapt
- Use the conversational idea without copying Typeform's visual identity
- Replace lime if it clashes with brand
- Use own template/proof assets

### Avoid
- Typeform lime/ink identity, brand fonts
- Their question-flow visuals/copy
- Template screenshots

### Originality constraints
- Own palette, hero composition, imagery, copy, and component shape.
- Recognition test: a user must not name the reference brand from the new screen.
- Differentiating move: Own accent + type pairing
- Differentiating move: Own interaction metaphor visuals
- Differentiating move: Own copy voice

## 12. Evidence & confidence

| Claim | Tag | Evidence / gap |
|---|---|---|
| Type + goal classification | measured/heuristic | `forms-surveys` / `free-trial`; reasons: lead-generation: sales CTA: contact sales; saas-product: SaaS CTA/product language: start free; content-seo: content language: blog, insights; forms-surveys: forms language: form builder |
| Palette candidates | measured | CSS declaration frequency; not rendered usage |
| Type/scale/radii/breakpoints | measured | declarations parsed from linked + inline CSS |
| Layout/imagery/copy mechanics | estimated | inferred from headings, landmarks, CTAs; no screenshot |
| Hover/focus/responsive behavior | unknown | static scan; needs operator screenshot or authorized browser tier |

**What would raise confidence:** operator-provided screenshots at 360/768/1280 px; computed-style extraction; a short design-system page from the same brand.

## Next action

`@ui-reference-intake synthesize - typeform <other-slug>` after operator review — or resolve the gaps above first.
