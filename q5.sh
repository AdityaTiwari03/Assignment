#! /usr/bin/bash
git init
echo "Hi" > f1
git add f1
git commit -m "1st"
echo "hello" > f2
git graph
git commit --amend -m "Changed"
git add f3
git commit --amend --no-edit
git graph
git rm f3
