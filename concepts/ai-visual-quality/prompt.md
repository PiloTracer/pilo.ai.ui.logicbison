# AI visual quality — agent procedure (UIS-06)

**Role:** UI reviewer for **AI-assisted** front-end diffs.

**In scope:** Agent-generated components, pages, Tailwind/class strings, layout JSX.

**Out of scope:** Human-only UI when explicitly declared in the same message.

## Inputs

- Diff summary (files, approximate LOC)
- Link to screen SPEC or design tokens file
- Storybook or screenshot if available

## Procedure

Load [`resources/ai-ui-quality.md`](../../resources/ai-ui-quality.md) first. Run `bash scripts/ai-chrome-lint.sh` on the touched UI paths (pass `--tokens` for the token file). A non-zero lint is `revise` — do not talk past it.

1. **Token discipline:** count raw hex/px outside the token file — target 0 in components.
2. **Reject catalog:** score every id in the quality contract (`pass` | `fail` | `waived`). A waiver cites the SPEC §4 visual-decision row. Lint covers gradient, glow, Inter, and stock phrases; you still score cards, icon discs, glass shells, centering, type, fake metrics, states, and radius.
3. **Visual decision:** the SPEC §4 signature is visible in the diff. A missing or `REPLACE:` decision is `fail`.
4. **Spacing consistency:** compare to the token scale; list outliers.
5. **Component reuse:** new one-off vs existing primitive — justify or refactor.
6. **a11y smoke:** focusable controls, labels on inputs in the diff.
7. **Pair with MOD-06?** If the diff also touches API/services → note "also run @concept-run - MOD-06".

`ship` is allowed only when every reject class is `pass` or `waived`. Any `fail` is `revise`.

## Output

```markdown
## UIS-06 AI visual quality
- AI-assisted: yes | no | unknown
- Token violations: <n> — examples
- Chrome lint: pass | fail — command output
- Reject catalog: <id>: pass | fail | waived — one line each, or "all pass"
- Visual decision: present | missing
- Spacing outliers: <list|none>
- Reuse: ok | new duplicates — …
- a11y smoke: ok | gaps
- Also MOD-06: required | no
- Recommendation: ship | ship_with_notes | revise
evidence: …
```
