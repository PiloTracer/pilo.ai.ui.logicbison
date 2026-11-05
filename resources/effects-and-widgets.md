# Effects & modern widgets — implementation catalog

**What this is:** The missing implementation layer between "make it feel modern/cool" and a shippable UI: effect tiers, performance/a11y guardrails, a modern widget matrix, and commercial-safe library choices.
**Status:** Active · **Date:** 2026-11-05
**Needs:** pick effects/widgets per screen in SPEC §6/§8; record the behavior source in `CATALOG.md`; run the gates in §7.

> **Default stance:** effects are not decoration. Every effect must earn its place by improving feedback, continuity, comprehension, or brand memorability — and must survive reduced motion, keyboard, low-end mobile, and contrast checks. One signature moment beats ten generic ones.

**Pairs with:** `standards/20260523-MOTION_STANDARD.md` (timing/reduced motion), `concepts/motion-design/prompt.md` (UIS-03), `concepts/interaction-patterns/prompt.md` (UIS-05), `concepts/creative-direction/prompt.md` (UIS-10), `standards/20260523-UI-PATTERNS.md`, `resources/control-platforms.md` (behavior platforms).

---

## 1. Effect tiers (choose deliberately)

| Tier | Name | Examples | Required evidence |
|---|---|---|---|
| **0** | None | Static page; no transitions beyond focus/hover | Default for utilitarian/admin |
| **1** | Micro-feedback | Hover, press, focus ring, toggle, validation shake (subtle) | Token durations; reduced-motion safe |
| **2** | Expressive | Reveal on scroll, stagger, view transition, shared element, skeleton shimmer, count-up, scroll progress | SPEC §6 entry + performance budget + fallback |
| **3** | Signature | Scroll-driven narrative, WebGL/3D, video background, complex page transition, custom cursor | SPEC §6 waiver + UIS-03/UIS-10 pass + performance budget + reduced-motion fallback + low-end test |

**Rule:** a screen may have **at most one Tier 3** moment and **2–3 Tier 2** effects. More reads as demo reel, not product.

---

## 2. Effect catalog

| Effect | Use when | Implementation | Guardrails |
|---|---|---|---|
| Hover/press feedback | Any interactive surface | CSS `transform`/`opacity`; `--duration-instant` | No layout shift; pointer + keyboard parity; focus ring not removed |
| Focus ring | Always | `:focus-visible` + `outline`/`box-shadow` | 3:1 against adjacent colors; never `outline: none` without replacement |
| Reveal on scroll | Long marketing page with section rhythm | `IntersectionObserver` + CSS class; optional `animation-timeline: view()` progressive | Content visible without JS; no hidden SEO/AT text; no reveal on essential forms |
| Stagger | Group of cards/list items | CSS custom property delay (`--i`), 30–60 ms steps | Total <300 ms; disabled under reduced motion |
| View transition | Route/page or shared element | View Transitions API (progressive) | Navigation never blocks; fallback instant swap; test back/forward |
| Shared element | Product image → detail | View Transitions API or FLIP (transform only) | No layout thrash; preserve focus; reduced-motion instant |
| Scroll progress | Long read/onboarding | CSS scroll timeline or `IntersectionObserver` | Not the only progress signal; reduced motion static |
| Parallax | Editorial depth (not product UI) | `transform: translate3d`; `will-change` during animation only | Disable on touch/reduced motion; no scroll-jacking; test CLS |
| Marquee | Logos/ticker (non-essential) | CSS animation; duplicate track `aria-hidden="true"` | Pause on hover/focus; reduced motion stops; never essential content |
| Gradient/aurora/noise | Brand atmosphere | CSS gradients + SVG noise; static fallback | Contrast measured over the busiest area; no banding; no heavy blur stacks |
| Glass/blur | Overlay/hero card | `backdrop-filter` + opaque fallback | Contrast check on final composite; fallback for unsupported; performance test |
| Spotlight/border beam | Premium card/CTA accent | CSS vars set from pointer; `pointer: fine` only | Keyboard equivalent; no color-only meaning; reduced motion static |
| Magnetic cursor/tilt | Signature marketing moment | Pointer events + `transform`; small max offset | Pointer-fine only; never hide native cursor; disabled touch/reduced motion; no form controls |
| Text reveal/split | Hero headline (one per page) | CSS clip/translate; keep real text in DOM | Screen readers read full text; no layout shift; reduced motion instant; no per-character spam |
| Count-up | Proof numbers | `IntersectionObserver` + `requestAnimationFrame` | Final value in DOM/`aria-label`; reduced motion immediate; no false precision |
| Skeleton/shimmer | Known content shape | CSS gradient; static under reduced motion | `aria-busy`; no infinite shimmer on error; match final layout |
| Confetti | Successful completion only | Canvas/DOM, short burst | Optional; never on error; reduced motion static; no blocking |
| Video background | Brand/lifestyle hero | `<video muted loop playsinline poster>` | No sound; pause control; reduced motion poster; captions if speech; data budget |
| 3D/WebGL | Product/configurator where 3D is the value | Three.js (MIT) lazy-loaded | Static poster fallback; keyboard alternative; mobile GPU budget; no essential info only in 3D |
| Page transition | Multi-step/app flow | View Transitions API or CSS | No blocking; focus management; back/forward; reduced motion instant |

