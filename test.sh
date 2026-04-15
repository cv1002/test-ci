#!/usr/bin/env bash
set -euo pipefail

echo "Running CI tests..."

# Simple sanity check: README must exist
if [ ! -f README.md ]; then
  echo "ERROR: README.md not found"
  exit 1
fi

echo "All tests passed!"
