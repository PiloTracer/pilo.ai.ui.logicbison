#!/usr/bin/env bash
# UI Design OS ai-chrome-lint — machine-check the high-precision half of
# resources/ai-ui-quality.md. Flags default AI chrome that token-lint cannot see:
# purple/violet/fuchsia gradient utilities, matching glow shadows, a hardcoded
# Inter family, and stock marketing phrases.
#
# Layout classes (three identical cards, everything centered) stay in UIS-06.
# A line opts out with a trailing `ai-chrome-ignore` and a reason.
# Token files passed with --tokens may define the brand font or a named gradient.
#
# Usage:
#   bash scripts/ai-chrome-lint.sh [--tokens FILE]... [PATH ...]
#   bash scripts/ai-chrome-lint.sh --self-test
#
# Exit 0 = clean (or nothing to scan). Exit 1 = violation(s) or a failed self-test.
set -euo pipefail

note() { echo "==> $*"; }

if [[ "${1:-}" == "--self-test" ]]; then
  tmpd="$(mktemp -d)"
  trap 'rm -rf "$tmpd"' EXIT
  printf 'export function B(){ return <button className="bg-[var(--color-accent)]">Save changes</button>; }\n' > "${tmpd}/clean.tsx"
  printf 'export function H(){ return <section className="bg-gradient-to-r from-purple-500 to-pink-500" />; }\n' > "${tmpd}/grad.tsx"
  printf 'export function C(){ return <h1>Unlock your potential</h1>; }\n' > "${tmpd}/copy.tsx"
  printf 'export function S(){ return <div className="shadow-purple-500/40" />; }\n' > "${tmpd}/shadow.tsx"
  printf 'export function F(){ return <p style={{ fontFamily: "Inter, sans-serif" }}>Hi</p>; }\n' > "${tmpd}/font.tsx"
  printf 'export function I(){ return <section className="bg-gradient-to-r from-purple-500 to-pink-500" />; } // ai-chrome-ignore brand study\n' > "${tmpd}/ignore.tsx"
  printf 'export function T(){ return <p style={{ fontFamily: "Inter, sans-serif" }}>Token</p>; }\n' > "${tmpd}/tokens.css"
  fail=0
  check() { # <expect-exit> <label> [args...]
    local expect="$1" label="$2"
    shift 2
    set +e
    bash "$0" "$@" >/dev/null 2>&1
    local got=$?
    set -e
    if [[ "$got" -eq "$expect" ]]; then
      echo "ok: ${label}"
    else
      echo "FAIL: ${label} (expected exit ${expect}, got ${got})"
      fail=1
    fi
  }
  check 0 "clean component passes" "${tmpd}/clean.tsx"
  check 1 "purple gradient fails" "${tmpd}/grad.tsx"
  check 1 "stock marketing line fails" "${tmpd}/copy.tsx"
  check 1 "glow shadow fails" "${tmpd}/shadow.tsx"
  check 1 "hardcoded Inter fails" "${tmpd}/font.tsx"
  check 0 "ai-chrome-ignore passes" "${tmpd}/ignore.tsx"
  check 0 "token file may name Inter" --tokens "${tmpd}/tokens.css" "${tmpd}/tokens.css"
  if [[ "$fail" -ne 0 ]]; then
    echo "ai-chrome-lint self-test: FAIL"
    exit 1
  fi
  echo "ai-chrome-lint self-test: PASS"
  exit 0
fi

tokens=()
paths=()
if [[ -n "${UI_TOKENS_FILE:-}" ]]; then
  for t in ${UI_TOKENS_FILE}; do tokens+=("$t"); done
fi
while [[ $# -gt 0 ]]; do
  case "$1" in
    --tokens) shift; [[ $# -gt 0 ]] && tokens+=("$1") ;;
    --tokens=*) tokens+=("${1#--tokens=}") ;;
    -h|--help) grep -E '^#( |$)' "$0" | sed 's/^# \{0,1\}//'; exit 0 ;;
    *) paths+=("$1") ;;
  esac
  shift
done
if [[ ${#paths[@]} -eq 0 && -n "${UI_LINT_PATHS:-}" ]]; then
  for p in ${UI_LINT_PATHS}; do paths+=("$p"); done
fi
if [[ ${#paths[@]} -eq 0 ]]; then
  note "ai-chrome-lint: no component path given (set args or \$UI_LINT_PATHS) - nothing to check"
  exit 0
fi

declare -A is_token=()
for t in "${tokens[@]+"${tokens[@]}"}"; do
  [[ -z "$t" ]] && continue
  rp="$(realpath -m "$t" 2>/dev/null || echo "$t")"
  is_token["$rp"]=1
done

exts_re='\.(tsx?|jsx?|mjs|cjs|vue|svelte|css|scss|sass|less|styl|py)$'
gradient_re='bg-gradient-to-[[:alnum:]-]*'
hue_re='(from|via|to)-(purple|violet|fuchsia)-'
glow_re='shadow-(purple|violet|fuchsia)-'
inter_re="font-family:[^;\"']*Inter|font-\\[['\"]Inter|font-\\['Inter'\\]|[\"']Inter,|fontFamily:\\s*[\"']Inter"
copy_re='lorem ipsum|unlock your potential|seamless experience|cutting-edge|next-gen|revolutionize your|welcome to your dashboard|your all-in-one|supercharge your|elevate your|harness the power'

candidates=()
for p in "${paths[@]}"; do
  if [[ -d "$p" ]]; then
    while IFS= read -r -d '' f; do candidates+=("$f"); done \
      < <(find "$p" -type f -regextype posix-extended -iregex ".*${exts_re}" \
            -not -path '*/node_modules/*' -not -path '*/.git/*' -not -path '*/dist/*' \
            -not -path '*/build/*' -print0 2>/dev/null || true)
  elif [[ -f "$p" ]]; then
    candidates+=("$p")
  fi
done

violations=0
scanned=0
for f in "${candidates[@]+"${candidates[@]}"}"; do
  [[ -z "$f" ]] && continue
  rp="$(realpath -m "$f" 2>/dev/null || echo "$f")"
  [[ -n "${is_token[$rp]:-}" ]] && continue
  scanned=$((scanned + 1))
  while IFS= read -r line || [[ -n "$line" ]]; do
    [[ "$line" == *ai-chrome-ignore* ]] && continue
    num="${line%%:*}"
    body="${line#*:}"
    hit=""
    if [[ "$body" =~ $gradient_re && "$body" =~ $hue_re ]]; then
      hit="purple-gradient-hero"
    elif [[ "$body" =~ $glow_re ]]; then
      hit="colored-glow-shadow"
    elif [[ "$body" =~ $inter_re ]]; then
      hit="inter-hardcoded"
    elif echo "$body" | grep -qiE "$copy_re"; then
      hit="placeholder-marketing"
    fi
    if [[ -n "$hit" ]]; then
      echo "    ${hit}: ${f}:${num}:${body}"
      violations=$((violations + 1))
    fi
  done < <(grep -nE ".+" "$f" 2>/dev/null || true)
done

if [[ "$violations" -gt 0 ]]; then
  echo ""
  echo "ai-chrome-lint: ${violations} generic-chrome literal(s) — see resources/ai-ui-quality.md; waive a line with ai-chrome-ignore and a reason" >&2
  exit 1
fi
echo "ai-chrome-lint: clean (${scanned} file(s))"
exit 0
