# Lifecycle waves 1–2 — complete (local, uncommitted)

**Verification:** `framework-verify` PASS · `ui-ship-check` PASS · `director-routing-selftest` 26 phrases PASS

## Wave 1
- `ui-ship-check.sh`, director routing selftest + TSV, brand-catalog verify, copy-label-scan
- `GOLDEN_PATHS.md`, `development-lifecycle.md`

## Wave 2
- `skill-size-check.sh`, `vision-checklist-verify.sh`, `vision-dry-run.yml`, vision-dry-run-ci.md
- `ui-eval.sh --baseline-save` / `--baseline-compare`, demo baseline JSON
- `examples/runnable/token-demo/` (static HTML + tokens.css)
- `@ui-director`: `ship` + `lifecycle` buckets, operator automation table, shortcuts, status/complete wiring
- `ui-process-router`: golden, lifecycle, ship buckets
- `SKILL_DEPENDENCIES` pre-ship cheat sheet row

## Still adopter/BYOK (honest)
- Live vision assertions, screenshot-to-code scaffold smoke, filled brand doc → live CATALOG walkthrough

**No commit** unless operator requests explicitly.