# Reference scan: `charitywater`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://www.charitywater.org/
- **Final:** https://www.charitywater.org/ (HTTP 200)
- **Fetched:** 2026-11-05T21:08:30+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no robots groups found (treated as allow)
- **Title:** charity: water | Help Bring Clean and Safe Water to Communities
- **Description:** charity: water is a global nonprofit organization on a mission to end the water crisis by bringing clean and safe water to communities in need.
- **Framework hints:** none detected

## Classification (two axes)

- **Primary type:** `nonprofit-donation`
- **All types:** `nonprofit-donation`
- **Conversion goal:** `donation` · **Funnel:** `decision`
- **Confidence:** medium — nonprofit-donation: giving language: donation, give today, nonprofit; nonprofit-donation: sponsor/fundraise

## Palette candidates (measured: CSS declaration frequency)

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
| `#14a947` | `oklch(64.3% 0.180 148.2)` | accent | 7 |
| `#333232` | `oklch(31.8% 0.001 17.2)` | dark / text | 6 |
| `#515151` | `oklch(43.5% 0.000 89.9)` | dark / text | 6 |
| `#5493d3` | `oklch(64.9% 0.116 250.4)` | accent | 6 |
| `#fa575d` | `oklch(67.8% 0.198 22.1)` | accent | 6 |
| `#9b9b94` | `oklch(68.7% 0.010 106.7)` | neutral | 6 |
| `#f8eed3` | `oklch(95.0% 0.037 90.1)` | light surface | 6 |
| `#71716c` | `oklch(54.7% 0.008 106.6)` | dark / text | 5 |
| `#f7f7f7` | `oklch(97.6% 0.000 89.9)` | light surface | 5 |
| `#383b36` | `oklch(34.8% 0.009 132.6)` | dark / text | 4 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--background-dark` | `#222520` |
| `--background-light-primary` | `#faf7f0` |
| `--background-light-primary-with-opacity` | `#070001` |
| `--background-light-secondary` | `#f8eed3` |
| `--button-primary-bg` | `#ffca0a` |
| `--button-primary-bg-hover` | `#ffd53b` |
| `--button-primary-text` | `#222520` |
| `--cw-black` | `#000000` |
| `--cw-blue` | `#003366` |
| `--cw-blue-100` | `#e6edf0` |
| `--cw-blue-300` | `#cedce2` |
| `--cw-blue-500` | `#5493d3` |
| `--cw-blue-700` | `#314577` |
| `--cw-green-200` | `#a8ceb3` |
| `--cw-green-300` | `#94ba9f` |
| `--cw-green-500` | `#00ac7f` |
| `--cw-green-700` | `#2b4a3f` |
| `--cw-grey-100` | `#f7f7f7` |

## Type declarations

- Families: Roboto, Arial, Proxima Nova, SFMono-Regular, Consolas, Liberation Mono, Menlo, -apple-system, Segoe UI, Anonymous Pro, Monaco, Courier New, Georgia, Cambria, Times New Roman, Times
- Sizes: ['14px !important', 'inherit', '0', '56px', '46px', '29px', '19px', '24px', '15px', '17px', '10px', '2em', '1em', '125%']
- Weights: ['500', '400', 'inherit', '100', '300', '700', '900', 'bold', 'unset', 'bolder']

## Layout / component signals

- Landmarks: {'nav': 1, 'section': 8, 'footer': 1}
- Headings: 8 · nav labels: 0 · CTA labels: 9
- Sections: 8 · forms: {'forms': 0, 'inputs': 0, 'labels': 0, 'required': 0} · images: {'total': 25, 'missing_alt': 10, 'lazy': 17, 'srcset': 13, 'svg': 0}
- Radius values: ['4px', '8px', '0px', '12px', '1px', '0', '3px', '4px 4px 0 0', '0 0 4px 4px', 'inherit']
- Breakpoints: ['min-width 0px', 'max-width 374px', 'max-width 500px', 'max-width 640px', 'max-width 641px', 'min-width 641px', 'min-width 991px', 'max-width 991px', 'min-width 992px', 'max-width 999px']
- Motion declarations: 26 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - charitywater` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
