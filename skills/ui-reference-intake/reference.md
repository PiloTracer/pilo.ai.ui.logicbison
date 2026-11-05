# ui-reference-intake — detailed reference

Companion to `skill.md`. Use this for invocation examples, DNA worksheets, synthesis matrices, and failure handling.

## 1. Invocation examples

### Good prompts

| Prompt | Why it works | Routes to |
|---|---|---|
| `@ui-reference-intake scan - https://www.hubspot.com https://basecamp.com` | Specific URLs, no clone demand | `scan` → `dna` |
| `@ui-reference-intake - make the home page feel calmer and more editorial, using Basecamp as the primary reference and NerdWallet for trust signals` | Names target, roles, and intent | `scan` → `dna` → `synthesize` → `bind - home` |
| `@ui-reference-intake synthesize - hubspot basecamp calendly` | DNA already exists; blend explicitly | direction + token proposal |
| `@ui-reference-intake bind - pricing` | SPEC + Approved direction | §13/§11 + map |
| `@ui-reference-intake find - lead-generation` | Asks for a kind of reference, not a URL | read-only shortlist |
| `@ui-reference-intake audit` | Provenance check | PASS/FAIL report |

### Wrong prompts (and the correction)

| Wrong | Why | Do instead |
|---|---|---|
| `@ui-reference-intake - clone https://stripe.com exactly` | The framework does not clone sites; assets/copy/fonts are not licensed | "...extract Stripe's spacing, type hierarchy, and CTA rhythm into an original design" |
| `@ui-reference-intake scan - 14 URLs` for one screen | Too many references produce a collage | Pick 2–4 for the screen; scan the rest later |
| `@ui-reference-intake bind - home` with no SPEC | Binding has no contract to write into | `@ui-screen-spec create - home` then `bind` |
| `@ui-reference-intake scan - http://site` | HTTP is not accepted; HTTPS only | Use the HTTPS URL |
| `@ui-reference-intake scan - https://site/login` | Auth/paywall pages are out of scope | Use the public marketing page or an operator-owned screenshot |
| `@ui-reference-intake dna - hubspot` with no scan | No evidence; DNA would be invented | `scan` first |

---

## 2. What "design DNA" means here

DNA is a **mechanism record**, not a mood board description. Every dimension should let another agent reproduce the *relationship* without reproducing the *surface*.

| Dimension | Ask | Good DNA line | Bad DNA line |
|---|---|---|---|
| Color | What roles exist? Which are surfaces/text/accent? | "Warm off-white canvas; near-black ink; one saturated blue accent; accent used only for primary CTA and links." | "Modern blue palette." |
| Type | What relationships, not just font names? | "Display/body pair; display 1.6× body; body 16–18 px; tight display tracking; 1.5 body line-height." | "Nice sans-serif." |
| Space | What rhythm? | "8 px base with 24/48/96 section rhythm; content max ~1,100 px; 64–96 px hero padding." | "Lots of whitespace." |
| Surface | What depth language? | "Flat cards, 1 px neutral border, 12 px radius, no shadow except hover." | "Clean cards." |
| Layout | What repeats? | "Centered hero, 2-column feature alternation, 3-up cards, single CTA per section." | "Standard landing page." |
| Components | What is distinctive in behavior? | "Pill nav with a single filled CTA; pricing toggle defaults annual; logo strip is monochrome." | "Nice buttons." |
| Motion | What is observed vs assumed? | "Static scan: only 2 transition declarations (opacity 150 ms). Hover/scroll behavior unverified." | "Smooth animations." |
| Copy | What patterns, not text? | "Second-person headlines, 4–8 word CTAs, proof numbers before feature detail." | "Friendly copy." |

**Confidence:** `high` = measured + operator screenshot; `medium` = measured CSS + page structure; `low` = static evidence only on a JS-heavy page.

**Classification (two axes, multi-label):**

