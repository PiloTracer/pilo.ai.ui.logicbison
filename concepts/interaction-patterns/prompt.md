# Interaction patterns — agent procedure (UIS-05)

**Role:** Review **complex widgets and flows** for correctness, keyboard/AT support, state coverage, and modern behavior — before visual polish.

**Inputs:** Screen SPEC §6 (interactions) + §8 (primitives) · CATALOG behavior source · widget inventory from the diff · [`resources/effects-and-widgets.md`](../../resources/effects-and-widgets.md) §4 · [`resources/control-platforms.md`](../../resources/control-platforms.md) · WAI-ARIA APG.

## Procedure

1. **Widget inventory:** list every non-trivial widget (dialog, drawer, popover/tooltip, menu, combobox, command palette, tabs, accordion, data table, date picker, toast, slider, segmented control, carousel, dropzone, rich text, tree, virtualized list, chart).
2. **Behavior source:** each widget has a headless platform/primitive in CATALOG (Radix/React Aria/Ark/Headless/Base/Shoelace) and a licence. Flag hand-rolled combobox/dialog/data table/command palette without APG justification.
3. **APG mapping:** name the matching APG pattern; verify roles, states, accessible name, keyboard map, typeahead, and announcements.
4. **Focus contract:** initial focus, focus trap, escape, return focus, route-change focus, skip links; no focus loss after async actions.
5. **State coverage:** loading, empty, error, retry, disabled, selected, partial, permission-denied; no dead ends.
6. **Forms:** visible labels, inline errors + summary, input preserved on failure, validation timing, autocomplete, 44 px targets.
7. **Destructive actions:** confirm pattern, consequence clear, cancel default, undo where possible.
8. **Pointer/touch:** 44 px targets, hover-only actions have focus/touch equivalents, no drag-only close, no long-press-only action.
9. **Flow integrity:** back navigation, deep links, refresh mid-flow, duplicate submit, optimistic updates/revert.
10. **Verify:** keyboard-only pass + screen-reader spot check; add Playwright/axe only under explicit browser authorization.

## Output

```markdown
## UIS-05 Interaction patterns
- Flow: <steps>
- Widgets: <name → behavior source → APG pattern>
- Hand-rolled widgets: none | <justification>
- Focus contract: ok | gaps — <detail>
- State coverage: ok | gaps — <list>
- Forms: ok | gaps
- Destructive guards: ok | weak | missing
- Pointer/touch parity: ok | gaps
- Licences: <list> | exceptions
- Recommendation: ship | ship_with_notes | revise
evidence: measured | estimated | assumption
```

**Pair with:** UIS-03 (motion/effects), UIS-07 (surface/control craft), UIS-08 (intuitive UX), `@ui-accessibility-audit milestone`.
