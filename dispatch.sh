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

# Machine-specific setup, such as exporting an API key, lives outside the repo
# so that personal paths and credentials are never committed. See
# docs/customisation.md.
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
for local_config in \
  "${EDITOR_DISPATCH_LOCAL:-}" \
  "$script_dir/dispatch.local.sh" \
  "$HOME/.config/editor/dispatch.local.sh"; do
  if [[ -n "$local_config" && -f "$local_config" ]]; then
    source "$local_config"
    break
  fi
done

case "$model" in
  gpt)
    codex exec --sandbox read-only -m gpt-5.6-sol - < "$prompt_file"
    ;;
  luna)
    codex exec --sandbox read-only -m gpt-5.6-luna - < "$prompt_file"
    ;;
  o3)
    codex exec --sandbox read-only -m o3 - < "$prompt_file"
    ;;
  *)
    echo "Unknown model: $model" >&2
    echo "Available: gpt, luna, o3" >&2
    exit 1
    ;;
esac
