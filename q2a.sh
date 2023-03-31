#! /usr/bin/bash
git init
touch f1
git add .
git commit -m '1st'
touch d2
git add .
git commit -m "2nd"
echo f1 "change" >> f2
git add .
git commit -m "3rd"
git fsck --unreachable #finds unreachable files
git prune --dry-run