- `primary_type` + `types` — what the page *is* (`saas-product`, `lead-generation`, `comparison-marketplace`, `nonprofit-donation`, …).
- `conversion_goal` + `secondary_goals` — what it asks the visitor to do (`demo-booking`, `free-trial`, `donation`, `affiliate-referral`, …).
- `funnel_stage` — `awareness` / `consideration` / `decision` / `retention` / `unknown`.

"Lead-generating" is a **goal family**, not a genre. A B2B service page, a SaaS demo page, a finance comparison, and an agency portfolio can all be lead-generating. Retrieve with both axes:

```bash
python3 scripts/reference-scan.py list --work-ui .work.ui --type lead-generation
python3 scripts/reference-scan.py list --work-ui .work.ui --goal demo-booking
```

If the heuristic is wrong, override only with a recorded reason: `scan <url> --type <type> --goal <goal>` or state the override in DNA §2.

---

## 3. DNA worksheet (per section)

1. **Source & provenance** — URL, fetch date, method, robots, rights basis, evidence file link, confidence, limits.
2. **Identity & positioning** — archetype (marketing/SaaS/dashboard/commerce/nonprofit), audience, promise, proof style. Tag assumptions.
3. **Layout & IA** — regions, nav model, hero type, section order, column counts, container/measure, density.
4. **Color** — measured palette + named tokens; role mapping; contrast notes; dark mode if observed.
5. **Typography** — families + licence status; scale; weights; case/tracking; measure; fallback stack.
6. **Space, shape & surface** — spacing base, section rhythm, radii scale, borders, shadows/elevation, background treatment.
7. **Components & patterns** — nav, CTA, cards, forms, pricing, proof, tabs, footer; state clues; what is missing.
8. **Motion & interaction** — measured transitions/animations; mark unobserved hover/scroll/state behavior.
9. **Imagery & iconography** — photo/illustration/3D/UI-shot mix, aspect ratios, treatment, icon style; **do not reuse**.
10. **Copy & content patterns** — headline shapes, CTA verbs, proof types, reading level; no verbatim reuse.
11. **Transfer rules** — adopt / adapt / avoid; originality constraints; a11y corrections; what would make it a clone.
12. **Evidence & confidence** — measured/inferred table; gaps; what a screenshot or browser tier would add.

---

## 4. Synthesis matrix

Example for a B2B analytics landing page:

| Dimension | HubSpot (primary, 60%) | Basecamp (secondary, 30%) | NerdWallet (accent, 10%) | Resolution |
|---|---|---|---|---|
| Canvas | warm cream | near-white green-tinted | white | warm off-white `oklch(98% 0.008 95)` |
| Ink | near-black warm | blue-black | navy | warm blue-black |
| Accent | orange | blue + green | teal | one teal-blue; orange reserved for highlights |
| Type | geometric sans + serif display | grotesque + mono details | serif headlines | one grotesque + one serif display; mono only for data labels |
| Space | dense, 24–48 rhythm | calm, 64–96 | dense data | 8 px base, 32/64/96 rhythm |
| Surface | flat + soft shadows | flat, 1 px borders | cards + dividers | flat cards, 1 px border, 12 px radius, no default shadow |
| Proof | logos + stats | testimonials + longevity | ratings + comparisons | stats + one testimonial + comparison table |
| Motion | subtle | minimal | minimal | 150–200 ms opacity/translate only |
| Do not copy | HubSpot orange identity, proprietary illustrations | Basecamp voice/copy, hand-drawn assets | NerdWallet comparison layout wholesale | own palette, copy, imagery, composition |

**Weights are a thinking tool, not a pixel contract.** The point is to make the primary reference legible and keep secondaries from competing.

---

## 5. Binding example (SPEC §13)

