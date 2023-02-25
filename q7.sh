#! /usr/bin/bash
git init
min=1
max=5
range=$(($max-$min+1))
for ((i=1;i<=5;i++))
do 
random=$(($RANDOM % $range + $min))
touch $i
git add $i
sleep $random
git commit -m "This is commit count ${i}"
done 
str=$(git log | grep Date| awk '{print $4 $3 $6 "on" $5}')
arr=($str);
#str=$(git log | grep date| awk '{print $0}')
for ((i=0;i<5;i++))
do
echo timeline of $((i+1)) commit is ${arr[$((4-i))]}
done
