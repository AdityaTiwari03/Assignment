#! /usr/bin/bash
git init -b master
for i in $(seq 10)
do 
	echo "This is $i th file" > $i
	git add $i
	git commit -m "This is commit count $i"
done

iter=$(git rev-parse HEAD)
for i in $(seq 9)
do
	iter=$(git rev-parse $iter~)
	git branch branch$i $iter
done

git graph
 
