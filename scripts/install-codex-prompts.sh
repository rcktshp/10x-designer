#!/usr/bin/env sh
# Install the 10xdesigner workflows as Codex custom prompts.
#
# Codex only loads custom prompts from $CODEX_HOME/prompts (default
# ~/.codex/prompts), never from a plugin, so this copies each command file
# there as 10xdesigner-<name>.md. Afterwards, restart Codex and run
# /prompts:10xdesigner-start (or any other workflow, e.g.
# /prompts:10xdesigner-crit my checkout flow).
#
# Usage: sh scripts/install-codex-prompts.sh   (from the plugin root)
set -eu
here=$(cd "$(dirname "$0")/.." && pwd)
dest="${CODEX_HOME:-$HOME/.codex}/prompts"
mkdir -p "$dest"
for f in "$here"/commands/*.md; do
  name=$(basename "$f" .md)
  cp "$f" "$dest/10xdesigner-$name.md"
  echo "installed /prompts:10xdesigner-$name"
done
echo "Done. Restart Codex to load the prompts."
