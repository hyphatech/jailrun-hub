#!/usr/bin/env bash
set -euo pipefail

# gen-manifest.sh — Generate a sha256 manifest for a jailrun hub playbook directory.
#
# Output format (sha256sum-style):
#   <sha256>  <relative-path>
#
# Usage:
#   ./tools/gen-manifest.sh playbooks/python/3.14
#   ./tools/gen-manifest.sh .   # from inside a playbook dir

readonly MANIFEST_NAME="jrun.manifest"
readonly PLAYBOOK_NAME="playbook.yml"

die() { printf 'error: %s\n' "$*" >&2; exit 1; }

# ---------- resolve sha256 tool once, not per-file ----------
if command -v sha256sum >/dev/null 2>&1; then
  sha256_cmd() { sha256sum -- "$1" | cut -d' ' -f1; }
elif command -v shasum >/dev/null 2>&1; then
  sha256_cmd() { shasum -a 256 -- "$1" | cut -d' ' -f1; }
else
  die "need 'sha256sum' (Linux) or 'shasum' (macOS)"
fi

# ---------- validate input ----------
(( $# == 1 )) || die "usage: $0 <playbook-directory>"
DIR="${1%/}"  # strip trailing slash
[[ -d "$DIR" ]]                  || die "not a directory: $DIR"
[[ -f "$DIR/$PLAYBOOK_NAME" ]]   || die "missing $PLAYBOOK_NAME in $DIR"

# ---------- generate manifest ----------
tmp="$(mktemp)"
trap 'rm -f "$tmp"' EXIT

(
  cd -- "$DIR"
  find . -type f \
    ! -name "$MANIFEST_NAME" \
    ! -path './.git/*' \
    ! -path './__pycache__/*' \
    ! -name '.DS_Store' \
    -print0 \
  | LC_ALL=C sort -z \
  | while IFS= read -r -d '' file; do
      rel="${file#./}"
      [[ "$rel" != *'..'* ]] || die "refusing path with '..': $rel"
      printf '%s  %s\n' "$(sha256_cmd "$rel")" "$rel"
    done
) > "$tmp"

[[ -s "$tmp" ]] || die "no files found in $DIR"

dest="$DIR/$MANIFEST_NAME"
mv -- "$tmp" "$dest"
count=$(wc -l < "$dest")
echo "wrote $dest ($((count)) files)"
