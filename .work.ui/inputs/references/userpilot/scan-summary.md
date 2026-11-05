# Reference scan: `userpilot`

**Status:** Draft evidence · **Needs:** author `REFERENCE_DNA.md` (interpretation is not automated).

> Derived facts only. This is **not** a design spec, and it must not be treated as permission to reuse assets, copy, logos, fonts, or layout wholesale.

## Source

- **Requested:** https://userpilot.com/
- **Final:** https://userpilot.com/ (HTTP 200)
- **Fetched:** 2026-11-05T21:07:59+00:00 · static HTML/CSS · no JS · no screenshot
- **Robots:** allowed — no matching robots rule (allow)
- **Title:** Product Growth Platform | Userpilot
- **Description:** Userpilot is the AI-powered, no-code product growth platform that helps teams onboard users, drive feature adoption, and boost retention across web and mobile.
- **Framework hints:** none detected

## Classification (two axes)

- **Primary type:** `saas-product`
- **All types:** `saas-product`, `lead-generation`
- **Conversion goal:** `demo-booking` · **Funnel:** `decision`
- **Confidence:** high — lead-generation: sales CTA: get a demo; saas-product: SaaS CTA/product language: platform, software; saas-product: JSON-LD SoftwareApplication; saas-product: platform + product

## Palette candidates (measured: CSS declaration frequency)

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
| `#4c49e9` | `oklch(51.7% 0.232 275.4)` | dark / text | 7 |
| `#0693e3` | `oklch(63.9% 0.157 244.1)` | accent | 7 |
| `#e8659e` | `oklch(68.4% 0.172 355.4)` | accent | 7 |
| `#ff6900` | `oklch(70.0% 0.202 44.4)` | accent | 7 |
| `#fcb900` | `oklch(82.6% 0.170 82.2)` | accent | 6 |
| `#f2f2f2` | `oklch(96.1% 0.000 89.9)` | light surface | 6 |
| `#4f4cef` | `oklch(52.9% 0.236 275.5)` | dark / text | 5 |
| `#00d084` | `oklch(75.6% 0.176 158.3)` | accent | 5 |
| `#65e8ba` | `oklch(84.5% 0.134 167.2)` | accent | 5 |
| `#dedeff` | `oklch(91.1% 0.045 285.5)` | neutral | 5 |

### Named color tokens (semantic hints)

| Token | Value |
|---|---|
| `--blob-color-1` | `#dedeff` |
| `--blob-color-2` | `#9a98ff` |
| `--blob-color-3` | `#e8659e` |
| `--hero-animation-light-cover-color` | `#f5f3fb` |
| `--menu-color-var` | `#6765e8` |
| `--swiper-preloader-color` | `#ffffff` |
| `--swiper-theme-color` | `#007aff` |
| `--up-color-body` | `#f2f2f2` |
| `--up-color-body-muted` | `#f2f2f2` |
| `--up-color-heading` | `#ffffff` |
| `--up-color-overline` | `#ffffff` |
| `--wp--preset--color--black` | `#000000` |
| `--wp--preset--color--cyan-bluish-gray` | `#abb8c3` |
| `--wp--preset--color--light-green-cyan` | `#7bdcb5` |
| `--wp--preset--color--luminous-vivid-amber` | `#fcb900` |
| `--wp--preset--color--luminous-vivid-orange` | `#ff6900` |
| `--wp--preset--color--pale-cyan-blue` | `#8ed1fc` |
| `--wp--preset--color--pale-pink` | `#f78da7` |

## Type declarations

- Families: Garnett, Inter, Eudoxus Sans, Consolas, Font Awesome 5 Free, Monaco, Andale Mono, DejaVu Sans Mono, Courier 10 Pitch, Courier, SFMono-Regular, Garnett Regular, -apple-system, BlinkMacSystemFont, Arial, Apple Color Emoji
- Sizes: ['1.125em', 'var(--wp--preset--font-size--small) !important', 'var(--wp--preset--font-size--medium) !important', 'var(--wp--preset--font-size--large) !important', 'var(--wp--preset--font-size--x-large) !important', '1.5em', '16px', '18px', '15px', '13px', '10px', '42px', '12px', '16px!important']
- Weights: ['500', 'normal', '600', '700', '300', '400', 'bold', '900', 'bolder', '800']

## Layout / component signals

- Landmarks: {'header': 1, 'nav': 3, 'main': 1, 'footer': 1}
- Headings: 27 · nav labels: 40 · CTA labels: 20
- Sections: 0 · forms: {'forms': 0, 'inputs': 0, 'labels': 0, 'required': 0} · images: {'total': 98, 'missing_alt': 63, 'lazy': 58, 'srcset': 2, 'svg': 80}
- Radius values: ['9999px', '15px', '2px', '8px', '10px', '12px', '16px', '25px', '4px', '50%']
- Breakpoints: ['max-width 380px', 'max-width 420px', 'min-width 427.98px', 'max-width 460px', 'max-width 462px', 'max-width 479px', 'max-width 480px', 'max-width 512px', 'min-width 513px', 'max-width 520px']
- Motion declarations: 109 transition values

## Limits

- Static HTML/CSS only: JavaScript-rendered DOM, computed style, hover/focus states, and animations are not observed.
- CSS declaration frequency is not visual usage: unused framework/reset rules can dominate the palette.
- CSS cascade/layers are not resolved; `<style>` blocks and linked stylesheets are analyzed independently.
- Cross-origin iframes, shadow DOM, canvas/WebGL, video, and image contents are skipped.
- Robots.txt is respected for the page fetch; no crawl, no forms, no auth, no paywall bypass.
- No screenshot was taken and no browser was launched. Browser/vision tiers need explicit operator authorization.
- No logos, images, fonts, icons, or page copy should be reused; this evidence supports principles, not assets.

## Next action

`@ui-reference-intake dna - userpilot` — author the DNA from this evidence + optional operator screenshot; keep claims tagged `measured` / `estimated` / `assumption`.
