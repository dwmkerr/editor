#!/usr/bin/env bash
# Copies shared files from references/ into the skills that need them.
# npx skills installs each skill folder on its own and skips symlinks that point
# outside it, so a skill can only read references that live inside its folder.
set -euo pipefail

root="$(cd "$(dirname "$0")/.." && pwd)"

# Each entry is <skill>:<file in references/>.
shared=(
  "denoise:obnoxious-humility.md"
  "denoise:cute-labels.md"
)

for entry in "${shared[@]}"; do
  skill="${entry%%:*}"
  file="${entry#*:}"
  src="${root}/references/${file}"
  dest="${root}/skills/${skill}/references/${file}"
  mkdir -p "$(dirname "${dest}")"
  {
    printf '<!-- Copied from references/%s by scripts/sync-refs.sh. Edit the source, then run make refs. -->\n\n' "${file}"
    cat "${src}"
  } > "${dest}"
done
