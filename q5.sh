#! /usr/bin/bash
git init -b master
echo "Hi" > f1
git add f1
git commit -m "1st"
echo "hello" > f2
git commit --amend --no-edit
git graph
sleep 1
git commit --amend -m "Changed"
git graph
