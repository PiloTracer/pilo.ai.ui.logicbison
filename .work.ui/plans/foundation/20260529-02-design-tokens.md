# Demo SaaS — Design tokens (`trusted-growth`)

**Doc:** UI foundation **02** · **Created:** 2026-05-29 · **Updated:** 2026-11-05
**Status:** worked example (demo) — direction `trusted-growth` Approved 2026-11-05
**Needs:** nothing; tokens are applied. Verify at milestone per UIS-04.

## Canonical token file (code)

**Path:** [`../../design-system/tokens.css`](../../design-system/tokens.css) (`.work.ui/design-system/tokens.css`)
**DTCG source:** [`../../design-system/tokens.json`](../../design-system/tokens.json) — validated by `scripts/token-schema-verify.sh`.

> In a real adopter this lives at the application source path (the project’s `UI_TOKENS_FILE`, e.g. `src/styles/tokens.css`). For the demo it ships under `.work.ui/design-system/` so the example is self-contained. Linked in `HANDOFF_UI` § Repository UI state.

## Semantic token map (summary)

| Token | Light | Dark | Usage |
|-------|-------|------|-------|
| `--color-text-primary` | `oklch(24% 0.021 251.7)` | `oklch(92% 0.010 95)` | body text |
| `--color-text-secondary` | `oklch(46% 0.020 251.0)` | `oklch(72% 0.015 95)` | muted labels |
| `--surface-base` | `oklch(97.5% 0.008 98.9)` | `oklch(16% 0.012 250)` | page background |
| `--surface-elevated` | `oklch(100% 0 0)` | `oklch(20% 0.014 250)` | cards, panels |
| `--surface-inset` | `oklch(94.5% 0.006 98.9)` | `oklch(12% 0.012 250)` | wells, input backgrounds |
| `--surface-overlay` | `oklch(100% 0 0 / 0.90)` | `oklch(20% 0.014 250 / 0.92)` | sheets, modals |
| `--color-accent` | `oklch(53.1% 0.091 194.8)` | `oklch(72% 0.10 195)` | primary CTA, links, active |
| `--color-accent-strong` | `oklch(43.4% 0.074 196.1)` | `oklch(64% 0.10 195)` | hover/pressed accent text |
| `--color-accent-text` | `oklch(100% 0 0)` | `oklch(18% 0.02 250)` | text on accent |
| `--color-border` | `oklch(87.9% 0.010 93.6)` | `oklch(30% 0.015 250)` | 1 px card/input borders |
| `--elevation-1` | soft warm shadow | deep shadow | card elevation |
| `--elevation-inset` | inset warm | inset deep | input/preview wells |
| `--elevation-hover` | 8 px lift | 8 px lift | hover-only card lift |

## Reference-derived tokens (`trusted-growth`, Approved 2026-11-05)

| Source | What transferred | Token result |
|---|---|---|
| `hubspot` (primary) | warm neutral canvas + one strong accent + free/demo CTA pairing | `--surface-base` warm off-white; single `--color-accent` teal |
| `basecamp` (secondary) | calm editorial rhythm; oversized display; one CTA | `--font-family-display` Fraunces; `--font-size-500` clamp display; `--space-16/24` rhythm |
| `nerdwallet` (accent) | trust-first proof/comparison structure | flat bordered cards (`--color-border`, `--radius-lg`), no default shadow |

**Contrast (measured 2026-11-05, WCAG 2.2):**

| Pair | Ratio | Result |
|---|---|---|
| text-primary on surface-base | 15.32:1 | pass |
| text-secondary on surface-base | 6.63:1 | pass |
| accent on surface-base | 4.69:1 | pass |
| accent-text on accent | 5.03:1 | pass |
| dark text-primary on dark surface-base | 15.34:1 | pass |
| dark accent-text on dark accent | 7.92:1 | pass |

## Type, space, shape, motion

| Group | Tokens |
|---|---|
| Fonts | `--font-family-display: Fraunces` · `--font-family-body: Instrument Sans` · `--font-family-mono: IBM Plex Mono` (SIL OFL) |
| Type scale | `100`–`500`; `--font-size-500` display `clamp(2.4rem, 5vw, 4.5rem)`; body 17 px, 1.5 line-height |
| Space | 4/8/12/16/24/32/48/64/96 px; section rhythm 32/64/96 |
| Radius | 6/10/12/999 px; one language per screen |
| Motion | `100/160/200/300ms`; `cubic-bezier(0.4,0,0.2,1)` standard, enter/exit variants; reduced-motion block in CSS |

## Surface & control tokens (craft tier ≥ refined)

Craft tier is **refined**, so `--surface-*` and `--elevation-*` are required and present in **both** themes (see `SURFACE-AND-CONTROL-CRAFT` §2). Every color/surface token in the default theme is overridden in `[data-theme="dark"]`; fonts, spacing, radii, and motion are theme-independent.

## Rules

- Components use semantic tokens only (no raw hex) — see `DESIGN_TOKENS_STANDARD`.
- Theme changes require a UIS-04 contrast audit on inset/elevated pairs in **each** theme before ship.
- Direction-approved token deltas are recorded here; do not edit `tokens.json`/`tokens.css` without updating this table.

## Evidence

| Claim | Tag |
|-------|-----|
| WCAG 2.2 AA contrast on listed text/surface pairs | measured 2026-11-05 (ratios above) |
| Dark theme overrides every default color/surface token | confirmed — `tokens.css` `[data-theme="dark"]` block |
| DTCG shape + aliases | measured — `token-schema-verify.sh` 44 tokens valid |
| Direction approval | confirmed — `directions/trusted-growth.md` Approved 2026-11-05 |

## Next action

`@ui-reference-intake bind - home` — tokens applied; bind the Approved direction to the `home` SPEC.
