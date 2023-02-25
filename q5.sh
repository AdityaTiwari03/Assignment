#! /usr/bin/bash
touch f1 
git init
git add f1
git commit -m "1st"
touch f3
git graph
git commit --amend -m "Changed"
git add f3
git commit --amend --no-edit
git graph
git rm f3
git commit --amend --no-edit

