#! /usr/bin/bash

branch_at_ancestor(){
    # First argument will contain hash of function
    echo "Processing commit $2"
    git branch branch$2 $1
    parent=$(git rev-parse $1^)

    if [[ -n $(git cat-file -p $1 | grep parent) ]]
    then
        branch_at_ancestor $parent $(($2 + 1)) 
    fi
}
git init
for i in $(seq 10)
do 
    echo "This is $i th file" > $i
    git add $i
    git commit -m "This is commit count $i"
done


initial=$(git rev-parse HEAD^)

branch_at_ancestor $initial 1

git graph
 
