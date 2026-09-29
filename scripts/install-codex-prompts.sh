#!/usr/bin/env sh
# Install the 10x-designer workflows as Codex custom prompts.
#
# Codex only loads custom prompts from $CODEX_HOME/prompts (default
# ~/.codex/prompts), never from a plugin, so this copies each command file
# there as 10x-designer-<name>.md. Afterwards, restart Codex and run
# /prompts:10x-designer-start (or any other workflow, e.g.
# /prompts:10x-designer-crit my checkout flow).
#
# Usage: sh scripts/install-codex-prompts.sh   (from the plugin root)
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
dest="${CODEX_HOME:-$HOME/.codex}/prompts"
mkdir -p "$dest"
for f in "$here"/commands/*.md; do
  name=$(basename "$f" .md)
  cp "$f" "$dest/10x-designer-$name.md"
  echo "installed /prompts:10x-designer-$name"
done
echo "Done. Restart Codex to load the prompts."
