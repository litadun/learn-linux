#!/usr/bin/env bash
set -euo pipefail

# Minimal reproducible script:
# - deterministic output
# - records environment metadata

OUTDIR="${1:-experiments/001-hello-repro/out}"
mkdir -p "$OUTDIR"

echo "== hello_repro ==" | tee "$OUTDIR/output.txt"
echo "date: $(date -Iseconds)" | tee -a "$OUTDIR/output.txt"
echo "user: $(whoami)" | tee -a "$OUTDIR/output.txt"
echo "pwd:  $(pwd)" | tee -a "$OUTDIR/output.txt"
echo "uname: $(uname -a)" | tee -a "$OUTDIR/output.txt"

echo "" | tee -a "$OUTDIR/output.txt"
echo "git:" | tee -a "$OUTDIR/output.txt"
git rev-parse --short HEAD 2>/dev/null | sed 's/^/commit: /' | tee -a "$OUTDIR/output.txt" || echo "commit: (not a git repo?)" | tee -a "$OUTDIR/output.txt"
git status --porcelain 2>/dev/null | sed 's/^/status: /' | tee -a "$OUTDIR/output.txt" || true

echo "" | tee -a "$OUTDIR/output.txt"
echo "result: reproducibility scaffold is working." | tee -a "$OUTDIR/output.txt"