### Anti-patterns (fail the review)

- Scroll-jacking, hijacked wheel/touch, or mandatory smooth-scroll.
- Custom cursor that replaces the native cursor or hides focus.
- `transition: all`; animating `width`/`height`/`top`/`left` on large surfaces.
- Infinite motion on essential UI; autoplay video with sound; parallax on forms.
- Glassmorphism without a contrast check; gradients behind body text without a scrim.
- Confetti/celebration on errors or destructive actions.
- Effects that hide content from no-JS, AT, or search engines.
- Tier 3 effects without a fallback, budget, or low-end test.

---

## 3. Performance budgets (Tier 2–3)

| Metric | Budget | How |
|---|---|---|
| LCP | ≤ 2.5 s | Optimize hero media; no render-blocking effect library |
| INP | ≤ 200 ms | Keep handlers small; no layout reads in scroll handlers; `requestAnimationFrame` |
| CLS | ≤ 0.1 | Reserve media dimensions; transform/opacity only; no late font swap shift |
| Long tasks | < 50 ms | Split work; defer non-critical effect code |
| Animation | 60 fps target | `transform`/`opacity`; avoid `filter: blur()` on large areas; test 4× CPU throttle |
| Effect JS | ≤ 30 KB gzip per screen (guideline) | Prefer native CSS/View Transitions; lazy-load Tier 3 |
| Media | Hero video ≤ 2–3 MB initial; poster required | `preload="metadata"`; no autoplay data on metered connections |

**Rules:** no effect may block input; pause offscreen loops; `content-visibility: auto` for long pages; `will-change` only while animating; remove listeners on unmount.

---

## 4. Modern widget matrix

Prefer native HTML for simple controls. For complex widgets, **use a headless behavior platform** from [`control-platforms.md`](control-platforms.md) and style with project tokens. Do not hand-roll ARIA for combobox/dialog/data table without an APG review.

