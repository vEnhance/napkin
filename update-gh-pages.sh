#!/bin/bash

set -euxo pipefail

SRCDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
TEMPDIR=/tmp/napkin-dist

cd "$SRCDIR"
latexmk

if [ ! -d "$TEMPDIR" ]; then
  mkdir -p "$TEMPDIR"
fi
if [ ! -d "$TEMPDIR"/.git ]; then
  cp -r .git/ "$TEMPDIR"
fi

cd $TEMPDIR
git checkout gh-pages

mkdir -p "$TEMPDIR"/asy

cd "$SRCDIR"
cp Napkin.log "$TEMPDIR"
cp Napkin.pdf "$TEMPDIR"
cp asy/*.asy "$TEMPDIR"/asy

cd "$TEMPDIR"
tree -H '.' -I "index.html" -D --charset utf-8 -T "An Infinitely Large Napkin" >index.html
git commit -a --amend -m "GitHub pages deploy from $(hostname) at $(date --utc)"
git diff --stat HEAD origin/gh-pages
