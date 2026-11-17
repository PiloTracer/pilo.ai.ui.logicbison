#!/usr/bin/env bash
# vision-checklist-verify.sh — Static dry-run for Phase 1 vision tier (no browser).
# Ensures assertion catalog has layout/contrast/state/behavior groups and opt-in policy in skill.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
REF="${ROOT}/skills/ui-visual-verify/reference.md"
SKILL="${ROOT}/skills/ui-visual-verify/skill.md"

for f in "$REF" "$SKILL"; do
  [[ -f "$f" ]] || { echo "FAIL: missing $f" >&2; exit 1; }
done

for grp in Layout "Color / contrast" State Behavior; do
  grep -qF "## ${grp}" "$REF" || { echo "FAIL: reference.md missing ## ${grp}" >&2; exit 1; }
done

grep -q 'vision - <route>' "$SKILL" || { echo "FAIL: skill missing vision mode" >&2; exit 1; }
grep -q '§8.2' "$SKILL" || { echo "FAIL: skill missing browser opt-in policy" >&2; exit 1; }

echo "ok: vision-checklist-verify (catalog groups + opt-in policy)"
exit 0