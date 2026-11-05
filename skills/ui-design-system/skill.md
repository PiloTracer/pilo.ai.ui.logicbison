---
name: ui-design-system
description: >-
  Maintain primitives catalog, Storybook coverage, and variant API consistency.
  Use init, add - <component>, status.
---

# ui-design-system

## Modes

| Mode | Action |
|------|--------|
| `init` | Create or refresh `<repo-root>/.work.ui/design-system/CATALOG.md` from foundation doc 03 — seeds from the brand doc (`*-03-design-system.brand.md` §3/§6) when present |
| `add - <component>` | Add primitive: file + story + catalog row per COMPONENT_STANDARD; when `UI_DESKTOP_STACK` is set, map to FLET controls / Qt widgets per [`ui-python-desktop/reference.md`](../ui-python-desktop/reference.md) |
| `status` | Missing stories, deprecated components |

## Prerequisites

- Tokens doc exists (`ui-design-foundation` doc 02)

## Hard rules

- New primitives need Storybook default + a11y note
- Variants documented in CATALOG before use in screens
- Cite **example id** from manifests when visual target exists
- Craft tier ≥ refined: **behavior source** from [`resources/control-platforms.md`](../../resources/control-platforms.md) in CATALOG; style stays project tokens
- **Modern widgets:** choose the behavior source + APG pattern from [`resources/effects-and-widgets.md`](../../resources/effects-and-widgets.md) §4; CATALOG records `Behavior source`, `APG pattern`, and `States` (loading/empty/error/disabled/selected). Hand-rolled combobox/dialog/data-table/command-palette needs an APG justification.
- **Effects:** reusable motion recipes (reveal, stagger, view transition) are primitives only when used across screens; record the recipe + tier + fallback, keep durations/easings in motion tokens, and never ship a Tier 3 effect without a fallback.
- **Token compile:** DTCG `tokens.json` → Style Dictionary v4 → platform files; CATALOG rows reference token **names**, never literals
- **Desktop primitives:** when `UI_DESKTOP_STACK` is set (`flet` / `pyside6` / `pyqt`), `init`/`add` seed CATALOG rows from the desktop primitive map (FLET `ft.*` controls / Qt widgets) — same token binding rules as web primitives
- **Operator handoff:** close every response per [`SKILL_DEPENDENCIES.md` § Operator handoff contract](../SKILL_DEPENDENCIES.md#operator-handoff-contract) — terse output; `**Needs your approval:**` with `path:L<n>` cites; `**Needs your answer:**`; one `**Next step:**`; Form A when nothing is needed; omit empty sections.
- **Document clarity:** generated documents follow [`SKILL_DEPENDENCIES.md` § Document clarity contract](../SKILL_DEPENDENCIES.md#document-clarity-contract) — Status/Needs header; separate Decisions / Open questions lists; exactly one `## Next action`; no leftover scaffolding.

## External resources

Curated references: [`resources/web-research-2026.md`](../../resources/web-research-2026.md) §4 — apply its license policy + rules ([§8.1](../../resources/web-research-2026.md#81-verify-resource-urls-skill-rule), [§8.2](../../resources/web-research-2026.md#82-browser-control-authorization-skill-rule)). Widget/effect matrix: [`resources/effects-and-widgets.md`](../../resources/effects-and-widgets.md). Query Storybook MCP before inventing primitives.
