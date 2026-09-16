#!/bin/bash
# sync.sh — one-command update for the homepage.
# Usage:
#   ./sync.sh "what you changed"
#   ./sync.sh                      (uses a timestamp as the message)
#
# It stages all changes, commits, and pushes to GitHub (branch main).
# Your Mac's saved GitHub login is used; no token needs to be typed.

set -e
cd "$(dirname "$0")"

# Pull --no-archive out of the arguments before the commit message is built,
# otherwise the flag ends up inside the message.
ARCHIVE=1
ARGS=()
for a in "$@"; do
  if [ "$a" = "--no-archive" ]; then ARCHIVE=0; else ARGS+=("$a"); fi
done
set -- "${ARGS[@]+"${ARGS[@]}"}"
[ "$NO_ARCHIVE" = "1" ] && ARCHIVE=0

# Build the commit message from all arguments, or fall back to a timestamp.
if [ -z "$1" ]; then
  MSG="Update $(date '+%Y-%m-%d %H:%M')"
else
  MSG="$*"
fi

# Nothing to do if the working tree is clean.
if git diff --quiet && git diff --cached --quiet && [ -z "$(git status --porcelain)" ]; then
  echo "Nothing to sync — no changes since the last push."
  exit 0
fi

git add -A
git commit -m "$MSG"

# Push to origin first (the live site), then any other remotes.
# A failure on one remote does not stop the others.
echo "Pushing to origin ..."
git push origin main || echo "  -> origin FAILED (check access/auth)"

for remote in $(git remote | grep -vx origin); do
  echo "Pushing to $remote ..."
  git push "$remote" main || echo "  -> $remote FAILED (you may not have write access to this repo)"
done

echo ""
echo "Done. Live in ~1-2 min at:"
echo "  https://xiaoyanqian.com/"

# ---------------------------------------------------------------------------
# Independent timestamp.
#
# A date I write in my own front matter is not evidence of anything: I control
# the file, so I control the date. A GitHub push timestamp is much harder to
# fake, but I still own the repository. An Internet Archive snapshot is the
# only one of the three I cannot touch, which is exactly what makes it worth
# having if I ever need to show that a position was public on a given day.
#
# Runs after the push and never blocks it: if archive.org is slow or down, the
# site is already live and this is a no-op. GitHub Pages needs a moment to
# rebuild first, hence the wait.
# ---------------------------------------------------------------------------
ARCHIVE_URLS=(
  "https://xiaoyanqian.com/"
  "https://xiaoyanqian.com/twin/"
  "https://xiaoyanqian.com/writing/"
  "https://xiaoyanqian.com/notes/"
)

if [ "$ARCHIVE" = "0" ]; then
  echo ""
  echo "Skipping archive.org snapshot (--no-archive)."
else
  echo ""
  echo "Waiting 90s for GitHub Pages to rebuild before archiving ..."
  sleep 90
  echo "Requesting Internet Archive snapshots ..."
  for u in "${ARCHIVE_URLS[@]}"; do
    code=$(curl -s -o /dev/null -w '%{http_code}' --max-time 60 \
             -A 'xiaoyanqian.com sync.sh' "https://web.archive.org/save/$u" || echo "000")
    case "$code" in
      200|301|302) echo "  ok   $u" ;;
      429)         echo "  rate-limited  $u  (try again later)" ;;
      *)           echo "  failed ($code)  $u" ;;
    esac
  done
  echo ""
  echo "Verify at: https://web.archive.org/https://xiaoyanqian.com/twin/"
fi
