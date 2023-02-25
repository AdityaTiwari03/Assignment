#! /usr/bin/bash
git init
git pull origin master
git reset 2f0ea3a 
echo "hhh" > f2
git add f2
git commit -m "2"
echo "abc" > f1
git add f1
git commit -m "3"
git remote add origin https://github.com/AdityaTiwari03/New2.git
git push -u origin 
git checkout -b feature
echo "abcd" > f1
git add f1
git commit -m "4"
git checkout master
git graph	

