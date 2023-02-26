#! /usr/bin/bash
echo "first file" > f1
a = $(readlink -f f1.txt) 
git init -b master
git add f1
git commit -m "1st"
echo "first file changed" > f1
git commit -a -m "Your commit message"
git status
