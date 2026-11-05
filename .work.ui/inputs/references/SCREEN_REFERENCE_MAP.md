# SCREEN REFERENCE MAP

**What this is:** Which references and direction are bound to each screen SPEC.
**Status:** Active · **Updated:** 2026-11-05
**Needs:** build in the application repo; no app source in this framework repo.

| Screen slug | SPEC | Reference IDs | Direction | Bound | Date |
|---|---|---|---|---|---|
| `home` | `screens/home/20261105-SCREEN-SPEC.md` | `hubspot`, `basecamp`, `nerdwallet` | `directions/trusted-growth.md` (Approved) | yes — SPEC Approved | 2026-11-05 |

## Rules

- A row is valid only when the direction is `Approved` and its token proposal has been applied.
- SPEC §13 must contain the same `referenceIds`, `extractedRules`, `doNotCopy`, and `originalityCheck`.
- Remove a reference from the row when its DNA is superseded — do not silently keep stale bindings.

## Next action

`@ui-design-system init` → `@ui-component-build plan - S1` in the application repo (this framework repo has no app source).
