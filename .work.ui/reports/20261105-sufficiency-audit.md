# Sufficiency audit — professional UI/UX, effects, modern widgets

**What this is:** An honest capability audit of the UI Design OS skills, standards, concepts, and resources against the question: *can this framework produce high-quality/professional UI/UX with effects and modern widgets that feel usable, modern, attractive, and impressive?*
**Status:** Current · **Date:** 2026-11-05
**Needs:** no blocking decision; use the verdict to choose the next build (see §6).

## 1. Verdict

**Yes for professional, usable, accessible UI — as a workflow.** The framework has strong coverage of tokens, screen SPECs, component discipline, accessibility, responsive behavior, data visualization, copy, creative direction, reference intake, and verification gates.

**It was not sufficient for the “impressive/cool effects + modern widgets” bar.** The motion/interaction concepts were thin checklists, and there was no implementation catalog for effect tiers, performance budgets, modern widgets, or safe libraries. That gap is now closed by [`resources/effects-and-widgets.md`](../../resources/effects-and-widgets.md) plus expanded UIS-03/UIS-05 and build/verify gates.

**It still cannot guarantee taste or “wow.”** The framework constrains and reviews craft; it does not replace a designer, a brand, or an authorized browser performance pass. Tier 3 effects remain opt-in to verify, and the framework ships guidance, not a component/effect library.

## 2. Coverage matrix

| Capability | Coverage | Sufficient? | Evidence / gap |
|---|---|---|---|
| Visual hierarchy, layout, responsive | Strong | Yes | UIS-01/02, `UI-PATTERNS`, `RESPONSIVE_STANDARD`, screen SPEC regions |
| Design tokens, surfaces, theming | Strong | Yes | `DESIGN_TOKENS_STANDARD`, DTCG pipeline, `SURFACE-AND-CONTROL-CRAFT`, UIS-07 |
| Components/primitives | Strong | Yes | `COMPONENT_STANDARD`, `ui-design-system`, CATALOG, Storybook discipline |
| Accessibility | Strong | Yes | `ACCESSIBILITY_STANDARD`, UIS-04, axe/jest-axe paths, manual checklist |
| Forms, navigation, dashboards, data viz | Strong | Yes | `UI-PATTERNS`, UIS-05/08/09, FT Visual Vocabulary rules |
| Copy/UX writing | Strong | Yes | `COPY_STANDARD`, `ui-copy`, error/tone/label rubrics |
| Creative direction / “not generic” | Strong | Yes | UIS-06/10, hero patterns, signature-detail review, anti-template checklist |
| Reference/intake (images, examples, live sites) | Strong | Yes | `examples/`, `ui-reference-intake`, two-axis taxonomy, 13 live scans |
| Verification/readiness | Strong | Yes | `framework-verify`, token-lint, UIS gates, a11y/visual verify, plan audit |
| Motion/effects | **Was thin; now covered** | Yes, with browser caveat | UIS-03 expanded; `effects-and-widgets.md` effect tiers/performance/fallback; Tier 3 needs authorized browser pass |
| Modern widgets | **Was thin; now covered** | Yes, with execution caveat | Widget matrix + APG mapping + behavior-source/license + CATALOG fields; still need real component code |
| Performance budgets | **Was implicit; now explicit** | Yes | LCP/INP/CLS budgets, transform/opacity rules, 4× CPU test, media budgets |
| Licensing for effects/widget libs | **Was partial; now covered** | Yes | Commercial-safe table + “verify in package”; GPL/paid-kit exclusions |
| Browser-verified visual/effect quality | Opt-in by policy | **Partial by design** | `web-research-2026` §8.2; static checks cannot prove FPS/CLS/hover states |
| Shipped component/effect library | Not a goal | n/a | Framework provides standards, architecture, and matrices; adopters bring code |

## 3. What was missing (and what changed)

