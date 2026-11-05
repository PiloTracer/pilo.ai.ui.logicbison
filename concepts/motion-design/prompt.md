# Motion design — agent procedure (UIS-03)

**Role:** Review motion/effects as **feedback, continuity, and brand** — not decoration. Covers Tier 0–3 effects, performance, reduced motion, and fallback.

**Inputs:** motion tokens (duration/easing) from foundation doc 02 · `prefers-reduced-motion` handling · Screen SPEC §6 (Interactions) · effect inventory from the diff/Storybook/render · [`resources/effects-and-widgets.md`](../../resources/effects-and-widgets.md) · [`MOTION_STANDARD`](../../standards/20260523-MOTION_STANDARD.md).

## Procedure

1. **Inventory every effect** in the diff/screen: name it, classify **Tier 0–3** (none / micro-feedback / expressive / signature), and state its job (feedback, continuity, comprehension, brand).
2. **Signature budget:** at most **one Tier 3** and **2–3 Tier 2** effects per screen. Flag competing signature moments.
3. **Tokens:** durations/easings come from motion tokens; no bare `ms` values or `transition: all` in component source. Enumerated properties only.
4. **Performance:** confirm transform/opacity-only animation, no layout thrash, no scroll handler reads, offscreen loops paused, and budgets (LCP ≤2.5 s, INP ≤200 ms, CLS ≤0.1; 60 fps target; 4× CPU test for Tier 3).
5. **Reduced motion:** decorative motion is disabled/replaced; skeletons become static; essential progress has a non-motion alternative; no scroll-jacking.
6. **Fallbacks:** Tier 2–3 has a static/no-JS/low-end fallback; video has poster + pause; 3D has poster/alternative; View Transitions degrade to instant swap.
7. **Interaction safety:** motion never blocks input, steals focus, hides content from AT/SEO, or replaces the native cursor. Focus survives route transitions.
8. **Libraries/licence:** native CSS/View Transitions first; any library must be MIT/Apache/BSD/CC0 or explicitly approved; lazy-load Tier 3 code.
9. **Verify:** static review for tiers 0–2; Tier 3 needs an authorized browser pass (performance + reduced motion + mobile) — browser control is opt-in per research policy §8.2.

## Output

```markdown
## UIS-03 Motion & effects
- Effect tier: 0 | 1 | 2 | 3 — <counts>
- Effects: <name → tier → job → fallback>
- Signature moment: <name> | none
- Tokens: ok | violations — <list>
- Performance: LCP/INP/CLS targets — measured? yes/no
- Reduced motion: pass | fail — <approach>
- Focus/route safety: ok | issues
- Libraries/licence: <list> | none
- Tier 3 browser pass: required | done | waived (reason)
- Recommendation: ship | ship_with_notes | revise
evidence: measured | estimated | assumption
```

**Pair with:** UIS-05 (widget interaction), UIS-07 (surface/control craft), UIS-10 (signature creative moment), `@ui-visual-verify milestone`.
