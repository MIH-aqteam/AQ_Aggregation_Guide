#!/bin/bash
set -Eeuo pipefail

EXPECTED_BRANCH="main"
PILOT_REMOTE="origin"
PILOT_REPO="MIH-aqteam/AQ_Aggregation_Guide"
EEA_REMOTE="eea"
EEA_REPO="eeadata/AQ.Documentation.AggregationGuide"

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
DOCS_DIR="$SCRIPT_DIR/docs"
CHECK_DIR="$SCRIPT_DIR/build/eea-check"
cd "$SCRIPT_DIR"

fail() { printf '\nERROR: %s\nEEA publication cancelled.\n' "$1" >&2; exit 1; }
confirm() { local answer; read -r -p "$1 [y/N] " answer; [[ "$answer" == y || "$answer" == Y ]]; }
check_remote() {
  local name="$1" repo="$2" url
  url="$(git remote get-url "$name")" || fail "Missing Git remote '$name'."
  printf 'Remote %-7s : %s\n' "$name" "$url"
  case "$url" in
    "https://github.com/$repo"|"https://github.com/$repo.git"|"git@github.com:$repo.git") ;;
    *) fail "Remote '$name' does not point exactly to '$repo'." ;;
  esac
}

printf '\n============================================================\n'
printf '       AURA DATA AGGREGATION GUIDE - EEA PUBLICATION\n'
printf '============================================================\n\n'
printf 'This publishes the exact commit already pushed to and validated\n'
printf 'on the personal pilot. No files are staged and no commit is created.\n'
printf 'Target: %s (branch %s, Pages /docs)\n\n' "$EEA_REPO" "$EXPECTED_BRANCH"
read -r -p 'Press ENTER to begin verification, or Ctrl-C to abort.'

printf '\n1. VERIFYING PROJECT, BRANCH AND REMOTES\n'
git rev-parse --is-inside-work-tree >/dev/null 2>&1 || fail 'Not a Git repository.'
[[ -f source/conf.py ]] || fail 'Missing source/conf.py.'
grep -Fq 'project = "AURA Data Aggregation Guide"' source/conf.py || fail 'Unexpected project in source/conf.py.'
/usr/bin/python3 -m sphinx --version >/dev/null 2>&1 || fail 'Sphinx is unavailable through /usr/bin/python3.'
[[ "$(git branch --show-current)" == "$EXPECTED_BRANCH" ]] || fail "Current branch must be '$EXPECTED_BRANCH'."
check_remote "$PILOT_REMOTE" "$PILOT_REPO"
check_remote "$EEA_REMOTE" "$EEA_REPO"
[[ -z "$(git diff --name-only --diff-filter=U)" ]] || fail 'Unresolved merge conflicts.'
if [[ -n "$(git status --porcelain)" ]]; then
  git status --short
  fail 'Working tree is not clean. Publish to the pilot first.'
fi
[[ -f "$DOCS_DIR/.nojekyll" ]] || fail 'docs/.nojekyll is missing.'
git ls-files --error-unmatch docs/.nojekyll >/dev/null 2>&1 || fail 'docs/.nojekyll is not tracked by Git.'
git ls-files docs | grep -q '^docs/index.html$' || fail 'docs/index.html is not tracked by Git.'

if ! confirm 'Have you visually validated the current PILOT website and its navigation?'; then
  printf 'Publication cancelled.\n'; exit 0
fi

printf '\n2. VERIFYING PILOT AND EEA COMMITS\n'
git fetch --quiet "$PILOT_REMOTE" "+refs/heads/$EXPECTED_BRANCH:refs/remotes/$PILOT_REMOTE/$EXPECTED_BRANCH"
HEAD_COMMIT="$(git rev-parse HEAD)"
PILOT_COMMIT="$(git rev-parse "$PILOT_REMOTE/$EXPECTED_BRANCH")"
printf 'Local main: %s\nPilot main: %s\n' "${HEAD_COMMIT:0:12}" "${PILOT_COMMIT:0:12}"
[[ "$HEAD_COMMIT" == "$PILOT_COMMIT" ]] || fail 'Local main differs from pilot main. Run ./publish.sh first.'

EEA_REMOTE_HEADS="$(git ls-remote --heads "$EEA_REMOTE")" || fail 'Cannot reach EEA repository. Check repository creation and permissions.'
if printf '%s\n' "$EEA_REMOTE_HEADS" | grep -q "[[:space:]]refs/heads/$EXPECTED_BRANCH$"; then
  git fetch --quiet "$EEA_REMOTE" "+refs/heads/$EXPECTED_BRANCH:refs/remotes/$EEA_REMOTE/$EXPECTED_BRANCH"
  EEA_COMMIT="$(git rev-parse "$EEA_REMOTE/$EXPECTED_BRANCH")"
  printf 'EEA main  : %s\n' "${EEA_COMMIT:0:12}"
  if [[ "$HEAD_COMMIT" == "$EEA_COMMIT" ]]; then
    printf '\nEEA already has this exact commit. Nothing to publish.\n'; exit 0
  fi
  git merge-base --is-ancestor "$EEA_REMOTE/$EXPECTED_BRANCH" HEAD || fail 'EEA main has divergent commits; refusing non-fast-forward publication.'
  printf '\nCommits to be added to EEA:\n'
  git --no-pager log --oneline "$EEA_REMOTE/$EXPECTED_BRANCH..HEAD"
else
  printf 'EEA main: not yet created; first publication will create it.\n'
fi

read -r -p 'Press ENTER for final strict Sphinx validation, or Ctrl-C to abort.'
printf '\n3. STRICT SPHINX VALIDATION\n'
rm -rf -- "$CHECK_DIR"
/usr/bin/python3 -m sphinx -W --keep-going -E -a -b html source "$CHECK_DIR"
[[ -s "$CHECK_DIR/index.html" ]] || fail 'Strict build did not generate index.html.'
[[ -z "$(git status --porcelain)" ]] || fail 'Working tree changed during validation.'
printf '\nStrict Sphinx build passed without warnings.\n'

printf '\n4. FINAL EEA PUBLICATION CHECK\n'
printf 'Repository : %s\nRemote     : %s\nBranch     : %s\n' "$EEA_REPO" "$EEA_REMOTE" "$EXPECTED_BRANCH"
printf 'Commit     : '; git --no-pager log -1 --oneline
printf 'Command    : git push %s %s:%s\n\n' "$EEA_REMOTE" "$EXPECTED_BRANCH" "$EXPECTED_BRANCH"
if ! confirm 'Publish this validated pilot commit to EEA now?'; then
  printf 'Publication stopped before push.\n'; exit 0
fi
git push "$EEA_REMOTE" "$EXPECTED_BRANCH:$EXPECTED_BRANCH"
printf '\n============================================================\n'
printf 'EEA PUBLICATION PUSH COMPLETED\n'
printf '============================================================\n'
printf 'Repository: https://github.com/%s\n' "$EEA_REPO"
printf 'Expected Pages URL (once configured): https://eeadata.github.io/AQ.Documentation.AggregationGuide/\n'
printf 'GitHub Pages configuration: Deploy from branch main, folder /docs.\n'
printf 'Verify the published website and navigation after deployment.\n'
