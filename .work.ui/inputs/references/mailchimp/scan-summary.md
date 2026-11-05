# Reference scan: `mailchimp`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://mailchimp.com/
- **Final:** https://mailchimp.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:43+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no robots groups found (treated as allow)
- **Title:** Email & SMS Marketing Platform | Mailchimp
- **Description:** Utilize real-time user behavior data and artificial intelligence to convert more customers. Easy to use, get started for free!
- **Framework hints:** none detected

## Classification (two axes)

- **Primary type:** `saas-product`
- **All types:** `saas-product`
- **Conversion goal:** `free-trial` · **Funnel:** `decision`
- **Confidence:** medium — saas-product: SaaS CTA/product language: pricing, platform; saas-product: pricing + signup/free-trial

## Palette candidates (measured: CSS declaration frequency)

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
| `#dbd9d2` | `oklch(88.5% 0.010 93.6)` | neutral | 5 |
| `#fbeeca` | `oklch(95.0% 0.049 90.5)` | light surface | 5 |
| `#004e56` | `oklch(38.7% 0.066 206.6)` | dark / text | 4 |
| `#575757` | `oklch(45.7% 0.000 89.9)` | dark / text | 4 |
| `#a73205` | `oklch(49.0% 0.160 37.2)` | dark / text | 4 |
| `#ff7346` | `oklch(71.7% 0.181 38.1)` | accent | 4 |
| `#bcbab6` | `oklch(78.9% 0.006 84.6)` | neutral | 4 |
| `#c4c1b6` | `oklch(81.0% 0.016 94.2)` | neutral | 4 |
| `#241c15` | `oklch(23.4% 0.018 63.0)` | dark / text | 3 |
| `#39352c` | `oklch(33.0% 0.016 86.9)` | dark / text | 3 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--color-error` | `#ff7346` |
| `--copy-color` | `#231e15` |
| `--copy-color-light` | `#bcbab6` |
| `--cta-background-color` | `#ffe01b` |
| `--cta-background-color-disabled` | `#dbd9d2` |
| `--cta-depth-color` | `#231e15` |
| `--cta-stroke-color` | `#231e15` |
| `--cta-text-color` | `#231e15` |
| `--elevation-shadow-color` | `#231e15` |
| `--heading-color` | `#231e15` |
| `--link-background-hovered` | `#ffe01b` |
| `--link-color` | `#ffffff` |
| `--link-color-hovered` | `#231e15` |
| `--selection-background-color` | `#ffe01b` |
| `--text-color` | `#575757` |

## Type declarations

- Families: Means Web, Graphik Web, Georgia, Times, Times New Roman, Helvetica Neue, Helvetica, Arial, Verdana, Tally, Source Code Pro, Consolas, Lucida Console, Courier
- Sizes: ['var(--h3-size)', 'var(--h5-size)', 'var(--copy-info-size)', '.875rem', '0', '1.25rem', '.8125rem', '.75rem', '1.625rem', '2.25rem', '1rem', '.6875rem', '.9375rem', '.625rem']
- Weights: ['400', '700', '500', '400!important', '600', '300', 'bolder', 'var(--copy-eyebrow-weight,500)', 'var(--badge-square-weight,500)', 'var(--cta-text-weight)']

## Layout / component signals

- Landmarks: {'section': 58, 'aside': 1, 'header': 1, 'nav': 1, 'main': 1, 'form': 3, 'article': 1, 'footer': 1}
- Headings: 28 · nav labels: 40 · CTA labels: 21
- Sections: 58 · forms: {'forms': 3, 'inputs': 11, 'labels': 13, 'required': 0} · images: {'total': 161, 'missing_alt': 50, 'lazy': 106, 'srcset': 68, 'svg': 22}
- Radius values: ['var(--spacing-7)', 'var(--spacing-2)', '.25rem', '.5rem', '50%', '.375rem', '1.625rem', '1.5rem', '12.5rem', 'var(--cta-border-radius)']
- Breakpoints: ['min-width 25em', 'max-width 26.9375rem', 'max-width 28.125rem', 'min-width 28.1875rem', 'min-width 29.375rem', 'min-width 31.25em', 'min-width 32.5em', 'min-width 34.375em', 'max-width 35.9375em', 'min-width 36em']
- Motion declarations: 87 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - mailchimp` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
