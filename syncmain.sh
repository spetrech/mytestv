#!/usr/bin/env bash
# syncmain.sh
# 把 master 同步到 main：切到 main -> fast-forward merge master -> push -> 切回 master
set -e
git checkout main
git merge master --ff-only
git push
git checkout master
echo "done: master -> main synced, back on master"
