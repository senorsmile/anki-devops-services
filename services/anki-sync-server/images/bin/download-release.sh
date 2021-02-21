#!/bin/sh
# file: download-release.sh

mkdir -p release

cd release

git clone ${ANKISYNCD_GIT_REPOSITORY_URL}
git checkout ${ANKISYNCD_GIT_BRANCH}

mv anki-sync-server/src/* .

rm -rf anki-sync-server

cd ..