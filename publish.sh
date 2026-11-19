#!/bin/bash
set -Eeuo pipefail

EXPECTED_BRANCH="main"
EXPECTED_REMOTE="origin"
EXPECTED_REPO="MIH-aqteam/AQ_Aggregation_Guide"
SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DOCS_DIR="$SCRIPT_DIR/docs"
cd "$SCRIPT_DIR"

fail() { printf '\nERROR: %s\nPublication cancelled.\n' "$1" >&2; exit 1; }
confirm() {
    local answer
    read -r -p "$1 [y/N] " answer || return 1
    [[ "$answer" == "y" || "$answer" == "Y" ]]
}

printf '\n============================================================\n'
printf '      AURA DATA AGGREGATION GUIDE - PILOT PUBLICATION\n'
printf '============================================================\n\n'
printf 'Destination: %s (branch %s, folder /docs)\n\n' "$EXPECTED_REPO" "$EXPECTED_BRANCH"
printf 'Procedure: verify -> review -> strict Sphinx build -> stage -> commit -> push.\n'
printf 'The separately prepared PDF will NOT be regenerated.\n'
printf 'Each Git operation requires its own confirmation.\n\n'
read -r -p 'Press ENTER to begin verification, or Ctrl-C to abort. ' || exit 0

printf '\n1. VERIFYING PROJECT AND DESTINATION\n\n'
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || fail 'Not a Git repository.'
[[ -f source/conf.py ]] || fail 'Missing source/conf.py.'
grep -Fq 'project = "AURA Data Aggregation Guide"' source/conf.py || fail 'Unexpected Sphinx project.'
[[ "$(git branch --show-current)" == "$EXPECTED_BRANCH" ]] || fail "Expected branch '$EXPECTED_BRANCH'."
REMOTE_URL="$(git remote get-url "$EXPECTED_REMOTE")" || fail 'Missing origin remote.'
case "$REMOTE_URL" in
    "https://github.com/$EXPECTED_REPO"|"https://github.com/$EXPECTED_REPO.git"|"git@github.com:$EXPECTED_REPO.git") ;;
    *) fail "Unexpected remote: $REMOTE_URL" ;;
esac
[[ -z "$(git diff --name-only --diff-filter=U)" ]] || fail 'Unresolved merge conflicts.'
/usr/bin/python3 -m sphinx --version >/dev/null 2>&1 || fail 'Sphinx is unavailable via /usr/bin/python3.'
printf 'Project: %s\nRemote : %s\nBranch : %s\n' "$SCRIPT_DIR" "$REMOTE_URL" "$EXPECTED_BRANCH"
printf '\nCurrent Git status:\n'
git --no-pager status --short
printf '\n'
read -r -p 'Press ENTER to build, or Ctrl-C to abort. ' || exit 0

printf '\n2. BUILDING HTML (WARNINGS AS ERRORS)\n\n'
/usr/bin/python3 -m sphinx -W --keep-going -E -a -b html source docs || fail 'Sphinx build failed.'
touch "$DOCS_DIR/.nojekyll"
printf '\nHTML build succeeded without warnings.\n'

printf '\n3. REVIEWING AND STAGING CHANGES\n\n'
git --no-pager status --short
if [[ -z "$(git status --porcelain)" ]]; then
    printf '\nNo changes to publish.\n'
    exit 0
fi
printf '\nAll changes shown above, including new files and deletions, will be staged.\n'
if ! confirm 'Stage all changes?'; then
    printf 'Publication cancelled before staging.\n'
    exit 0
fi
git add -A
printf '\nStaged changes:\n'
git --no-pager status --short
git --no-pager diff --cached --stat
if git diff --cached --quiet; then
    printf '\nNothing staged.\n'
    exit 0
fi

printf '\n4. CREATING THE COMMIT\n\n'
read -r -p 'Commit message: ' COMMITMSG || fail 'No commit message entered.'
[[ -n "${COMMITMSG//[[:space:]]/}" ]] || fail 'Commit message cannot be empty. Files remain staged.'
printf 'Commit message: %s\n' "$COMMITMSG"
if ! confirm 'Create this commit?'; then
    printf 'Commit cancelled. Changes remain staged.\n'
    exit 0
fi
git commit -m "$COMMITMSG"
printf '\nCreated commit:\n'
git --no-pager log -1 --oneline
if [[ -n "$(git status --porcelain)" ]]; then
    git --no-pager status --short
    fail 'Working tree changed during commit. Review before pushing.'
fi

printf '\n5. FINAL PILOT PUBLICATION CHECK\n\n'
printf 'Repository: %s\nRemote    : %s\nBranch    : %s\n' "$EXPECTED_REPO" "$EXPECTED_REMOTE" "$EXPECTED_BRANCH"
printf 'Command   : git push %s %s\n\n' "$EXPECTED_REMOTE" "$EXPECTED_BRANCH"
if ! confirm 'Push to the PERSONAL PILOT repository now?'; then
    printf 'Commit is local only; no push performed.\n'
    exit 0
fi
git push "$EXPECTED_REMOTE" "$EXPECTED_BRANCH"
printf '\n============================================================\n'
printf 'PILOT PUBLICATION COMPLETED\n'
printf 'Repository: https://github.com/%s\n' "$EXPECTED_REPO"
printf 'Website   : https://mih-aqteam.github.io/AQ_Aggregation_Guide/\n'
printf 'GitHub Pages: main /docs\n'
printf '============================================================\n'
