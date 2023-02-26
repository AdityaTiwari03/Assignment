#! /usr/bin/bash
git init
git remote add origin https://github.com/AdityaTiwari03/New2.git

# first commit
touch f1
git add f1
git commit -m "1st"  

# second commit 
echo "hhh" > f2
git add f2
git commit -m "2"

# changed  first file, third commit
echo "abc" > f1
git add f1
git commit -m "3"
git push -u --force origin master

git remote set-head origin master

# creating new branch feature + commit on feature branch
git checkout -b product
echo "abcd" > f1
git add f1
git commit -m "4"

git checkout HEAD~3
git graph
