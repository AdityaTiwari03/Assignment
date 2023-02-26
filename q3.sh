#! /usr/bin/bash
git init
echo "Content 1" > f1
git add f1
git commit -m "First Commit, shared"
git branch feature
echo "Content 2" > f1
git add f1
git commit -m "Commit on master"
git checkout feature
echo "qwerty" > f1
git add f1
git commit -m "Commit on feature"
git checkout master
git merge feature
git mergetool
git commit -m "Merge feature into master"
