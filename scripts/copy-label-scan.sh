#!/usr/bin/env bash
# copy-label-scan.sh — WCAG 3.2.4 directional check: same action verb used inconsistently
# across screen SPECs under .work.ui/screens/ (markdown tables and **Label:** lines).
# Advisory for ui-copy audit; flags only — does not fail ship unless duplicates are severe.
#
# Usage: copy-label-scan.sh [path-to-screens-dir]
# Exit 0 = no conflicts; exit 1 = conflicting labels for same normalized action key.
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="${1:-${ROOT}/.work.ui/screens}"

if [[ ! -d "$TARGET" ]]; then
  echo "copy-label-scan: skip (no directory $TARGET)"
  exit 0
fi

tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

# Collect | Label | … | or **Primary action:** / button text patterns (heuristic)
grep -rhoE '\|[[:space:]]*[^|]{2,40}[[:space:]]*\|[[:space:]]*(Button|Action|CTA|Submit|Save|Cancel|Delete|Confirm)[^|]*\|' \
  -r "$TARGET" --include='*.md' 2>/dev/null | sed 's/|//g' | awk '{$1=$1};1' >> "$tmp" || true

grep -rhoE '(Primary action|Button label|CTA):\s*`[^`]+`' "$TARGET" --include='*.md' 2>/dev/null \
  | sed 's/.*`\([^`]*\)`.*/\1/' >> "$tmp" || true

if [[ ! -s "$tmp" ]]; then
  echo "ok: copy-label-scan (no label rows found — nothing to compare)"
  exit 0
fi

# Normalize: lowercase, strip punctuation
declare -A SEEN
conflicts=0
while IFS= read -r label; do
  [[ -z "$label" ]] && continue
  norm="$(echo "$label" | tr '[:upper:]' '[:lower:]' | sed 's/[^a-z0-9 ]//g' | awk '{$1=$1};1')"
  key="$(echo "$norm" | awk '{print $NF}')" # last word as action verb proxy
  [[ -z "$key" || ${#key} -lt 3 ]] && continue
  prev="${SEEN[$key]:-}"
  if [[ -n "$prev" && "$prev" != "$norm" ]]; then
    echo "LABEL CONFLICT: action '$key' — '$prev' vs '$norm'"
    conflicts=$((conflicts + 1))
  else
    SEEN["$key"]="$norm"
  fi
done < "$tmp"

if [[ "$conflicts" -gt 0 ]]; then
  echo "copy-label-scan: FAIL ($conflicts potential WCAG 3.2.4 inconsistencies)" >&2
  exit 1
fi
echo "ok: copy-label-scan (no cross-screen verb conflicts detected)"
exit 0