#! /usr/bin/bash
echo "first file" > f1
a = $(readlink -f f1.txt) 
git init
git add f1
git commit -m "1st"
echo "first file changed" > f1
git commit -m "Your commit message" $a --no-verify
git status