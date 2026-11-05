# Reference taxonomy — site type × conversion goal

**What this is:** The classification model for website design references. It answers *"do we have references for a lead-generating page?"* without collapsing every marketing site into one bucket.
**Status:** Active · **Version:** `2026-11-05` · **Needs:** extend the model (not the prose) when a new website category appears.

> A reference is classified on **two axes**: what kind of site/page it is (**site type**) and what it asks the visitor to do (**conversion goal**). Most real references are multi-label. "Lead-generating" is a *goal*, not a single genre.

---

## 1. Why two axes

A B2B service page, a SaaS demo page, a finance comparison, and an agency portfolio can all be **lead-generating**, but they look and behave differently. Filtering only by "lead-generating" would return a collage. Filtering by both axes returns references that share the *mechanism* you need:

```text
site_type=lead-generation      + goal=demo-booking     → B2B service pages
site_type=saas-product         + goal=demo-booking     → product demo pages
site_type=comparison-marketplace + goal=affiliate-referral → finance/comparison lead-gen
site_type=portfolio-agency     + goal=contact-quote    → agency lead-gen
```

## 2. Site types (`REFERENCE_TYPES`)

| ID | Meaning | Typical signals |
|---|---|---|
| `lead-generation` | Service/B2B page built to capture a lead | demo/quote/consultation CTA, contact form, few sections |
| `saas-product` | Software product marketing | free trial, pricing, product nav, signup |
| `ecommerce` | Product browsing + purchase | cart, checkout, shipping, Product JSON-LD |
| `content-seo` | Editorial/search surface | articles, guides, news, Article JSON-LD |
| `comparison-marketplace` | Comparison/review/affiliate surface | "best", "compare", rates, offers, many category groups |
| `nonprofit-donation` | Mission-led giving | donate, sponsor, fundraise, impact numbers |
| `scheduling-booking` | Booking/calendar product | schedule, availability, meeting, calendar |
| `forms-surveys` | Form/survey/quiz product | form builder, responses, survey, quiz |
| `community-membership` | Community/membership | join, members, forum, association |
| `portfolio-agency` | Agency/studio/portfolio | case studies, our work, services |
| `dashboard-app` | Logged-in product UI | dashboard, workspace, analytics, login |
| `education` | Course/school/learning | course, students, curriculum |
| `finance` | Banking/investing/insurance | invest, wealth, mortgage, credit, retirement |
| `media-publisher` | News/magazine/media brand | news, magazine, latest, journalism |
| `marketplace` | Multi-sided marketplace | buyers, sellers, providers, find a pro |
| `other` | Valid page outside the current model | extend the taxonomy instead of forcing it |

## 3. Conversion goals (`CONVERSION_GOALS`)

| ID | Meaning | Typical signals |
|---|---|---|
| `demo-booking` | Book a demo/call/consultation | "get a demo", "talk to sales", "book a call" |
| `free-trial` | Start a free trial/plan | "start free", "try it free", "free trial" |
| `signup` | Create an account | "sign up", "create account" |
| `purchase` | Buy/checkout | "add to cart", "buy now", "checkout" |
| `donation` | Donate/sponsor/fundraise | "donate", "give today", "sponsor" |
| `booking` | Schedule an appointment | "book a meeting", "availability" |
| `newsletter` | Subscribe to email | "subscribe", "newsletter" |
| `lead-magnet` | Download a guide/webinar/template | "download", "ebook", "webinar" |
| `contact-quote` | Contact or quote request | "contact us", "get a quote" |
| `application` | Apply for program/job/membership | "apply now" |
| `affiliate-referral` | Route to partner offers/applications | "compare", "rates", "offers", "apply" |
| `hybrid` | Multiple goals equally prominent | two or more top signals |
| `unknown` | No dominant goal in static evidence | JS-only/ambiguous page |

**Funnel stage** is derived: `awareness` (education/media/content), `consideration` (comparison, lead magnet, newsletter), `decision` (demo, trial, signup, purchase, donation, booking, contact, affiliate), `retention` (dashboard/app), `unknown`.

## 4. Multi-label rules

- `types` contains every type scoring ≥2, sorted by score; `primary_type` is the top one.
- A page can be `saas-product` + `lead-generation` (HubSpot, Userpilot).
- A page can be `comparison-marketplace` + `finance` + `content-seo` (NerdWallet).
- A page can be `nonprofit-donation` only (charity: water).
- If evidence is thin, `primary_type` may be `other` or `unknown` — that is honest; refine with an operator/agent override (`--type`, `--goal`) or a vision tier.
- Classification is **heuristic** with `confidence` high/medium/low and `reasons` (matched signals only, not page copy).

## 5. Querying

```bash
# Goal-family shortcut: all references that can inform a lead-generating page
python3 scripts/reference-scan.py list --work-ui .work.ui --family lead-generating

# Site genre only (e.g. B2B service pages)
python3 scripts/reference-scan.py list --work-ui .work.ui --type lead-generation

# Narrow by goal
python3 scripts/reference-scan.py list --work-ui .work.ui --goal demo-booking

# Both axes
python3 scripts/reference-scan.py list --work-ui .work.ui --type saas-product --goal free-trial
```

```text
@ui-reference-intake find - lead-generation
@ui-reference-intake find - lead-generation ; goal=demo-booking
```

The framework catalog (`resources/reference-sites.md`) is also tagged with both axes for discovery before a project scan.

## 6. Extending the taxonomy

When a new website category appears (e.g. `developer-tools`, `healthcare`, `travel`, `real-estate`, `ai-assistant`):

1. Add the id + one-line meaning to `REFERENCE_TYPES` or `CONVERSION_GOALS` in `scripts/reference-scan.py`.
2. Add a row to this file and to the catalog legend.
3. Add classification signals (CTA/nav/JSON-LD/word signals) — prefer a few strong signals over many weak ones.
4. Extend `classify_reference()` self-tests with a synthetic fixture for the new type.
5. Bump `TAXONOMY_VERSION`; re-scan references only if the new type changes their primary label.
6. Update the skill/guide tables if the change affects routing.

Do **not** encode a new type only in prose — the evidence must carry it, otherwise future retrieval is guesswork.

## 7. What this taxonomy is not

- It is not a claim about the site's business model or legal status.
- It does not authorize asset reuse; the originality rules still apply.
- It is not a substitute for project evidence — the catalog tags are discovery aids; scanned evidence is the source of truth.
