#! /usr/bin/bash
git init
for ((i=1;i<=10;i++))
do 
touch $i
git add $i
git commit -m "This is commit count ${i}"
done
A=$(git rev-parse HEAD)
for ((t=10;t>1;t--))
do
A=$(git rev-parse ${A}^)
git checkout $A
git branch branch$t
done
