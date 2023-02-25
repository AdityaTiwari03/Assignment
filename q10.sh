#! /usr/bin/bash
git init
touch f1
git add f1
giit commit -m "1st"
echo "hhh" > f2
git add f2
git commit -m "2"
echo "abc" > f1
git add f1
git commit -m "3"
git checkout -b feature
echo "abcd" > f1
git add f1
git commit -m "4"git remote add origin (URL)
git push -u origin 
git checkout master
git graph	
