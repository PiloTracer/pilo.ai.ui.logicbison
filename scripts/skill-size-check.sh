#!/usr/bin/env bash
# skill-size-check.sh — Warn when ui-* skill.md bodies grow beyond maintainability budget.
# Catalogs belong in reference.md. Exit 0 always unless --strict (then exit 1 on breach).
# Default max body: 280 lines (exemptions: ui-director, ui-copy, deploy-*).
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
MAX="${UI_SKILL_MAX_LINES:-280}"
STRICT=0
[[ "${1:-}" = "--strict" ]] && { STRICT=1; shift; }

exempt() {
  case "$1" in
    ui-director|ui-copy|deploy-basic|deploy-files|deploy-repo) return 0 ;;
    *) return 1 ;;
  esac
}

breaches=0
while IFS= read -r f; do
  id="$(basename "$(dirname "$f")")"
  lines="$(wc -l < "$f" | tr -d ' ')"
  exempt "$id" && continue
  if [[ "$lines" -gt "$MAX" ]]; then
    echo "WARN: ${id}/skill.md ${lines} lines (budget ${MAX}) — move catalogs to reference.md"
    breaches=$((breaches + 1))
  fi
done < <(find "${ROOT}/skills" -maxdepth 2 -name skill.md | sort)

if [[ "$breaches" -eq 0 ]]; then
  echo "ok: skill-size-check (all non-exempt skills ≤ ${MAX} lines)"
  exit 0
fi
[[ "$STRICT" -eq 1 ]] && exit 1
exit 0