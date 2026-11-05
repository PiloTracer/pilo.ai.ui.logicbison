# Reference scan: `nerdwallet`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://www.nerdwallet.com/
- **Final:** https://www.nerdwallet.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:22+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no matching robots rule (allow)
- **Title:** NerdWallet: Finance smarter
- **Description:** NerdWallet makes it easy to find the right financial product for you. Our Nerds do all the research so you don’t have to.
- **Framework hints:** Astro

## Classification (two axes)

- **Primary type:** `comparison-marketplace`
- **All types:** `comparison-marketplace`, `finance`, `content-seo`
- **Conversion goal:** `affiliate-referral` · **Funnel:** `decision`
- **Confidence:** medium — content-seo: 21 <article> elements; content-seo: content language: news; comparison-marketplace: comparison language: rates, find the right; comparison-marketplace: many nav groups + article cards

## Palette candidates (measured: CSS declaration frequency)

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
| `#ebebec` | `oklch(94.0% 0.001 286.4)` | light surface | 21 |
| `#f7f7f7` | `oklch(97.6% 0.000 89.9)` | light surface | 20 |
| `#005fb9` | `oklch(49.2% 0.161 254.8)` | dark / text | 19 |
| `#d8d9da` | `oklch(88.5% 0.002 247.8)` | neutral | 16 |
| `#effcf8` | `oklch(98.0% 0.015 175.7)` | light surface | 8 |
| `#eef7ff` | `oklch(97.2% 0.014 244.7)` | light surface | 7 |
| `#f7fded` | `oklch(98.5% 0.022 123.6)` | light surface | 7 |
| `#00482f` | `oklch(35.5% 0.078 162.1)` | dark / text | 6 |
| `#de2828` | `oklch(58.2% 0.216 27.2)` | dark / text | 6 |
| `#4b99e6` | `oklch(66.8% 0.138 250.4)` | accent | 6 |

### Named color tokens (semantic hints)

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
| `--color-blue-lightest` | `#eef7ff` |
| `--color-emerald-50` | `#ecfdf5` |
| `--color-gray-100` | `#f3f4f6` |
| `--color-gray-200` | `#e5e7eb` |
| `--color-gray-400` | `#99a1af` |
| `--color-gray-500` | `#6a7282` |
| `--color-gray-600` | `#4a5565` |
| `--color-gray-700` | `#364153` |
| `--color-gray-800` | `#1e2939` |
| `--color-gray-900` | `#101828` |

## Type declarations

- Families: Gotham, SFMono-Regular, Menlo, Monaco, Consolas, Liberation Mono, Courier New, Gotham SSm A, Gotham SSm B, Chronicle Display, Apple Color Emoji, Segoe UI Emoji, Segoe UI Symbol, Noto Color Emoji, Open Sans Variable
- Sizes: ['.8125rem', '.75rem', '16px', '11px', '15px', '14px', '13px', '.9em', '1.5rem', '1.25rem', '24px', '20px', 'inherit', '1em']
- Weights: ['500', '600', '700', '400', 'inherit', '350', '325', '300', '800', '900']

## Layout / component signals

- Landmarks: {'header': 1, 'nav': 20, 'form': 1, 'main': 1, 'section': 11, 'article': 21, 'footer': 1}
- Headings: 23 · nav labels: 40 · CTA labels: 12
- Sections: 11 · forms: {'forms': 1, 'inputs': 22, 'labels': 36, 'required': 0} · images: {'total': 294, 'missing_alt': 226, 'lazy': 273, 'srcset': 38, 'svg': 116}
- Radius values: ['1rem', '0', '9999px', 'var(--nerd-ai-radius-bubble)', '.375rem', '1px', 'var(--nerd-ai-radius-composer)', '50%', '8px', '0 8px 8px 0']
- Breakpoints: ['min-width 27.5rem', 'min-width 40rem', 'min-width 48rem', 'min-width 64rem', 'min-width 80rem', 'min-width 82rem', 'min-width 96rem', 'min-width 320px', 'min-width 390px', 'min-width 500px']
- Motion declarations: 17 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - nerdwallet` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
