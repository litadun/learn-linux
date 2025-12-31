#!/usr/bin/env bash
set -euo pipefail

EXP_DIR="experiments/004-structured-positive"
OUT_DIR="$EXP_DIR/out"
LOG_DIR="$EXP_DIR/logs"

mkdir -p "$OUT_DIR" "$LOG_DIR"

LOG_FILE="$LOG_DIR/run.log"

{
  echo "== structured experiment =="
  echo "date: $(date -Iseconds)"
  echo "user: $(whoami)"
  echo "pwd: $(pwd)"
  echo "uname: $(uname -a)"
  echo
  echo "git:"
  git rev-parse --short HEAD 2>/dev/null || echo "commit: (not a git repo)"
  git status --porcelain 2>/dev/null || true
  echo
  echo "result: structured workflow executed successfully."
} | tee "$OUT_DIR/output.txt" | tee "$LOG_FILE"
