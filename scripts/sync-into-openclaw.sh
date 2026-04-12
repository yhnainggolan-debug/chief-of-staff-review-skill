#!/usr/bin/env bash
set -euo pipefail

if [[ $# -ne 1 ]]; then
  echo "Usage: $0 /path/to/openclaw-workspace"
  exit 1
fi

TARGET_WORKSPACE="$1"
TARGET_SKILLS_DIR="$TARGET_WORKSPACE/skills"
SOURCE_DIR="$(cd "$(dirname "$0")/.." && pwd)/skill/chief-of-staff-review"
TARGET_DIR="$TARGET_SKILLS_DIR/chief-of-staff-review"

mkdir -p "$TARGET_SKILLS_DIR"
rm -rf "$TARGET_DIR"
cp -R "$SOURCE_DIR" "$TARGET_DIR"

echo "Installed chief-of-staff-review into: $TARGET_DIR"
