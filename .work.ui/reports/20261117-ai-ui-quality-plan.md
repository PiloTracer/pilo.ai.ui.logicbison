# AI UI quality plan

**What this is:** The plan that raised generation-time UI quality in UI Design OS, and the record of what was applied.

**Status:** Approved · 2026-11-17  
**Needs:** nothing — the operator instructed this plan be generated and applied in the same message.

## Purpose

UI Design OS exists so an agentic coding assistant ships accessible, on-brand, responsive interfaces instead of a default template. Skills orchestrate the workflow, standards bind tokens and components, and UIS concepts gate craft. Project truth lives in `.work.ui/`.

## Gap

Token lint, reference intake, effects budgets, and copy rubrics were already in place. The hole was the moment of generation. UIS-06 (`concepts/ai-visual-quality/prompt.md` before this change) asked the agent to "flag gradient heroes" after the code existed. Nothing forced a visual decision in the SPEC, and nothing failed the build when the diff contained the default look.

## Applied

| Fix | Where |
|-----|--------|
| Reject catalog and pass rule | `resources/ai-ui-quality.md` |
| Machine check for gradient, glow, Inter, stock phrases | `scripts/ai-chrome-lint.sh` |
| UIS-06 scores every class; `ship` is invalid on `fail` | `concepts/ai-visual-quality/prompt.md` |
| SPEC §4 visual decision required before Approved | screen SPEC template, `ui-screen-spec`, demo `home` |
| Read the contract before generate; lint in the task gate | `skills/ui-component-build/skill.md` |
| Static verify check 2b | `skills/ui-visual-verify/skill.md` |
| Routing | `ui-director` shortcut, `ui-process-router/reference.md`, `START_HERE.md` |

Layout classes that a regex cannot judge (identical cards, centering, type scale, fake metrics, states, radius) stay in the UIS-06 review. A brand that wants a named gradient puts it in the token file and the visual-decision row.

## Decisions

1. No new skill. `APPROACH.md` §6 already covers this with a concept plus a standard check. The contract is a resource, not `ui-quality`.
2. `standards/` was not edited. Section 4 of the screen SPEC standard already requires layout and hierarchy; the visual decision is a subsection inside it.

## Open questions

(none)

## Next action

Next action: none — applied in this repo. The next product step is in the application repo: `@ui-component-build plan - S1` for `home`.
