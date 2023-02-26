# Question 1

- In the second repository, we only create one file in first commit. In the second commit, The tree has been changed but the blob remains the same, i.e. either the file has been renamed.

# Question 3

- In order to visualize the conflict, we should configure mergetool using `git config merge.tool <toolname>`, and then use `git mergetool` command. 

# Question 4

- In order to commit a file without staging it, we can use `-a` option of `git commit` command. This will add update the tracked and modified files to the new commit.
