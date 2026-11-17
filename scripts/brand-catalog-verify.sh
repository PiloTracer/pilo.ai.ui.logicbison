#!/usr/bin/env bash
# brand-catalog-verify.sh — Static proof that brand template is CATALOG-ready (Phase 3).
# Checks 9 numbered sections exist and design-system skill references brand doc.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TEMPLATE="${ROOT}/templates/work.ui/plans/foundation/03-design-system.brand.template.md"
DS_SKILL="${ROOT}/skills/ui-design-system/skill.md"

if [[ ! -f "$TEMPLATE" ]]; then
  echo "FAIL: missing brand template" >&2
  exit 1
fi

sections="$(grep -cE '^## [0-9]+\. ' "$TEMPLATE" || true)"
if [[ "$sections" -ne 9 ]]; then
  echo "FAIL: brand template expected 9 sections, got ${sections}" >&2
  exit 1
fi

if ! grep -q 'design-system.brand' "$DS_SKILL"; then
  echo "FAIL: ui-design-system must reference brand doc for CATALOG seed" >&2
  exit 1
fi

echo "ok: brand-catalog-verify (9 sections, design-system wired)"
exit 0