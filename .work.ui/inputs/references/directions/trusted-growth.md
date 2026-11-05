# DESIGN DIRECTION — trusted-growth

**What this is:** A synthesized direction for a B2B analytics landing page, derived from three website references — the bridge from DNA to tokens, SPEC, and implementation.
**Status:** Approved · **Date:** 2026-11-05
**Approved by:** operator message 2026-11-05 ("yes, approved, complete everything")
**Needs:** none — proceed to token application + `bind - home`.

> This is not a clone. A user must not be able to name a reference brand from the resulting screen. Reference IDs match `.work.ui/inputs/references/<slug>/`.

## 1. Product & job

- **Product / screen:** Demo B2B analytics product, `home` landing page (hero + proof + features + comparison + CTA).
- **Audience:** Operations/analytics buyer at a 20–200 person company; skeptical of hype, comparing tools.
- **Primary action:** Start a free trial; secondary: book a demo.
- **Constraints:** Web, responsive 360–1440 px; WCAG 2.2 AA; token-driven CSS; open-source fonts only; no copied assets/copy.

## 2. Reference set & weights

| Reference ID | Role | Weight | Why selected | DNA confidence |
|---|---|---|---|---|
| `hubspot` | primary | 50% | Warm neutral + one strong accent; product-family clarity; free-trial/demo pairing | medium |
| `basecamp` | secondary | 30% | Calm editorial rhythm; oversized display; one CTA; anti-hype tone | medium |
| `nerdwallet` | accent | 20% | Trust-first proof and comparison structure for a considered purchase | medium |

**Rejected references:** `monday` (too many competing accents for this audience), `typeform` (interaction metaphor is form-specific), `charitywater` (donation narrative not relevant).

## 3. Synthesis thesis

> Calm editorial trust for a B2B buyer who dislikes hype: warm canvas, one teal accent, proof before features, and a comparison table that answers the shortlist question.

## 4. Design principles

1. **Proof before features** — every claim is followed by a number, a comparison, or a customer outcome.
2. **One accent, one action** — teal is reserved for the primary CTA, links, and active states; no second accent.
3. **Calm density** — generous section rhythm, but information-rich modules; no decorative whitespace that hides the product.
4. **Editorial confidence** — a serif display carries the promise; the body stays plain and legible.
5. **Comparison is a feature** — the page helps the buyer decide, not just admire.

## 5. Token proposal

**Status:** proposal only — apply through the foundation/token owner; do not hardcode.

| Role | OKLCH | Fallback hex | Contrast vs canvas | Source |
|---|---|---|---|---|
| `--color-bg` | `oklch(97.5% 0.008 98.9)` | `#f8f7f1` | n/a | synthesis |
| `--color-surface` | `oklch(100% 0 0)` | `#ffffff` | 1.01:1 (surface lift) | synthesis |
| `--color-text` | `oklch(24% 0.021 251.7)` | `#182029` | 15.32:1 | synthesis |
| `--color-text-muted` | `oklch(46% 0.020 251.0)` | `#505963` | 6.63:1 | synthesis |
| `--color-accent` | `oklch(53.1% 0.091 194.8)` | `#007c7c` | 4.69:1 | synthesis |
| `--color-accent-strong` | `oklch(43.4% 0.074 196.1)` | `#005d5e` | 7.17:1 | synthesis |
| `--color-border` | `oklch(87.9% 0.010 93.6)` | `#d9d7d0` | 1.34:1 (decorative) | synthesis |
| `--color-on-accent` | `oklch(100% 0 0)` | `#ffffff` | 5.03:1 on accent | synthesis |

