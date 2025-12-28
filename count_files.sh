#!/bin/bash

TARGET_DIR="/etc"

if [ ! -d "$TARGET_DIR" ]; then
    echo "Помилка: директорія $TARGET_DIR не існує"
    exit 1
fi

count_items() {
    local dir=$1
    local type=$2
    find "$dir" -maxdepth 1 -type "$type" 2>/dev/null | wc -l
}


files=$(count_items "$TARGET_DIR" "f")
dirs=$(count_items "$TARGET_DIR" "d")
links=$(count_items "$TARGET_DIR" "l")

echo "Статистика директорії $TARGET_DIR:"
echo "  Звичайні файли: $files"
echo "  Директорії: $((dirs - 1))"
echo "  Символічні посилання: $links"
echo "  -------------------------"
echo "  Разом: $((files + (dirs - 1) + links))"

exit 0

