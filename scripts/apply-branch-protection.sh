#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG="${SCRIPT_DIR}/../.github/branch-protection.json"

REPO="$(gh repo view --json nameWithOwner -q .nameWithOwner)"

gh api \
  --method PUT \
  "repos/${REPO}/branches/main/protection" \
  --input "${CONFIG}"

echo "Branch protection applied to ${REPO}:main"
