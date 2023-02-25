#! /usr/bin/bash
git init
for ((i=1;i<=10;i++))
do 
touch $i
git add $i
git commit -m "This is commit count ${i}"
done
for ((i=10;i>1;i--))
do
git checkout HEAD~
git branch branch$i
done
git graph
 
