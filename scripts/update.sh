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

echo "Updating Effect Learning Environment repositories..."
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
    
    if [ ! -d "$folder_name" ]; then
        echo "Repository $folder_name not found. Run ./scripts/setup.sh first."
        continue
    fi
    
    echo "Updating $folder_name..."
    
    if (cd "$folder_name" && git pull origin "$branch"); then
        echo "  ✓ Successfully updated $folder_name"
    else
        echo "  ✗ Failed to update $folder_name"
    fi
    echo
done

echo "🎉 Update complete!"