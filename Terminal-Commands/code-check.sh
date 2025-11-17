#!/bin/bash

# Code Quality Check
# Usage: ./code-check.sh [path]

TARGET=${1:-.}

echo "Running ESLint on $TARGET..."
if ! command -v eslint >/dev/null 2>&1; then
  echo "ESLint not installed. Installing..."
  npm install -g eslint
fi

eslint "$TARGET" --ext .js,.ts
