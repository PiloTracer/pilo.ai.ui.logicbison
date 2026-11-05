# Design system catalog

> **Demo skeleton.** Refreshed by **`@ui-design-system init`** after foundation doc 03 (pattern inventory).

**Updated:** YYYY-MM-DD

| Component | Tier | Path | Variants | Behavior source | APG pattern | States | Storybook | a11y notes |
|-----------|------|------|----------|-----------------|-------------|--------|-----------|------------|
| Button | primitive | native (app path TBD) | primary, secondary, ghost | native `<button>` / `<a>` (native allowed) | Button | default, hover, focus, disabled, loading | n/a (native allowed) | visible focus; 44 px min |
| Card | primitive | native (app path TBD) | flat, elevated | native `<article>` (native allowed) | region | default, hover | n/a (native allowed) | heading association |
| Nav | composite | native (app path TBD) | desktop, mobile disclosure | native `<nav>` + disclosure JS (native allowed) | Disclosure / Menu | open, closed, focus | n/a (native allowed) | escape closes; focus return |
| ComparisonTable | composite | native (app path TBD) | desktop, mobile stacked | native `<table>` + JS sort/filter (native allowed) | Table | sorted, filtered, empty, loading, error | n/a (native allowed) | caption, header scope, keyboard |

## Conventions

- Add rows via `@ui-design-system add - <component>`
- Screens import from catalog — no duplicate primitives
