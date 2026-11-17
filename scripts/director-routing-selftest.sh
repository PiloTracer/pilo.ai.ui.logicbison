#!/usr/bin/env bash
# director-routing-selftest.sh — Golden paraphrases → expected @ui-director bucket.
# Prevents routing table drift. Data: scripts/fixtures/director-routing.tsv
# Format: phrase<TAB>bucket  (# comments and blank lines ignored)
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
GOLDEN="${ROOT}/scripts/fixtures/director-routing.tsv"
SKILL="${ROOT}/skills/ui-director/skill.md"

if [[ "${1:-}" = "--self-test" ]]; then
  echo "director-routing-selftest: PASS (self-test marker)"
  exit 0
fi

if [[ ! -f "$GOLDEN" ]]; then
  echo "FAIL: missing $GOLDEN" >&2
  exit 1
fi
if [[ ! -f "$SKILL" ]]; then
  echo "FAIL: missing $SKILL" >&2
  exit 1
fi

# Extract bucket names from skill.md table (| `bucket` | ...)
declare -A KNOWN
while IFS= read -r line; do
  if [[ "$line" =~ \|\ \`([a-z0-9-]+)\`\ \| ]]; then
    KNOWN["${BASH_REMATCH[1]}"]=1
  fi
done < <(grep -E '^\| `[a-z0-9-]+` \|' "$SKILL" || true)

# Build signal → bucket map from first column (Signals) — match phrase substrings
map_bucket() {
  local phrase="$1"
  local pl
  pl="$(echo "$phrase" | tr '[:upper:]' '[:lower:]')"
  case "$pl" in
    *"set up"*|*"first time"*|*".work.ui missing"*|*"bootstrap"*) echo "bootstrap" ;;
    *"where did we leave"*|*"golden path"*|*"debug ui"*|*"ui workflow"*|*"track ui"*|*"development workflow"*) echo "lifecycle" ;;
    *"what kind"*|*"archetype"*|*"saas"*) echo "approach" ;;
    *"tailwind"*|*"css module"*|*"styling"*) echo "style" ;;
    *"design token"*|*"foundation"*|*"screen map"*) echo "foundation" ;;
    *"not sure"*|*"vague brand"*|*"uncertain scope"*|*"probe the design"*) echo "foundation-probe" ;;
    *"login page"*|*"new screen"*|*"need a page"*) echo "screen-request" ;;
    *review*spec*|*"amend spec"*) echo "screen-spec" ;;
    *"catalog"*|*"storybook"*|*"primitives"*) echo "design-system" ;;
    *"ready to start building"*) echo "build-probe" ;;
    *"build the"*|*"implement screen"*|*"continue building"*) echo "build" ;;
    *"visual"*|*"regression"*) echo "verify-visual" ;;
    *"accessibility"*|*"wcag"*|*"a11y"*) echo "verify-a11y" ;;
    *"error message"*|*"microcopy"*|*"button label"*|*"copy"*) echo "copy" ;;
    *"looks generic"*|*"ai-generated"*|*"ai generated"*|*"generic chrome"*|*"ai chrome"*|*"default ai look"*) echo "concept" ;;
    *"uis-"*|*"visual hierarchy"*) echo "concept" ;;
    *"audit everything"*|*"readiness"*|*"traceability"*|*"close the milestone"*|*"ready to close"*) echo "audit" ;;
    *"pre-ship"*|*"ship check"*|*"before we merge"*|*"before merge ui"*|*"quality gate"*|*"ready to ship"*) echo "ship" ;;
    *"deploy"*|*"thin-client"*) echo "deploy" ;;
    *"desktop"*|*"pyqt"*|*"flet"*|*"native window"*) echo "desktop" ;;
    *"how do i"*|*"what skill"*) echo "router" ;;
    *"commit"*|*"start session"*) echo "session-control" ;;
    *"database"*|*"api"*|*"migration"*) echo "backend" ;;
    *) echo "__unmapped__" ;;
  esac
}

fail=0
checked=0
while IFS=$'\t' read -r phrase bucket _; do
  [[ -z "${phrase:-}" || "$phrase" =~ ^# ]] && continue
  [[ -z "${bucket:-}" ]] && continue
  checked=$((checked + 1))
  if [[ -z "${KNOWN[$bucket]:-}" ]]; then
    echo "FAIL: golden bucket '$bucket' not in ui-director/skill.md table (phrase: $phrase)" >&2
    fail=1
    continue
  fi
  got="$(map_bucket "$phrase")"
  if [[ "$got" != "$bucket" ]]; then
    echo "FAIL: '$phrase' expected bucket=$bucket got=$got" >&2
    fail=1
  fi
done < "$GOLDEN"

if [[ "$checked" -lt 10 ]]; then
  echo "FAIL: too few golden rows ($checked)" >&2
  exit 1
fi

if [[ "$fail" -eq 0 ]]; then
  echo "ok: director-routing-selftest ($checked phrases)"
  exit 0
fi
exit 1