| Widget | Default behavior source (MIT/Apache-2.0) | APG / behavior reference | Required states | Do not |
|---|---|---|---|---|
| Dialog / alert dialog | Radix Dialog, React Aria Dialog, Ark Dialog | APG Dialog (Modal) | open, closing, focus trap, return focus, scroll lock, escape | Nested modal without need; hide close on destructive confirm |
| Drawer / sheet | Vaul (MIT), Radix Dialog | Dialog + mobile sheet guidance | open, drag (optional), focus trap, return focus | Drag-only close; no keyboard close |
| Popover / tooltip | Radix Popover, React Aria, Floating UI | APG Tooltip / Popover | hover + focus + escape; collision; delay | Tooltip-only essential info; hover-only on touch |
| Menu / dropdown | Radix Dropdown Menu, React Aria Menu | APG Menu Button | open, focus, typeahead, escape, submenu | Native `<select>` for rich menu actions |
| Combobox / autocomplete | React Aria ComboBox, Ark Combobox | APG Combobox | typing, filtering, empty, loading, keyboard, announce count | Hand-rolled `div` listbox without ARIA |
| Command palette | cmdk (MIT) + Radix Dialog | Combobox/Dialog composition | query, groups, keyboard, recent, empty | Mouse-only; no escape; hijack global shortcuts without a settings path |
| Tabs | Radix Tabs, React Aria Tabs | APG Tabs | selected, focus, arrow keys, panel association | Tabs for sequential steps (use stepper) |
| Accordion / disclosure | Radix Accordion, React Aria Disclosure | APG Accordion | expanded, focus, heading level | Accordion for critical errors |
| Data table | TanStack Table (MIT) + TanStack Virtual (MIT) | Grid/Table patterns | sort, filter, pagination/virtual, selection, empty, loading, error | Fake table with divs; no keyboard; no caption |
| Date / date range | React DayPicker (MIT) + Popover | APG Dialog/Grid | selected, range, disabled, month navigation, input fallback | Date-only text input with no picker; locale ignored |
| Toast / notification | Sonner (MIT), React Aria Toast | Alert/status | polite/assertive, dismiss, action, pause on hover | Toast for errors that need a fix; auto-dismiss too fast |
| Slider / range | Radix Slider, React Aria Slider | APG Slider | value, keyboard, step, min/max, disabled | Native range on primary flows when craft tier ≥ refined |
| Segmented control | Radix Toggle Group, React Aria | Radio group / tabs guidance | selected, keyboard, disabled | Visual-only selected state |
| Carousel | Embla Carousel (MIT) or CSS scroll-snap | Carousel guidance | prev/next, keyboard, pause autoplay, slide count, reduced motion | Auto-advancing essential content; no pause |
| Dropzone / upload | React Dropzone (MIT) + native input | File upload guidance | drag, browse, progress, error, retry, type/size | Drag-only; no keyboard browse |
| Rich text | Tiptap (MIT core) | Editor guidance | toolbar, keyboard, paste, undo, a11y label | Contenteditable without a11y contract |
| Tree view | React Aria Tree, Ark Tree View | APG Tree View | expand, focus, typeahead, multi-select | Hand-rolled nested divs |
| Virtualized list | TanStack Virtual | List/grid guidance | scroll, focus, measurement, empty | Virtualize small lists; break find-in-page |
| Charts | See `control-platforms.md` chart table | UIS-09 + FT Visual Vocabulary | loading, empty, error, tooltip, keyboard/data table | Chart-only data; color-only encoding |
| Empty/loading/error | Patterns, not a library | `UI-PATTERNS` + UIS-08 | retry, explanation, skeleton, no dead end | Spinner-only for known layouts |

**Widget contract (record in SPEC §8 / CATALOG):** behavior source + license, APG pattern, keyboard map, focus return, loading/empty/error/disabled states, mobile behavior, and a11y notes.

---

## 5. Commercial-safe library choices

| Need | Baseline (preferred) | License | Notes |
|---|---|---|---|
| Complex behavior primitives | Radix UI / React Aria / Ark UI / Headless UI / Base UI / Shoelace | MIT / Apache-2.0 | Pick **one** per repo (see `control-platforms.md`) |
| Command palette | cmdk | MIT | Compose with Dialog; don't hand-roll listbox |
| Drawer | Vaul | MIT | Compose with Dialog semantics |
| Toast | Sonner | MIT | Or React Aria Toast |
| Table/virtual | TanStack Table + Virtual | MIT | Headless; style with tokens |
| Date picker | React DayPicker | MIT | Popover + input fallback |
| Carousel | Embla Carousel | MIT | Or CSS scroll-snap for simple cases |
| Dropzone | React Dropzone | MIT | Native input fallback |
| Rich text | Tiptap (core) | MIT | Extensions may differ — verify |
| Animation | Motion (motion.dev) / Motion One | MIT | Prefer native CSS/View Transitions first |
| Smooth scroll | Lenis | MIT | **Do not** use to hijack scroll; progressive only |
| 3D | Three.js | MIT | Lazy-load; poster fallback |
| Vector motion | Lottie-web | MIT | Or Rive runtime (MIT runtime; editor is SaaS — verify) |
| Scroll effects | Native CSS scroll-driven animations / IntersectionObserver | Platform | Preferred over JS scroll libraries |
| Page transitions | View Transitions API | Platform | Progressive enhancement |

**Not baseline:** GSAP (free for many uses but not an OSS baseline — verify license for the project), Spline (SaaS), LottieFiles paid assets, Framer templates, paid UI kits. Do not vendor GPL effect libraries.

---

## 6. Signature-moment protocol (UIS-10)

