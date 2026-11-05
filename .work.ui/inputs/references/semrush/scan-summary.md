# Reference scan: `semrush`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://www.semrush.com/
- **Final:** https://www.semrush.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:37+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no matching robots rule (allow)
- **Title:** Semrush: Your Unfair Advantage for Growing Brand Visibility
- **Description:** Semrush is the leading platform to grow and measure brand visibility across AI search, SEO, PPC, social, and more.
- **Framework hints:** none detected

## Classification (two axes)

- **Primary type:** `saas-product`
- **All types:** `saas-product`, `lead-generation`, `content-seo`
- **Conversion goal:** `free-trial` · **Funnel:** `decision`
- **Confidence:** medium — lead-generation: sales CTA: book a demo; lead-generation: form on a sales-CTA page; saas-product: SaaS CTA/product language: try for free, start for free, platform; saas-product: platform + product

## Palette candidates (measured: CSS declaration frequency)

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 25 |
| `#000000` | `oklch(0.0% 0.000 0.0)` | dark / text | 13 |
| `#181e15` | `oklch(22.6% 0.019 135.3)` | dark / text | 12 |
| `#dceeeb` | `oklch(93.5% 0.019 184.9)` | light surface | 9 |
| `#6c6e79` | `oklch(54.0% 0.017 277.6)` | dark / text | 7 |
| `#c190ff` | `oklch(74.4% 0.162 303.0)` | accent | 7 |
| `#b072ff` | `oklch(68.0% 0.204 301.5)` | accent | 6 |
| `#191b23` | `oklch(22.4% 0.016 274.0)` | dark / text | 5 |
| `#006dca` | `oklch(53.6% 0.166 253.2)` | dark / text | 5 |
| `#008ff8` | `oklch(64.3% 0.186 250.8)` | accent | 5 |
| `#2b94e1` | `oklch(64.5% 0.148 245.8)` | accent | 4 |
| `#f0f1f2` | `oklch(95.8% 0.002 247.8)` | light surface | 4 |
| `#f3f6f6` | `oklch(97.1% 0.003 197.1)` | light surface | 4 |
| `#d1d2d5` | `oklch(86.4% 0.004 271.4)` | neutral | 3 |
| `#e6e4fb` | `oklch(92.7% 0.031 289.8)` | neutral | 3 |
| `#ff7f00` | `oklch(73.0% 0.186 52.6)` | accent | 2 |
| `#18f0bf` | `oklch(85.1% 0.165 170.7)` | accent | 2 |
| `#c4e5fe` | `oklch(90.6% 0.049 240.8)` | neutral | 2 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--color-dark-grey` | `#6c6e79` |
| `--color-focus-ring` | `#008ff8` |
| `--color-lavender` | `#c190ff` |
| `--color-lavender-dark` | `#b072ff` |
| `--color-mint` | `#dceeeb` |
| `--color-monotones-black` | `#181e15` |
| `--color-white` | `#ffffff` |
| `--mp-aqua` | `#18f0bf` |
| `--mp-dark-grey` | `#6c6e79` |
| `--mp-focus-border` | `#006dca` |
| `--mp-focus-color` | `#008ff8` |
| `--mp-focus-color-invert` | `#ffffff` |
| `--mp-hero-gradient` | `#dceeeb` |
| `--mp-lavendar` | `#c190ff` |
| `--mp-lavendar-hover` | `#b072ff` |
| `--mp-light-grey` | `#f0f1f2` |
| `--mp-light-mint` | `#f7fbfa` |
| `--mp-lime` | `#89ff75` |

## Type declarations

- Families: Inter, Lazzer, Factor A Variable, Factor A, Lazzer VF, swiper-icons, Ubuntu
- Sizes: ['100%', '12px', '16px', '14px', 'inherit', '25px', '11px', '110%', '32px', '48px', '18px', '56px', '64px', '52px']
- Weights: ['400', '700', '500', '1 1800', '100', '900', '100 900', '300', '600', 'inherit']

## Layout / component signals

- Landmarks: {'header': 1, 'main': 1, 'section': 10, 'form': 1, 'article': 10, 'footer': 11}
- Headings: 40 · nav labels: 0 · CTA labels: 24
- Sections: 10 · forms: {'forms': 1, 'inputs': 3, 'labels': 0, 'required': 0} · images: {'total': 55, 'missing_alt': 21, 'lazy': 55, 'srcset': 0, 'svg': 2}
- Radius values: ['6px', '4px', '3px', '2px', '5px', '0 0 5px 5px', '0', '50%', '100px', '10px']
- Breakpoints: ['max-width 480px', 'max-width 767px', 'min-width 768px', 'max-width 1023px', 'min-width 1024px', 'min-width 1440px', 'min-width 1600px', 'min-width 1920px']
- Motion declarations: 18 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - semrush` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
