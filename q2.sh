#! /usr/bin/bash
echo -e "## Creating git repository for demonstration\n"
git init
touch f1
git add f1
git commit -m '1st'
echo "New content" > f1
git add f1
echo f1 "change content again" > f1
git add f1
git commit -m "2rd"
echo -e "\n## Listing unreachable files\n"
git fsck --unreachable #finds unreachable files
echo -e "\n## Using git prune\n"
git prune --verbose
echo -e "\n## Using git prune on remote\n"
git remote prune origin