1. **Name it** in one sentence ("the hero product UI assembles as you scroll").
2. **Tie it to the value prop** — not a random flourish.
3. **Budget it** (JS KB, media MB, long tasks, GPU).
4. **Fallback it** — static poster, reduced motion, no-JS, low-end.
5. **Test it** — 4× CPU throttle, mobile viewport, keyboard-only, screen reader.
6. **Limit it** — one Tier 3 per screen; no competing signature moments.

---

## 7. Gates

| Gate | When | Pass |
|---|---|---|
| UIS-03 (motion) | Any Tier 2–3 effect | Effect inventory, tier, reduced-motion, performance, fallback |
| UIS-05 (interaction) | New/changed widget | APG mapping, keyboard, focus return, states |
| UIS-07 (surface/control craft) | Craft ≥ refined | Widget anatomy, token use, no native shortcuts |
| UIS-10 (creative direction) | Marketing/hybrid | One named signature moment with fallback |
| `token-lint` | Any component | No raw colors/durations |
| A11y audit | Milestone | No new violations; keyboard/focus verified |
| Performance (browser, opt-in) | Tier 3 or media-heavy | LCP/INP/CLS budgets; 4× CPU test |

**Browser verification is opt-in** per `resources/web-research-2026.md` §8.2. Tier 3 effects should not ship without an authorized browser pass; static review cannot prove frame rate or CLS.

---

## 8. Review output template

```markdown
## Effects & widgets
- Effect tier: 0 | 1 | 2 | 3 — <counts>
- Effects: <name → tier → fallback>
- Signature moment: <name> | none
- Performance budget: LCP/INP/CLS targets + measured? yes/no
- Reduced motion: pass | fail — <approach>
- Widgets: <name → behavior source → APG pattern>
- Hand-rolled widgets: none | <justification>
- Licenses: <all MIT/Apache/BSD/CC0> | <exceptions>
- Keyboard/focus: pass | gaps
- Recommendation: ship | ship_with_notes | revise
evidence: measured | estimated | assumption
```

## 9. Sources (license verify in package before ship)

| Resource | URL | Role |
|---|---|---|
| MDN — View Transitions API | https://developer.mozilla.org/en-US/docs/Web/API/View_Transitions_API | Native page/shared-element transitions |
| MDN — Scroll-driven animations | https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_scroll-driven_animations | Native scroll effects, progressive |
| web.dev — INP | https://web.dev/articles/inp | Interaction responsiveness budget |
| web.dev — CLS | https://web.dev/articles/cls | Layout-shift budget |
| WAI-ARIA APG | https://www.w3.org/WAI/ARIA/apg/ | Widget keyboard/ARIA patterns |
| Motion | https://motion.dev/ | MIT animation library (prefer native first) |
| cmdk | https://cmdk.paco.me/ | MIT command palette |
| Vaul | https://vaul.emilkowal.ski/ | MIT drawer/sheet |
| Sonner | https://sonner.emilkowal.ski/ | MIT toast |
| TanStack Table | https://tanstack.com/table | MIT headless table |
| TanStack Virtual | https://tanstack.com/virtual | MIT virtualization |
| React DayPicker | https://daypicker.dev/ | MIT date picker |
| Embla Carousel | https://www.embla-carousel.com/ | MIT carousel |
| React Dropzone | https://react-dropzone.js.org/ | MIT file dropzone |
| Tiptap | https://tiptap.dev/ | MIT core rich text (extensions vary) |
| Lenis | https://lenis.darkroom.engineering/ | MIT smooth scroll (do not hijack) |
| Three.js | https://threejs.org/ | MIT 3D |
| Lottie-web | https://airbnb.io/lottie/ | MIT vector motion |
| Rive | https://rive.app/ | Runtime MIT; editor SaaS — verify |
| Motion One (legacy) | https://motion.dev/ | MIT; superseded by Motion — verify |

> URLs are starting points, not endorsements. Re-verify the current license from the package/repository before shipping; the framework's commercial-safe policy excludes GPL vendoring and paid kits as a baseline.

## 10. Adoption

1. Pick the **effect tier** in foundation doc 01 / SPEC §6.
2. Pick **one behavior platform** (already required by `control-platforms.md`).
3. Add the widget/effect to `CATALOG.md` with behavior source + license + APG pattern.
4. Implement with tokens; run UIS-03/UIS-05/UIS-07; add UIS-10 for marketing.
5. Verify a11y + performance; do **not** ship Tier 3 without an authorized browser pass.
