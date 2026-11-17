# AI UI quality contract

**What this is:** The generation-time bar for agent-built interfaces. Load it before writing a screen, and again in UIS-06 before calling the diff shippable.

**Status:** Approved · 2026-11-17  
**Needs:** nothing — binding for agent-assisted UI.

Agents default to one look: a centered stack, a purple gradient, three identical cards, Inter, and placeholder marketing lines. Token lint catches raw hex. This contract catches the rest. A brand that truly wants a gradient or a purple accent puts that decision in the token file and the screen SPEC visual decision — it does not appear as a Tailwind palette utility in a component.

## Before you write UI

1. Read the screen SPEC §4 visual decision. If the signature, type roles, density, or forbidden row is still `REPLACE:`, stop and fill it. Do not invent a look while coding.
2. Read foundation tokens. Spacing, color, type, and radius come from tokens. A new magic number needs a token or a one-line reason in the task Notes.
3. Pick the density from the SPEC: `marketing-airy`, `product`, or `dense-operational`. Do not mix a marketing hero into a settings screen.
4. Reuse a catalog primitive when one exists. A new control needs a CATALOG row or an explicit waiver.

## Reject catalog

Fail the class when the pattern is in the diff and the SPEC visual decision does not name it as the signature. `ai-chrome-ignore` on a line is a waiver only with a reason.

| Id | Reject | Do instead |
|----|--------|------------|
| `purple-gradient-hero` | `bg-gradient-to-*` with `purple` / `violet` / `fuchsia` stops, or gradient text in those hues | One solid token surface. Color comes from `--color-*`. A gradient exists only as a named token the SPEC cites. |
| `colored-glow-shadow` | `shadow-purple-*`, `shadow-violet-*`, `shadow-fuchsia-*`, or a glow that is not a token | Elevation from `--shadow-*` / surface tokens. One elevation step per region. |
| `inter-hardcoded` | `Inter` or `font-['Inter']` in a component | The font stack lives in the token file. Components use the token. |
| `three-identical-cards` | A row of three or four cards with the same structure (icon circle, title, one line) as the page's main idea | One primary region. Supporting points differ in structure, or they are a real list with real data — not a feature mosaic. |
| `icon-circle-feature` | Lucide/hero icon inside a tinted circle as the default section pattern | Icon only when it disambiguates. No decorative disc behind it. |
| `glass-card-default` | `backdrop-blur` plus a translucent white card as the page shell | Opaque surface token. Blur is a Tier 2 effect and needs a SPEC reason (see effects matrix). |
| `placeholder-marketing` | Lorem, or stock lines: "unlock your potential", "seamless experience", "cutting-edge", "next-gen", "revolutionize your", "welcome to your dashboard", "your all-in-one", "supercharge your", "elevate your", "harness the power" | SPEC §5 copy, or `@ui-copy write`. Empty states say what is missing and the next action. |
| `everything-centered` | Every region centered, including app shells, settings, and tables | Center a marketing hero only when the visual decision says so. Product UI is start-aligned. |
| `uniform-type` | One size and weight for headline, section title, and body | At least three token roles on a marketing screen (display, body, label). Product screens use the type scale, not ad-hoc `text-2xl`. |
| `fake-metrics` | Invented percentages, avatars, or "trusted by" logos with no data dependency | Omit the block, or bind it to §7. Never ship decorative numbers. |
| `spinner-only-states` | Loading is only a spinner; empty and error have no guidance | §3 states: loading skeleton or honest progress, empty with a next step, error with what happened and what to do. |
| `rounded-everything` | `rounded-2xl` or `rounded-3xl` on every container | One radius token. Nested cards do not each increase the radius. |

## Pass rule

UIS-06 may recommend `ship` only when every class above is `pass` or `waived` (waiver cites the SPEC visual-decision row). `ship_with_notes` is for spacing nits. Any `fail` is `revise`.

Machine backstop: `bash scripts/ai-chrome-lint.sh <component-path>` fails on `purple-gradient-hero`, `colored-glow-shadow`, `inter-hardcoded`, and `placeholder-marketing` literals. The other classes stay a review because a regex cannot see layout intent.

## Next action

`@ui-concept-run - UIS-06` on the agent diff, after `bash scripts/ai-chrome-lint.sh` on the touched UI paths.
