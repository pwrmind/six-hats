#!/usr/bin/env bash
set -euo pipefail

TARGET_DIR="${1:-.}"
TARGET_SKILLS_DIR="$TARGET_DIR/.gigacode/skills"

if [ ! -d "$TARGET_SKILLS_DIR" ]; then
  echo "Папка $TARGET_SKILLS_DIR не найдена."
  exit 0
fi

for skill in blue-hat white-hat yellow-hat black-hat green-hat red-hat; do
  rm -rf "$TARGET_SKILLS_DIR/$skill"
  echo "Удалён: $skill"
done

echo "Готово."