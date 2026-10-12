#!/bin/bash
# En sesiones en la nube, enlaza ~/.claude/instagram a la carpeta instagram/ del
# repo, para que las skills lean voice.md y lo que escriban (plan.md, log.md,
# swipe.md) quede en el repo y no se pierda al cerrar la sesión.
set -euo pipefail

if [ "${CLAUDE_CODE_REMOTE:-}" != "true" ]; then
  exit 0
fi

repo_dir="$CLAUDE_PROJECT_DIR/instagram"
link="$HOME/.claude/instagram"

mkdir -p "$repo_dir" "$HOME/.claude"
if [ -L "$link" ]; then
  exit 0
fi
if [ -d "$link" ]; then
  cp -rn "$link/." "$repo_dir/"
  rm -rf "$link"
fi
ln -s "$repo_dir" "$link"
