#!/usr/bin/env bash

# Only run if called as "sort"
if [[ $(basename "$0") != "sort" ]]; then
    echo "This script only runs as 'sort'"
    exit 1
fi

# Load default config
source config.conf

# Parse CLI arguments
while [[ $# -gt 0 ]]; do
    case "$1" in
        --setsource)
            SOURCE="$2"
            shift 2
            ;;
        --setdest)
            DEST="$2"
            shift 2
            ;;
        --help)
            echo "Usage: sort [--setsource SOURCE] [--setdest DEST]"
            exit 0
            ;;
        *)
            echo "Unknown option: $1"
            exit 1
            ;;
    esac
done

echo "📁 Source folder: $SOURCE"
echo "📂 Destination folder: $DEST"

# Ensure destination exists
mkdir -p "$DEST"

# Load categories from extensions.json
categories=$(jq -r 'keys[]' extensions.json)
for cat in $categories; do
    mkdir -p "$DEST/$cat"
done
mkdir -p "$DEST/others"

# Sort files
for file in "$SOURCE"/*; do
    if [[ -f "$file" ]]; then
        moved=false
        filext=$(basename "$file" | awk -F. '{print tolower($NF)}')

        for cat in $categories; do
            exts=$(jq -r --arg cat "$cat" '.[$cat][]' extensions.json)
            for ext in $exts; do
                if [[ "$ext" == "$filext" ]]; then
                    mv "$file" "$DEST/$cat/"
                    moved=true
                    break 2
                fi
            done
        done

        if [[ $moved == false ]]; then
            mv "$file" "$DEST/others/"
        fi
    fi
done

echo "✅ Files sorted!"

