#!/usr/bin/bash
mkdir 1st
cd 1st
git init
echo "Content 1" > file1
git add file1
git commit -m "1st"
cp file1 file2
git add file2
git commit -m "2nd"
git graph
cd -

mkdir 2nd 
cd 2nd
git init
echo "Content 1" > file1
git add file1
git commit -m "1st"
mv file1 file2
git rm file1
git add file2
git commit -m "2nd"
git graph
cd -
