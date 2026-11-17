#!/usr/bin/env bash
# ui-ship-check.sh — Pre-ship / milestone UI quality gate for adopter repos.
# Runs the same verifiers @ui-component-build complete expects, plus routing smoke.
# Framework repo: runs framework-tier checks (no app token-lint without paths).
#
# Usage:
#   bash scripts/ui-ship-check.sh           # standard (adopter + framework)
#   bash scripts/ui-ship-check.sh --quick   # skip bootstrap-test (inside framework-verify)
#   bash scripts/ui-ship-check.sh --help
#
# Exit 0 = all required checks passed; non-zero = first failure reported.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
QUICK=0

while [[ $# -gt 0 ]]; do
  case "$1" in
    --quick) QUICK=1 ;;
    -h|--help)
      grep -E '^#( |$)' "$0" | sed 's/^# \{0,1\}//'
      exit 0
      ;;
    *) echo "unknown arg: $1" >&2; exit 2 ;;
  esac
  shift
done

note() { echo "==> $*"; }
fail=0
run() {
  local name="$1"; shift
  note "$name"
  if "$@"; then
    echo "    PASS: $name"
  else
    echo "    FAIL: $name" >&2
    fail=1
  fi
}

# 1 — Framework structure (includes skill count, license scan, token self-tests)
if [[ "$QUICK" -eq 1 ]]; then
  run "director-routing selftest" bash "${ROOT}/scripts/director-routing-selftest.sh"
  run "brand template sections" bash "${ROOT}/scripts/brand-catalog-verify.sh"
else
  run "framework-verify" bash "${ROOT}/scripts/framework-verify.sh"
fi

# 2 — Process / honesty gates (adopter .work.ui when present)
NEXT="${ROOT}/.work.ui/plans/NEXT_UI.md"
if [[ -f "$NEXT" ]]; then
  run "gate-verify (NEXT_UI done tasks)" bash "${ROOT}/scripts/gate-verify.sh" "$NEXT"
else
  note "gate-verify: skip (no NEXT_UI.md)"
fi

if [[ -f "${ROOT}/.work.ui/plans/foundation/PROBE_LEDGER.md" ]]; then
  run "readiness-verify" bash "${ROOT}/scripts/readiness-verify.sh"
else
  note "readiness-verify: skip (no foundation PROBE_LEDGER)"
fi

MAP="$(find "${ROOT}/.work.ui/plans/foundation" -name '*-04-screen-map.md' 2>/dev/null | head -1)"
if [[ -n "$MAP" && -f "$MAP" ]]; then
  run "traceability-verify" bash "${ROOT}/scripts/traceability-verify.sh" "$MAP"
else
  note "traceability-verify: skip (no screen-map)"
fi

# 3 — Token contract (demo or adopter)
TOKENS="${ROOT}/.work.ui/design-system/tokens.json"
if [[ -f "$TOKENS" ]]; then
  run "token-schema (tokens.json)" bash "${ROOT}/scripts/token-schema-verify.sh" "$TOKENS"
fi

if [[ -n "${UI_LINT_PATHS:-}" ]]; then
  run "token-lint (UI_LINT_PATHS)" bash "${ROOT}/scripts/token-lint.sh"
  run "ai-chrome-lint (UI_LINT_PATHS)" bash "${ROOT}/scripts/ai-chrome-lint.sh"
fi

# 4 — Copy consistency (optional when screens exist)
if [[ -d "${ROOT}/.work.ui/screens" ]]; then
  run "copy-label-scan" bash "${ROOT}/scripts/copy-label-scan.sh" "${ROOT}/.work.ui/screens"
else
  note "copy-label-scan: skip (no screens/)"
fi

echo ""
if [[ "$fail" -eq 0 ]]; then
  echo "ui-ship-check: PASS"
  exit 0
fi
echo "ui-ship-check: FAIL — fix failures above; @ui-plan-verify audit for routing" >&2
exit 1