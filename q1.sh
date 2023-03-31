#! /usr/bin/bash
mkdir withoutPackfiles
mkdir withPackfiles
cd withoutPackfiles
fallocate -l 102400 file-1
git init
git add file-1
git commit -m "1st commit"
echo "Your disk usage is - "
git count-objects -vH
git gc && du -sh .git/
echo 'Now it is - '
git count-objects -vH
echo  " changed by me" >> file-1
git add file-1
git commit -m "again commited"
echo "Your disk usage is - "
git count-objects -vH
git gc && du -sh .git/
echo 'Now it is - '
git count-objects -vH


cd withPackfiles
fallocate -l 102400 file-1
git init 
git add file-1
git commit -m "1st commit"
echo  " changed by me" >> file-1
git add file-1
git commit -m "again commited"
echo "Your disk usage is - "
git count-objects -vH
git repack
echo 'Now it is - '
git count-objects -vH
 

#repack command generally decreases disk uses by eliminating unnecessary content in disk, but here disk space is increasing. 
