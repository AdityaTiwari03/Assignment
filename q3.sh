#! /usr/bin/bash
git init
touch f1
git add f1
git commit -m "234"
git branch feature
touch f2
git add f2
git commit -m "345678"
git checkout feature
echo "qwerty" > f2
git add f2
git commit -m "123456"
git checkout master
#git merge feature
#it is conflict
git rebase feature
git graph
