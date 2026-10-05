#!/usr/bin/env bash
# Publishes one vartit Android version here, from the private source repo's
# CI release (tag android-<version>, signed APK attached).
#
#   scripts/publish.sh 0.4.0
#
# Needs: gh (logged in with access to both repos), sha256sum, and Docker
# with the source repo's `vartit-android-build` image for apksigner (the
# signing check refuses anything not signed with the release key, e.g. a
# debug build attached by mistake). Release notes come from this repo's
# CHANGELOG.md section "## <version> – ..." — write it first.
set -euo pipefail

version="${1:?usage: scripts/publish.sh <version>}"
source_repo=19115953/vartit
channel_repo=19115953/vartit-android
expected_cert=327e0b15744b391fa0ce6c8869bfd3f08ba5738c411d67c83bab8f0c1b00b34a

here="$(cd "$(dirname "$0")/.." && pwd)"
work="$(mktemp -d)"
trap 'rm -rf "$work"' EXIT

notes="$(awk -v v="$version" '
    $0 ~ "^## " v "( |$)" { on = 1; next }
    on && /^## / { exit }
    on { print }
' "$here/CHANGELOG.md")"
[ -n "${notes//[[:space:]]/}" ] || { echo "No CHANGELOG.md section for $version" >&2; exit 1; }

gh release download "android-$version" -R "$source_repo" -p "vartit-$version.apk" -D "$work"
apk="$work/vartit-$version.apk"

cert="$(docker run --rm -v "$work:/a:ro" vartit-android-build \
    /opt/android-sdk/build-tools/36.0.0/apksigner verify --print-certs "/a/vartit-$version.apk" \
    | sed -n 's/^Signer #1 certificate SHA-256 digest: //p')"
[ "$cert" = "$expected_cert" ] || { echo "Unexpected signing certificate: ${cert:-none}" >&2; exit 1; }

cp "$apk" "$work/vartit.apk"
(cd "$work" && sha256sum "vartit-$version.apk" vartit.apk > SHA256SUMS)

gh release create "v$version" -R "$channel_repo" \
    --title "vartit $version" \
    --notes "$notes

**Lataa / Download:** \`vartit-$version.apk\` (tai \`vartit.apk\`, sama tiedosto). Asennusohjeet: [README](https://github.com/$channel_repo#asennus).

SHA-256: \`$(cut -d' ' -f1 "$work/SHA256SUMS" | head -1)\`" \
    --latest \
    "$apk" "$work/vartit.apk" "$work/SHA256SUMS"

echo "Published https://github.com/$channel_repo/releases/tag/v$version"
