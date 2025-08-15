#!/bin/bash

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
ROOT_DIR="$(dirname "$SCRIPT_DIR")"
REPOS_FILE="$SCRIPT_DIR/repos.json"

if ! command -v jq &> /dev/null; then
    echo "Error: jq is required but not installed."
    echo "Please install jq: https://stedolan.github.io/jq/download/"
    exit 1
fi

echo "Setting up Effect Learning Environment..."
echo "This will clone repositories with --depth=50 for faster downloads"
echo

cd "$ROOT_DIR"

# Parse repos.json and process each repository
jq -r '.repositories[] | if type == "string" then {url: ., branch: "main"} else . end | "\(.url)|\(.branch // "main")"' "$REPOS_FILE" | while IFS='|' read -r url branch; do
    # Extract org and repo name from URL for folder naming
    # Remove .git suffix and split by /
    clean_url=$(echo "$url" | sed 's/\.git$//')
    org=$(echo "$clean_url" | sed 's|.*github\.com/||' | cut -d'/' -f1 | tr '[:upper:]' '[:lower:]')
    repo=$(echo "$clean_url" | sed 's|.*github\.com/||' | cut -d'/' -f2 | tr '[:upper:]' '[:lower:]')
    folder_name="${org}-${repo}"

    echo "Cloning $folder_name (branch: $branch)..."

    if [ -d "$folder_name" ]; then
        echo "  Directory $folder_name already exists, skipping..."
        continue
    fi

    if git clone --depth=50 --single-branch --branch "$branch" "$url" "$folder_name"; then
        echo "  ✓ Successfully cloned $folder_name"
    else
        echo "  ✗ Failed to clone $folder_name"
        exit 1
    fi
    echo
done

echo "🎉 Setup complete! All repositories have been cloned."
echo
echo "To update repositories later, run: ./scripts/update.sh"
echo "To get started, see the CLAUDE.md file for documentation guidance."
