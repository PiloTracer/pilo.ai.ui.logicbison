# Vision dry-run CI (static)

**Purpose:** Catch vision-tier **documentation drift** without a browser or API keys. Live pixels still require operator authorization (§8.2) and BYOK.

## Framework repo (default)

```bash
bash scripts/vision-checklist-verify.sh
```

Runs in `framework-verify.sh` and optional workflow `.github/workflows/vision-dry-run.yml`.

## Adopter CI (optional)

1. Static: `vision-checklist-verify.sh` + `token-lint` + `ui-ship-check.sh`
2. With Playwright in **your** pipeline: screenshot → histogram JSON → `ui-eval.sh --baseline-compare <screen> <cand.json>`
3. Vision assertions: only after explicit §8.2 authorization; use catalog in `ui-visual-verify/reference.md`