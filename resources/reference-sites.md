# Reference sites — verified starting catalog

**What this is:** 14 public websites that are useful *design references* for common website jobs, tagged on two axes: **site type** × **conversion goal**. Use them to choose a reference; scan it into project evidence before synthesizing.
**Status:** Active · **Verified:** 2026-11-05 (HTTP + static scan; see status column) · **Needs:** re-verify before citing; sites redesign often.
**Taxonomy:** [`reference-types.md`](reference-types.md) · **Workflow:** [`docs/guides/web-reference-intake.md`](../docs/guides/web-reference-intake.md) · **Skill:** [`skills/ui-reference-intake`](../skills/ui-reference-intake/skill.md)

> **No asset licence.** These are links for design analysis. Logos, wordmarks, images, illustrations, fonts, and copy remain the owners' property. Extract principles; do not clone.

## Catalog

| # | Site | Type(s) | Goal | Scan status | Learn (principles) | Do not copy |
|---|---|---|---|---|---|---|
| 1 | [Userpilot](https://userpilot.com/) | `saas-product`, `lead-generation` | `demo-booking` | ok | Dense product-led section rhythm; feature-to-CTA pairing; demo path for a B2B tool | Purple identity, product screenshots, copy |
| 2 | [Databox](https://databox.com/) | `dashboard-app`, `saas-product` | `free-trial` | ok | Analytics-product storytelling; dashboard-in-hero; proof by numbers | Dashboard UI screenshots, brand palette |
| 3 | [HubSpot](https://www.hubspot.com/) | `saas-product`, `lead-generation` | `free-trial`, `demo-booking` | ok | Warm off-white canvas + one orange accent; product-family navigation; proof-before-features | Orange trade dress, HubSpot illustrations, copy |
| 4 | [Basecamp](https://basecamp.com/) | `saas-product` | `free-trial` | ok | Calm editorial density; oversized display headline; illustration-led proof; single strong CTA | Hand-drawn illustrations, voice/copy, brand blue |
| 5 | [Calendly](https://calendly.com/) | `scheduling-booking`, `saas-product` | `free-trial`, `demo-booking` | ok | Clean scheduling-product hero; product-UI proof; restrained motion; clear secondary nav | Product UI screenshots, logo, copy |
| 6 | [Typeform](https://www.typeform.com/) | `forms-surveys`, `saas-product` | `free-trial` | ok | Conversational/one-question-at-a-time framing; airy spacing; strong form-product metaphor | Typeform brand assets, question-flow copy |
| 7 | [Ellevest](https://www.ellevest.com/) | `finance`, `lead-generation` | `contact-quote`, `lead-magnet` | ok | Warm finance palette (green/cream); audience-specific voice; quiz as low-friction lead capture | Brand palette, photography, copy |
| 8 | [NerdWallet](https://www.nerdwallet.com/) | `comparison-marketplace`, `content-seo`, `finance` | `affiliate-referral` | ok | Trust-first comparison layout; dense category nav; editorial cards; rating/proof structure | Ratings, comparison content, brand green, copy |
| 9 | [monday.com](https://monday.com/) | `saas-product`, `dashboard-app` | `signup` | ok | Colorful product-led blocks; use-case segmentation; playful but structured grids | Brand colors, product screenshots, illustrations |
| 10 | [Leadpages](https://leadpages.com/) | `saas-product`, `lead-generation` | `free-trial` | ok | Landing-page CRO structure; benefit-led hero; template/proof modules; conversion-first CTAs | Brand purple/lime, templates, copy |
| 11 | [charity: water](https://www.charitywater.org/) | `nonprofit-donation` | `donation` | ok | Impact-first storytelling; bold photography; one primary donate CTA; proof numbers | Photos, impact stories, logo, copy |
| 12 | [Semrush](https://www.semrush.com/) | `saas-product`, `lead-generation` | `free-trial`, `demo-booking` | ok | Data-product hero; capability clusters; free-tool lead capture; enterprise/demo path | Brand palette, product screenshots, copy |
| 13 | [Mailchimp](https://mailchimp.com/) | `saas-product` | `free-trial` | ok | Editorial serif/sans voice; warm neutral canvas; yellow CTA accent; content-led proof | Mailchimp yellow trade dress, illustrations, copy |
| 14 | [Warby Parker](https://www.warbyparker.com/) | `ecommerce` | `purchase` | **blocked (HTTP 403)** | Editorial commerce, try-on/returns reassurance, lifestyle photography, clean PDP hierarchy | Brand photography, product assets, copy; **scan blocked — use operator screenshot/PDF** |

## Query examples

```bash
python3 scripts/reference-scan.py list --work-ui .work.ui --family lead-generating
python3 scripts/reference-scan.py list --work-ui .work.ui --type lead-generation
python3 scripts/reference-scan.py list --work-ui .work.ui --goal demo-booking
```

```text
@ui-reference-intake find - lead-generation
@ui-reference-intake find - ecommerce ; goal=purchase
```

**"Lead-generating" references in this catalog:** the family query returns #1 Userpilot, #5 Calendly, #7 Ellevest, #3 HubSpot, #10 Leadpages, #8 NerdWallet, #12 Semrush, #6 Typeform. Databox/Basecamp/Mailchimp are SaaS trial pages with a newsletter secondary, not lead-generation pages — the family query deliberately excludes weak newsletter signals. That is why both axes exist: a SaaS trial page and a B2B service page are both lead-generating but need different mechanisms.

## Selection rules

1. Pick **2–4 max** per screen; name one primary.
2. Prefer references whose **type + goal** match the screen's job, not the ones that merely look nice.
3. Mix *one* reference for structure, *one* for surface/craft, *one* for proof/content — not three for the same dimension.
4. A blocked row is not evidence. Use an operator screenshot/PDF or choose another reference.
5. Re-scan before binding if the site has redesigned or evidence is >180 days old.

## Maintenance

- Add a row only after a live check (or mark `blocked` with the reason).
- Keep tags aligned with [`reference-types.md`](reference-types.md).
- Do not add asset links or copied screenshots to this file.
