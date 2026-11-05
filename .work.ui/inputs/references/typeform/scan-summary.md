# Reference scan: `typeform`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://www.typeform.com/
- **Final:** https://www.typeform.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:19+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no matching robots rule (allow)
- **Title:** Form Builder with AI Automation | Typeform
- **Description:** Build AI-powered forms that get 3.5x more data — then trigger automated workflows to enrich leads, follow up, and grow revenue. No code. Start free.
- **Framework hints:** Webflow

## Classification (two axes)

- **Primary type:** `forms-surveys`
- **All types:** `forms-surveys`, `saas-product`, `lead-generation`
- **Conversion goal:** `free-trial` · **Funnel:** `decision`
- **Confidence:** medium — lead-generation: sales CTA: contact sales; saas-product: SaaS CTA/product language: start free; content-seo: content language: blog, insights; forms-surveys: forms language: form builder

## Palette candidates (measured: CSS declaration frequency)

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
| `#251c27` | `oklch(24.2% 0.024 320.1)` | dark / text | 3 |
| `#222222` | `oklch(25.2% 0.000 89.9)` | dark / text | 3 |
| `#2a222b` | `oklch(26.5% 0.020 322.5)` | dark / text | 3 |
| `#4c4c4c` | `oklch(41.7% 0.000 89.9)` | dark / text | 3 |
| `#564b58` | `oklch(42.9% 0.025 321.1)` | dark / text | 3 |
| `#c6b8fe` | `oklch(81.9% 0.098 293.3)` | accent | 3 |
| `#131313` | `oklch(18.7% 0.000 89.9)` | dark / text | 2 |
| `#1a1a1a` | `oklch(21.8% 0.000 89.9)` | dark / text | 2 |
| `#1d1d1d` | `oklch(23.1% 0.000 89.9)` | dark / text | 2 |
| `#3e3040` | `oklch(33.1% 0.034 322.2)` | dark / text | 2 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|

## Type declarations

- Families: Arial, Tobias, Twklausanne 500, Twklausanne 600, webflow-icons, Helvetica Neue, Ubuntu, Segoe UI, Twklausanne 350, Twklausanne 700, Twklausanne 400, Georgia, Gt America Web, Helvetica, Verdana, Apercupro
- Sizes: ['0.875rem', '14px', '0.75rem', '1rem', '2rem', '1.875rem', '3.5rem', '2em', '80%', '75%', '1em', 'unset', '12px!important', '38px']
- Weights: ['bold', '600', '400', '500', '700', 'unset', '300', '900']

## Layout / component signals

- Landmarks: {'nav': 17, 'main': 1, 'section': 10, 'footer': 1}
- Headings: 32 · nav labels: 40 · CTA labels: 15
- Sections: 10 · forms: {'forms': 0, 'inputs': 0, 'labels': 0, 'required': 0} · images: {'total': 208, 'missing_alt': 187, 'lazy': 159, 'srcset': 26, 'svg': 24}
- Radius values: ['inherit', '0px', 'var(--_size-and-spacing---tokens--corner-radius--md)', 'var(--_size-and-spacing---tokens--corner-radius--xl) var(--_size-and-spacing---tokens--corner-radius--xl) 0px 0px', '0px 0px var(--_size-and-spacing---tokens--corner-radius--xl) var(--_size-and-spacing---tokens--corner-radius--xl)', 'var(--_size-and-spacing---tokens--corner-radius--xl)', '50%', 'calc(var(--_size-and-spacing---tokens--corner-radius--sm) * 1.33)', 'var(--_size-and-spacing---tokens--corner-radius--xs)', 'var(--_size-and-spacing---tokens--corner-radius--sm)']
- Breakpoints: ['max-width 479px', 'max-width 767px', 'min-width 768px', 'max-width 768px', 'min-width 769px', 'min-width 991px', 'max-width 991px', 'max-width 992px', 'min-width 992px', 'max-width 1280px']
- Motion declarations: 78 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - typeform` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
