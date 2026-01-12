#!/usr/bin/env bash
# Bash Reference File for Theme Testing

set -euo pipefail

NAME="${1:-Nord Turbo}"
COUNT=3

for i in $(seq 1 "$COUNT"); do
  echo "Hello, $NAME ($i)"
done

if [[ "$COUNT" -gt 2 ]]; then
  echo "Count is greater than two"
fi
