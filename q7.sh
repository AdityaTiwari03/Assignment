#! /usr/bin/bash
git init
min=1
max=5
range=$(($max-$min+1))

for i in $(seq 5)
do 
	random=$(($RANDOM % 4 + 1))
	echo "File no $i" > $i
	git add $i
	sleep $random
	git commit  -m "This is commit number $i"
done

echo '--------------------------------------------------------------------------------'

git log | grep -e "^Date" -e "This is"
