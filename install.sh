#!/usr/bin/env bash
# Symlink everything under home/ into $HOME (backs up existing files to *.bak).
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)/home"
cd "$DIR"
find . -type f | sed 's|^\./||' | while read -r f; do
  target="$HOME/$f"
  mkdir -p "$(dirname "$target")"
  if [ -e "$target" ] && [ ! -L "$target" ]; then mv "$target" "$target.bak"; fi
  ln -sfn "$DIR/$f" "$target"
  echo "linked ~/$f"
done
echo
echo "Create untracked local files for secrets/machine settings if needed:"
echo "  ~/.zshrc.local      (sourced by .zshrc)"
echo "  ~/.gitconfig.local  (included by .gitconfig)"
