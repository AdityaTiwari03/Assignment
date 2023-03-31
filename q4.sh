#! /usr/bin/bash
git init
git config --global user.signingkey Aditya 
touch f1
git add .
git commit -m "1"
echo "change" >> f1
git add .
git commit -S -m "2" 
a=($(git rev-parse HEAD))
git verify-commit ${a}