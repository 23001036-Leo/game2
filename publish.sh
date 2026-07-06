#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")"

message="${1:-Publish Game2 update}"

git add index.html brick-breaker.html README.md .gitignore publish.sh robots.txt

if git diff --cached --quiet; then
  echo "No Game2 changes to publish."
else
  git commit -m "$message"
  git push
fi

echo "Published URL: https://23001036-leo.github.io/m9r4t6-z2p8q5/"