- **Type:** display **Fraunces** (open, variable) / body **Instrument Sans** (open) / mono **IBM Plex Mono** (open); scale 1.25 ratio, body 17 px, display `clamp(2.4rem, 5vw, 4.5rem)`, line-height 1.5 body / 1.05 display; licence: SIL OFL.
- **Space:** base 8 px; section rhythm 32/64/96; container max 1,120 px; measure 62–70 ch.
- **Radius:** 12 px cards, 999 px pills, 4 px inputs; one radius language.
- **Surface/elevation:** flat cards, 1 px `--color-border`; shadow only on hover (`0 8px 24px oklch(24% 0.02 250 / 0.08)`).
- **Motion:** 160–200 ms ease-out opacity/transform; no parallax; honor `prefers-reduced-motion`.
- **Dark mode:** out of scope for this screen; if added, define independent roles (do not invert).

## 6. Layout & composition

- **Hero:** centered, serif promise + one-line proof + primary CTA; product UI below the fold, not a stock illustration.
- **Section order:** promise → proof band → three feature modules → comparison table → one customer story → final CTA.
- **Grid/container/measure:** 12-column desktop, 8-column tablet, single column mobile; 1,120 px container; 62–70 ch measure.
- **Density:** calm header/hero, denser comparison table; no more than two content densities per viewport.
- **Responsive behavior:** 360 / 768 / 1024 / 1440; comparison table collapses to stacked rows with labels; nav becomes a disclosure menu.

## 7. Component rules

| Component | Rule | Reference principle (not surface) |
|---|---|---|
| Nav | One product-family label, 4 links max, one primary CTA | HubSpot product-family clarity |
| Primary CTA | Solid teal pill, white text, 44 px min height; one per section | Basecamp single-CTA discipline |
| Cards | Flat, 1 px border, 12 px radius; no default shadow | NerdWallet comparison cards |
| Forms | Visible labels, inline validation, 44 px targets | NerdWallet trust/comparison clarity |
| Pricing | Three plans, one highlighted; annual/monthly toggle | HubSpot free/demo pairing |
| Proof | Stat band + one testimonial + comparison table | NerdWallet trust-first proof |

## 8. Content voice

- **Voice:** plain-spoken, specific, lightly editorial; no hype adjectives.
- **Headline shape:** "Make [job] feel [outcome]" or "The calm way to [job]"; 6–12 words.
- **CTA verbs:** "Start free", "See the comparison", "Book a demo"; no "revolutionize".
- **Proof strategy:** one number per feature, one named outcome, one transparent comparison.
- **Do not reuse:** source copy, taglines, testimonials, customer names.

## 9. Originality guardrails

- **Do not copy:** HubSpot orange identity/illustrations; Basecamp hand-drawn assets/voice; NerdWallet ratings/comparison content/brand green; any logo, photo, icon, or font file.
- **Differentiating moves:** own teal palette; own serif/sans pairing; own hero composition; own comparison data; own copy.
- **Recognition test:** show the draft beside each reference; if a viewer names HubSpot, Basecamp, or NerdWallet, revise.
- **Similarity budget:** family resemblance in principles only; no shared brand assets or copy.
- **Legal note:** design guidance, not legal advice; counsel reviews high-risk cases.

## 10. Accessibility constraints

- WCAG 2.2 AA: body 4.5:1, large/UI 3:1; visible focus; 44 px targets; no motion-only meaning; reduced-motion honored.
- **Reference failures not inherited:** all three references show large numbers of images without `alt` (HubSpot 26/95, Basecamp 144/148, NerdWallet 226/294 measured) — the new screen must not reproduce that.
- **Checks:** `@ui-concept-run - UIS-04` + `@ui-accessibility-audit milestone` + token-lint + manual screen-reader pass.

## 11. Screen application

| Screen | Reference IDs | Rules to bind | Status |
|---|---|---|---|
| `home` | `hubspot`, `basecamp`, `nerdwallet` | proof-before-features, one teal accent, flat bordered cards, comparison table, one primary CTA per section | Approved — tokens applied; bind pending |

**Token apply step:** update `tokens.json` / `tokens.css` + foundation doc 02 with the proposal; run `token-schema-verify.sh` + `token-lint.sh`; then `@ui-reference-intake bind - home`.

## Next action

`@ui-reference-intake bind - home` — direction approved and tokens applied 2026-11-05.
