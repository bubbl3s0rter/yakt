#!/usr/bin/env bash
# Usage: ./new-project.sh my-project-name
# Creates a new project from this template next to this directory.
set -euo pipefail

NAME="${1:?Usage: $0 <project-name>}"
TEMPLATE_DIR="$(cd "$(dirname "$0")" && pwd)"
TARGET="$(dirname "$TEMPLATE_DIR")/$NAME"

if [[ -e "$TARGET" ]]; then
  echo "Error: $TARGET already exists" >&2
  exit 1
fi

cp -r "$TEMPLATE_DIR" "$TARGET"
# Remove the script itself from the new project
rm -f "$TARGET/new-project.sh"

# Init git
cd "$TARGET"
git init -q
git add .
git commit -q -m "chore: init from solo-template"

echo "Created $TARGET"
echo ""
echo "Next steps:"
echo "  cd $TARGET"
echo "  direnv allow           # or: nix develop"
echo "  # Edit CLAUDE.md, docs/spec.md, and Makefile for your stack"
echo "  claude                 # start Claude Code"
