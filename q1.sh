#! /usr/bin/bash
mkdir 1st
mkdir 2nd 
cd 1st
git init
touch f1
git add f1
git commit -m "1st"
touch f2
git add f2 
git commit -m "2nd"
git graph
cd -
cd 2nd
git init
touch f1
git add f1
git commit -m "1st"
touch f2
git rm f1
git commit --amend
git add f2
git commit -m "2nd"
git graph
cd -
