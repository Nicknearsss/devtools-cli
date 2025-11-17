#!/bin/bash

# Smart Git Clone
# Usage: ./smart-git-clone.sh <repo-url>

REPO_URL=$1

if [ -z "$REPO_URL" ]; then
  echo "Usage: $0 <repo-url>"
  exit 1
fi

read -p "Shallow clone? (y/n): " SHALLOW
CLONE_DEPTH=""
if [ "$SHALLOW" == "y" ]; then
  CLONE_DEPTH="--depth 1"
fi

echo "Cloning repo..."
git clone $CLONE_DEPTH "$REPO_URL"

# Extract repo name
REPO_NAME=$(basename "$REPO_URL" .git)
cd "$REPO_NAME" || exit

# Auto install dependencies
if [ -f package-lock.json ]; then
  echo "Installing dependencies with npm..."
  npm install
elif [ -f yarn.lock ]; then
  echo "Installing dependencies with yarn..."
  yarn install
fi

# Offer to run dev server
if [ -f package.json ]; then
  read -p "Run dev server? (y/n): " RUN_DEV
  if [ "$RUN_DEV" == "y" ]; then
    if command -v npm >/dev/null 2>&1; then
      npm run dev
    elif command -v yarn >/dev/null 2>&1; then
      yarn dev
    fi
  fi
fi

# GitHub API info
read -p "Fetch GitHub info? (y/n): " FETCH_INFO
if [ "$FETCH_INFO" == "y" ]; then
  API_URL=$(echo "$REPO_URL" | sed 's|https://github.com/|https://api.github.com/repos/|')
  echo "Fetching repo info..."
  curl -s "$API_URL" | jq '. | {stars: .stargazers_count, forks: .forks_count, issues: .open_issues_count, last_commit: .pushed_at, languages_url: .languages_url}'
fi
