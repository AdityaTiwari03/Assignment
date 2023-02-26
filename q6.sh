#! /usr/bin/bash
git init
for i in $(seq 50)
do 
	echo "File no $i" > $i
	git add $i
	git commit  -m "This is commit number $i"
done

echo -e "\nUsing two seperate invocations of awk"
hash=$(git log | awk '/^commit/ {print $2}' | \
	awk -v seed=$RANDOM 'BEGIN {srand(seed); commit=int(rand() * 50)}
	{if(NR==commit)print $0}')
git cat-file -p $hash

echo -e "\nDoing the same in single invocation of awk"
hash=$(git log | awk -v seed=$RANDOM ' 
BEGIN {i=0; srand(seed); commit=0; while(commit==0){commit=int(rand() * 50)}}
	/^commit/ {i=i+1; if(i==commit)print $2}')
git cat-file -p $hash

echo -e "\nSince commits returned by the two attempts do not match, we will generate graph with only second attempt.\n"

git branch new_branch $hash
git checkout new_branch
git graph -n clhurdsag
