#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-.}"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPO_ROOT="$(cd "$SCRIPT_DIR/.." && pwd)"
SKILLS_SRC="$REPO_ROOT/.gigacode/skills"
TARGET_SKILLS_DIR="$TARGET_DIR/.gigacode/skills"

if [ ! -d "$SKILLS_SRC" ]; then
  echo "Ошибка: не найдена папка $SKILLS_SRC"
  exit 1
fi

mkdir -p "$TARGET_SKILLS_DIR"
cp -R "$SKILLS_SRC"/* "$TARGET_SKILLS_DIR"/

echo "Навыки установлены в: $TARGET_SKILLS_DIR"