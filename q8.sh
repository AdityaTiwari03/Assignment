#! /usr/bin/bash

# Using 80 dashes as seperator
seperator='--------------------------------------------------------------------------------'

git init
echo "Version 1" > f1
git add f1
git commit  -m "This is commit number 1"
echo "Version 2" > f1
echo $seperator
git status
echo $seperator
echo "INFO::Cleaning working tree using git stash"
echo $seperator
git stash
echo $seperator
git status
echo $seperator
echo "INFO::Now its clean, lets restore our progress"
echo $seperator
git stash apply
echo $seperator
