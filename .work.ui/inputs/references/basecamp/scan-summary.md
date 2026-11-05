# Reference scan: `basecamp`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://basecamp.com/
- **Final:** https://basecamp.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:15+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — allow: /
- **Title:** Basecamp
- **Description:** Trusted by millions, Basecamp puts everything you need to get work done in one place. It’s the calm, organized way to manage projects, work with clients, and communicate company-wide.
- **Framework hints:** none detected

## Classification (two axes)

- **Primary type:** `saas-product`
- **All types:** `saas-product`
- **Conversion goal:** `free-trial` · **Funnel:** `decision`
- **Confidence:** medium — saas-product: SaaS CTA/product language: 

## Palette candidates (measured: CSS declaration frequency)

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
| `#117af3` | `oklch(59.5% 0.202 256.8)` | accent | 4 |
| `#ffdc74` | `oklch(90.3% 0.129 91.1)` | accent | 4 |
| `#1db847` | `oklch(68.4% 0.196 146.8)` | accent | 3 |
| `#131f25` | `oklch(23.1% 0.021 230.4)` | dark / text | 2 |
| `#646d72` | `oklch(52.9% 0.014 231.9)` | dark / text | 2 |
| `#0f78d1` | `oklch(56.7% 0.161 251.4)` | accent | 2 |
| `#e42828` | `oklch(59.3% 0.221 27.3)` | accent | 2 |
| `#7a70ff` | `oklch(62.9% 0.205 281.9)` | accent | 2 |
| `#fa423c` | `oklch(65.3% 0.221 27.2)` | accent | 2 |
| `#00a533` | `oklch(62.8% 0.193 145.8)` | accent | 2 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--activity-dot` | `#1f7aec` |
| `--activity-land` | `#7d93ab` |
| `--activity-night` | `#0a1a2e` |
| `--activity-ocean` | `#0b151b` |
| `--background-blue-green` | `#117af3` |
| `--background-blue-light` | `#0067de` |
| `--background-blue-purple` | `#117af3` |
| `--background-orange-red` | `#ff801f` |
| `--background-purple-blue` | `#7a70ff` |
| `--background-red-orange` | `#fa423c` |
| `--background-yellow-light-yellow` | `#fdf2c4` |
| `--background-yellow-orange` | `#ffdc74` |
| `--box-shadow` | `#000000` |
| `--box-shadow-button` | `#000000` |
| `--box-shadow-card` | `#000000` |
| `--box-shadow-card-soft` | `#000000` |
| `--box-shadow-inset` | `#000000` |
| `--box-shadow-intro` | `#000000` |

## Type declarations

- Families: Sharpie, Martian Mono, Monaspace, Graphik
- Sizes: ['100%', 'var(--font-size-xxx-small)', '1.4em', '87.5%', 'var(--font-size-xx-large)', 'var(--font-size)', 'var(--font-size-x-large)', 'var(--font-size-x-small)', 'var(--font-size-xx-small)', 'var(--font-size-small)', 'inherit', 'var(--font-size-medium)', '42.5%', '90%']
- Weights: ['400', '100 800', '500', '600', '700', '800', '900', 'inherit', '300']

## Layout / component signals

- Landmarks: {'nav': 2, 'main': 1, 'header': 1, 'section': 7, 'article': 2, 'footer': 1, 'form': 1}
- Headings: 11 · nav labels: 9 · CTA labels: 9
- Sections: 7 · forms: {'forms': 1, 'inputs': 3, 'labels': 0, 'required': 1} · images: {'total': 148, 'missing_alt': 144, 'lazy': 13, 'srcset': 0, 'svg': 73}
- Radius values: ['100%', '1.25em 1.25em 1.25em 0.3em', '1.25em 1.25em 0.3em 1.25em', '0.25em', '100em']
- Breakpoints: ['min-width 27em', 'min-width 36em', 'min-width 48em', 'min-width 64em']
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

`@ui-reference-intake dna - basecamp` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
