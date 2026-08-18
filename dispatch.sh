#!/usr/bin/env bash
set -euo pipefail

# Dispatch a prompt file to an external model.
# Usage: dispatch.sh <model> <prompt-file>

model="${1:-gpt}"
prompt_file="${2:?Usage: dispatch.sh <model> <prompt-file>}"

if [[ ! -f "$prompt_file" ]]; then
  echo "Prompt file not found: $prompt_file" >&2
  exit 1
fi

if ! command -v codex &>/dev/null; then
  echo "codex not found. Install it or use model 'claude'." >&2
  exit 1
fi

# Source the PMCK gateway key if available and AI_GATEWAY_API_KEY is not set.
if [[ -z "${AI_GATEWAY_API_KEY:-}" ]]; then
  pmck_script="$HOME/repos/github/dwmkerr/dwmkerr/pmck/pmck.sh"
  if [[ -f "$pmck_script" ]]; then
    source "$pmck_script"
    export AI_GATEWAY_API_KEY="$PMCK_KEY"
  fi
fi

case "$model" in
  gpt)
    codex exec --sandbox read-only -m gpt-5.6-sol - < "$prompt_file"
    ;;
  o3)
    codex exec --sandbox read-only -m o3 - < "$prompt_file"
    ;;
  *)
    echo "Unknown model: $model" >&2
    echo "Available: gpt, o3" >&2
    exit 1
    ;;
esac
