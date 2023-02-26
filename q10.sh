#! /usr/bin/bash

if [[ $1 == "clean" ]]
then
	rm -rf /tmp/STT-SAD-Assignment2-q10/
	echo "Cleaning complete"
	exit 0
fi

printf "This script will create a remote repository at /tmp/STT-SAD-Assignment2-q10/\n To cleanup run:\n./q10 clean\n Press enter to continue..."
read

# Let us create a local remote repository
rm -rf /tmp/STT-SAD-Assignment2-q10/
mkdir /tmp/STT-SAD-Assignment2-q10
pushd /tmp/STT-SAD-Assignment2-q10
git init --bare 
popd
git init -b master
git remote add origin /tmp/STT-SAD-Assignment2-q10

# first commit
echo "Content 1" > f1
git add f1
git commit -m "1st"  

# second commit 
echo "Content 2" > f2
git add f2
git commit -m "2"

# changed  first file, third commit
echo "Content 3" > f1
git add f1
git commit -m "3"
git push -u --force origin master

git remote set-head origin master

# creating new branch feature + commit on feature branch
git checkout -b product
echo "Content 4" > f1
git add f1
git commit -m "4"

git checkout HEAD~3
git graph
