#!/bin/bash
set -Eeuo pipefail
cd "$(dirname "$0")"
fail() { echo "ERROR: $1"; exit 1; }
EXPECTED_REPO="MIH-aqteam/AQ_Aggregation_Guide"
grep -Fq 'project = "AURA Data Aggregation Guide"' source/conf.py || fail "Wrong project"
[[ "$(git branch --show-current)" == "main" ]] || fail "Expected main branch"
REMOTE="$(git remote get-url origin)" || fail "Missing origin"
case "$REMOTE" in "https://github.com/$EXPECTED_REPO"|"https://github.com/$EXPECTED_REPO.git"|"git@github.com:$EXPECTED_REPO.git") ;; *) fail "Unexpected remote: $REMOTE";; esac
[[ -z "$(git diff --name-only --diff-filter=U)" ]] || fail "Merge conflicts"
echo "Publishing to $EXPECTED_REPO"
read -r -p "Build and prepare publication? [y/N] " answer
[[ "$answer" == y || "$answer" == Y ]] || exit 0
/usr/bin/python3 -m sphinx -W --keep-going -E -a -b html source docs
touch docs/.nojekyll
git status --short
read -r -p "Stage, commit and push to Testing? [y/N] " answer
[[ "$answer" == y || "$answer" == Y ]] || exit 0
git add source docs local.sh publish.sh README.md .gitignore
git diff --cached --stat
read -r -p "Confirm commit and push? [y/N] " answer
[[ "$answer" == y || "$answer" == Y ]] || exit 0
git commit -m "Publish AURA Data Aggregation Guide"
git push origin main
