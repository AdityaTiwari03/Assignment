#! /usr/bin/bash
git init
touch f1
git add .
git commit -m '1st'
touch d2
git add .
git commit -m "2nd"
echo f1 "change" >> f2
git add .
git commit -m "3rd"
git push https://github.com/AdityaTiwari03/dummy.git
git gc --prune=now #prune from remote repo "dummy"