```markdown
## 13. Visual references

| Field | Value |
|---|---|
| exampleIds | N/A (reference intake) |
| referenceIds | `hubspot`, `basecamp` |
| direction | `inputs/references/directions/trusted-growth.md` (Approved 2026-11-05) |
| regionMap | hero → calm editorial; proof → stat band; pricing → single accent CTA |
| extractedRules | - warm off-white canvas, one teal accent, no second accent<br>- display/body pair, 1.6 ratio, 1.5 body line-height<br>- 8 px base; 32/64/96 section rhythm<br>- flat cards, 1 px border, 12 px radius; shadow only on hover<br>- one primary CTA per section; secondary CTA is text link |
| doNotCopy | logos/wordmarks; HubSpot orange identity; Basecamp illustrations/voice; source copy/testimonials; proprietary fonts |
| originalityCheck | own composition, imagery, copy, and palette; side-by-side recognition test passed |
| accessibility | WCAG 2.2 AA; reference contrast failures not inherited |
```

Mirror the `extractedRules` bullets into §11 acceptance criteria.

---

## 6. Browser/vision tier (opt-in)

Static evidence cannot see computed styles, hover/focus, responsive behavior, or JS-rendered sections. If the operator wants those:

1. Ask for **explicit authorization**: tool, exact URLs, actions, and whether screenshots may be stored.
2. Prefer an **operator-provided screenshot/PDF** (no browser control) when one exists.
3. If authorized, capture full-page + key sections at 360/768/1280 px, plus one hover/focus state; store under `.work.ui/tmp/reference-captures/` (not tracked) and derive facts into DNA. Never publish captures.
4. Report the tier used in DNA §1 and §12. Do not upgrade confidence without evidence.

Authorization wording to request: *"Authorize Playwright/Chrome to capture <URLs> at <widths> for design analysis only, storing captures under `.work.ui/tmp/` and not republishing them?"*

---

## 7. Originality guardrails

A direction is **not** original if any of these is true:

- A user could name the reference brand from the screen alone.
- It uses the reference's logo/wordmark, distinctive illustration, photo, icon set, or proprietary font.
- It reproduces headlines, taglines, testimonials, or page copy.
- It copies a distinctive composition (hero + illustration + color block) rather than a general pattern.
- It uses the exact brand palette as identity (trade dress), even with a different logo.
- It keeps the reference's accessibility failures for fidelity.

**Differentiating moves (minimum 3):** own palette derived from the project's brand; own hero composition/imagery; own copy voice; own component shape/radius language; own proof strategy.

**Safe harbour:** layout principles, spacing rhythm, type-scale relationships, interaction patterns, content structure, and generic UI patterns (cards, tabs, pricing tables) are not protected by copyright in most jurisdictions — but local law varies. This is design guidance, not legal advice; counsel reviews high-risk clones.

---

## 8. Troubleshooting

| Symptom | Likely cause | Fix |
|---|---|---|
| `blocked-robots` | `Disallow` for `*` or our bot | Choose another URL, request operator approval with note, or use an operator-provided screenshot |
| `blocked-http` 403/429 | CDN/bot protection or rate limit | Stop; do not retry aggressively/spoof; try later from a different network only with operator approval, or use a screenshot |
| Few colors / no fonts | CSS cap, token indirection, or JS-injected styles | Check `styles.skipped`; raise `--max-css` (bounded), or use vision tier; do not invent |
| Palette dominated by framework resets | Declaration frequency ≠ usage | Weight named tokens + visible screenshot; trim neutral/reset entries in DNA |
| All headings empty | Client-rendered page | Request screenshot / authorized browser; record `low` confidence |
| `audit` says missing DNA | `scan` only produces evidence | Run `dna` for each slug |
| `audit` says raw source in tree | Raw HTML/CSS copied into `inputs/references/` | Move to `.work.ui/tmp/`; keep only derived evidence |
| `bind` blocked on tokens | Direction proposal not applied | Apply token deltas via foundation/token owner, then `bind` |

---

## 9. Registry/catalog relationship

- `resources/reference-sites.md` is a **framework-level** curated catalog (verified URLs + what to learn). It is not project evidence.
- `.work.ui/inputs/references/` is **project-level** evidence/DNA. A project can reference a catalog URL but must still scan and record its own evidence.
- The catalog never authorizes asset reuse; the same originality rules apply.
