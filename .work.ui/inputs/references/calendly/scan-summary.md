# Reference scan: `calendly`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://calendly.com/
- **Final:** https://calendly.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:17+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no matching robots rule (allow)
- **Title:** Meeting Scheduling Software and AI Meeting Tools | Calendly
- **Description:** Calendly connects and simplifies all of the work around meetings, from scheduling, payments, and meeting prep to notetaking, contact management, and follow-up.
- **Framework hints:** Astro

## Classification (two axes)

- **Primary type:** `scheduling-booking`
- **All types:** `scheduling-booking`, `saas-product`, `lead-generation`
- **Conversion goal:** `free-trial` · **Funnel:** `decision`
- **Confidence:** medium — lead-generation: sales CTA: talk to sales; saas-product: SaaS CTA/product language: pricing, software; scheduling-booking: scheduling language: meeting scheduling, scheduling software

## Palette candidates (measured: CSS declaration frequency)

| Color | OKLCH | Role | Count |
|---|---|---|---|
| `#071a31` | `oklch(21.6% 0.052 254.5)` | dark / text | 47 |
| `#fcfbf8` | `oklch(98.8% 0.004 91.4)` | light surface | 30 |
| `#5f6d77` | `oklch(52.7% 0.023 239.0)` | dark / text | 15 |
| `#6bb1ff` | `oklch(74.7% 0.134 252.4)` | accent | 13 |
| `#ffffff` | `oklch(100.0% 0.000 89.9)` | light surface | 11 |
| `#c6ccd2` | `oklch(84.2% 0.011 248.0)` | neutral | 10 |
| `#f5f5f7` | `oklch(97.1% 0.003 286.4)` | light surface | 9 |
| `#d8dce0` | `oklch(89.3% 0.007 247.9)` | neutral | 8 |
| `#0b0d0f` | `oklch(15.8% 0.005 248.2)` | dark / text | 7 |
| `#93a0aa` | `oklch(69.9% 0.021 240.9)` | neutral | 7 |
| `#e4e6e9` | `oklch(92.4% 0.005 258.3)` | neutral | 6 |
| `#1e5ea7` | `oklch(48.2% 0.133 254.6)` | dark / text | 5 |
| `#b32812` | `oklch(50.2% 0.178 31.7)` | dark / text | 5 |
| `#d4c2ff` | `oklch(84.9% 0.086 298.1)` | accent | 5 |
| `#dbee9f` | `oklch(91.7% 0.103 119.5)` | accent | 5 |
| `#f5f3ee` | `oklch(96.4% 0.007 88.6)` | light surface | 5 |
| `#841f0e` | `oklch(40.6% 0.139 32.1)` | dark / text | 4 |
| `#c1defe` | `oklch(89.0% 0.054 251.0)` | neutral | 4 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--color-action-focus-border` | `#6bb1ff` |
| `--color-ash` | `#e4e6e9` |
| `--color-avocado` | `#343c17` |
| `--color-badge-error-bg` | `#fedfda` |
| `--color-badge-error-bg-hover` | `#fcd1ca` |
| `--color-badge-error-text` | `#841f0e` |
| `--color-badge-success-bg` | `#dbee9f` |
| `--color-badge-success-bg-hover` | `#cee67e` |
| `--color-badge-success-text` | `#3f491b` |
| `--color-badge-warning-bg` | `#ffe67c` |
| `--color-badge-warning-bg-hover` | `#ffd843` |
| `--color-badge-warning-text` | `#473700` |
| `--color-black` | `#000000` |
| `--color-blue-50` | `#eff6ff` |
| `--color-blue-600` | `#155dfc` |
| `--color-blue-700` | `#1447e6` |
| `--color-blue-900` | `#1c398e` |
| `--color-border-default` | `#c6ccd2` |

## Type declarations

- Families: Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji, SFMono-Regular, Menlo, Monaco, Consolas, Liberation Mono, Courier New, Geist, Calendly Sans, Wulkan Text
- Sizes: ['1em', 'calc(9px * var(--total-scale-factor))', 'inherit', '80%', '75%', '100%', 'var(--text-ui-overline)', 'var(--text-ui-overline-fixed)', 'var(--text-ui-body-sm-fixed)!important', 'var(--text-ui-body-lg)', 'var(--text-ui-body-lg-fixed)', 'var(--text-ui-body-md)', 'var(--text-ui-body-md-fixed)', 'var(--text-ui-body-sm)']
- Weights: ['inherit', 'bolder', '700', 'var(--font-weight-medium)', 'var(--font-weight-regular)!important', 'var(--font-weight-regular)', 'var(--font-weight-bold)', 'var(--font-weight-medium)!important', 'var(--font-weight-normal)', 'var(--font-weight-semibold)']

## Layout / component signals

- Landmarks: {'header': 1, 'nav': 3, 'main': 1, 'section': 9, 'footer': 1}
- Headings: 38 · nav labels: 39 · CTA labels: 36
- Sections: 9 · forms: {'forms': 0, 'inputs': 0, 'labels': 0, 'required': 0} · images: {'total': 139, 'missing_alt': 126, 'lazy': 18, 'srcset': 31, 'svg': 317}
- Radius values: ['inherit', '50%', '2px', 'calc(2px * var(--total-scale-factor))', '4px', '4px 0 0 4px', '0 4px 4px 0', '0', 'calc(2*var(--_r))!important', 'calc(var(--radius-ui-fixed-2xl)/2)!important']
- Breakpoints: (none parsed)
- Motion declarations: 8 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - calendly` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
