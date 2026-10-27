#!/bin/sh
set -eu
cd "$(dirname "$0")"
filename='Microsoft_365_and_Office_16.113.26100421_Installer.pkg'
if [ -e "$filename" ]; then
  echo "File already exists: $filename" >&2
  exit 1
fi
shasum -a 256 -c SHA256SUMS
partial=$(mktemp "./${filename}.assembling.XXXXXX")
trap 'rm -f "$partial"' EXIT HUP INT TERM
while read -r checksum part; do
  cat "$part"
done < SHA256SUMS > "$partial"
expected=$(awk '{print $1}' SHA256SUMS-original)
actual=$(shasum -a 256 "$partial" | awk '{print $1}')
[ "$actual" = "$expected" ] || { echo 'Combined file checksum mismatch' >&2; exit 1; }
mv -n "$partial" "$filename"
echo "Restored and SHA-256 verified: $filename"
