#! /usr/bin/bash
git init
for ((i=1;i<=50;i++))
do 
touch $i
git add $i
git commit  -m "commit no $i"
done
str=$(git log | awk '/^commit/ {print $2}')
arr=($str);
b=$(awk 'BEGIN {print int(rand() * 50)}')
a=${arr[$b]}
echo $a
#via single call of awk
#min=1
#max=50
#range=$(($max-$min+1))
#random=$(($RANDOM % $range + $min))
#git log | awk '/^commit/, NR=$random {print $2}
git checkout $a
git branch hello
