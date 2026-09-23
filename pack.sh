#!/bin/bash

set -e
cd "$(dirname "$(readlink -f "$0")")"

OUTPUT="UPDATE-chiron-kernel.zip"
SELF="$(basename "$0")"

rm -f "$OUTPUT"
zip -r9 "$OUTPUT" . \
    -x  ".git" \
        ".git/*" \
        ".github" \
        ".github/*" \
        ".gitignore" \
        "README.md" \
        "*placeholder" \
        "$SELF" \
        "*.zip"

echo "打包完成: $(pwd)/$OUTPUT"