| Gap | Before | After |
|---|---|---|
| Effect selection | UIS-03 was 4 steps; no tiers, budgets, fallbacks, library rules | Tier 0–3 model, effect catalog, LCP/INP/CLS budgets, reduced-motion/fallback rules, safe library table |
| Modern widgets | `control-platforms.md` covered base primitives/charts only | Widget matrix for dialog, drawer, popover, menu, combobox, command palette, tabs, table, date picker, toast, slider, segmented control, carousel, dropzone, rich text, tree, virtual list, charts |
| Widget behavior contract | CATALOG lacked APG/states columns in the demo | CATALOG template/demo now record `Behavior source`, `APG pattern`, `States` |
| Build/verify triggers | UIS-03/05 were mentioned but not gated per change | `ui-component-build` triggers UIS-03/05/10 for effects/widgets/signature moments; `ui-visual-verify` adds effects/widgets check |
| Discoverability | No single effects/widgets resource | Linked from `README`, `resources`, `APPROACH`, `START_HERE`, `concepts/README`, `ui-design-system` |

## 4. Remaining limits (do not overclaim)

1. **Browser verification is opt-in.** Static review cannot prove frame rate, CLS, hover/focus, or responsive effect behavior. Tier 3 effects should not ship without an authorized browser pass. This is a policy choice (cost/security), not a missing doc.
2. **Guidance, not a component library.** The framework tells you which widget/behavior source/APG pattern to use and how to gate it; it does not ship React/Vue code. Adopters implement with their stack.
3. **Taste is still human.** The gates catch generic chrome, token drift, broken hierarchy, copied references, and inaccessible effects; they cannot guarantee a distinctive brand or a memorable idea.
4. **Reference scans are static.** JS-rendered pages, computed style, hover, and responsive states are not observed; DNA confidence is marked accordingly.
5. **One scan blocked.** Warby Parker returns HTTP 403; it is catalog-only until an operator provides a screenshot/PDF or authorizes browser capture.
6. **Effects can hurt performance.** The budgets are guardrails, not a guarantee; Tier 3 code needs profiling on low-end mobile.

## 5. How the framework now supports “modern/impressive”

- **One signature moment** (UIS-10) with a named pattern, fallback, and budget — not a pile of effects.
- **Effect tiers** so a landing page can be expressive while an admin screen stays utilitarian.
- **Widget matrix** so command palettes, data tables, date pickers, toasts, drawers, and comboboxes are accessible and consistent, not hand-rolled.
- **Behavior-source discipline** (Radix/React Aria/Ark/Headless/Base/Shoelace) with one platform per repo.
- **Performance/a11y gates** (UIS-03/05/07, token-lint, a11y audit, optional browser pass).
- **Reference intake** to extract principles from sites like HubSpot/Basecamp/NerdWallet without cloning.

## 6. Recommended next build

1. On the thin client (`system-news`), run `@ui-reference-intake find - lead-generating`; pick 2–4 refs per vertical screen.
2. Add a **Tier 2** effect + one **modern widget** to one screen as a proof (e.g. a command palette or comparison table with reveal), with UIS-03/UIS-05 evidence.
3. Authorize one browser pass for the Tier 2/3 proof (performance + reduced motion + mobile); record LCP/INP/CLS.
4. Only then promote the pattern into the design system catalog and reuse across screens.

## 7. Evidence

- `resources/effects-and-widgets.md` (new)
- `concepts/motion-design/prompt.md`, `concepts/interaction-patterns/prompt.md` (expanded)
- `skills/ui-design-system/skill.md`, `skills/ui-component-build/skill.md`, `skills/ui-visual-verify/skill.md` (gates)
- `templates/work.ui/design-system/CATALOG.md.template`, `.work.ui/design-system/CATALOG.md` (columns)
- `.work.ui/context/HANDOFF_UI.md`, `.work.ui/plans/NEXT_UI.md` (session record)
- `bash scripts/framework-verify.sh` PASS; scanner self-test 35/35; reference audit PASS
