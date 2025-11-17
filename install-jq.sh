#!/bin/bash
# install-jq.sh - Prompt user to install jq if missing

set -e

if ! command -v jq >/dev/null 2>&1; then
  echo "⚠️  This package requires 'jq' to work correctly."
  read -p "Would you like to install jq now? (y/n): " RESPONSE

  if [[ "$RESPONSE" =~ ^[Yy]$ ]]; then
    echo "Installing jq..."
    if [[ "$OSTYPE" == "linux-gnu"* ]]; then
      if command -v apt-get >/dev/null 2>&1; then
        sudo apt-get update && sudo apt-get install -y jq
      elif command -v yum >/dev/null 2>&1; then
        sudo yum install -y jq
      else
        echo "Unsupported Linux distro. Please install jq manually."
        exit 1
      fi
    elif [[ "$OSTYPE" == "darwin"* ]]; then
      if command -v brew >/dev/null 2>&1; then
        brew install jq
      else
        echo "Homebrew not found. Please install jq manually: https://stedolan.github.io/jq/"
        exit 1
      fi
    else
      echo "Unsupported OS. Please install jq manually: https://stedolan.github.io/jq/"
      exit 1
    fi
    echo "✅ jq installed successfully."
  else
    echo "❌ jq is required for some CLI features. Please install it manually to avoid errors."
    exit 1
  fi
else
  echo "✅ jq is already installed."
fi
