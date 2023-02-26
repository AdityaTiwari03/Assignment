# Question 1

- In the second repository, we only create one file in first commit. In the second commit, The tree has been changed but the blob remains the same, i.e. either the file has been renamed.

# Question 3

- In order to visualize the conflict, we should configure mergetool using `git config merge.tool <toolname>`, and then use `git mergetool` command. 

# Question 4

- By using the `-a` switch with the `commit` command we can automatically `add` changes from all tracked files and automatically `rm` files in the index that have been removed from the working tree, and then perform the actual commit

# Question 8

Use git stash when you want to record the current state of the working
directory and the index, but want to go back to a clean working
directory. The command saves your local modifications away and reverts
the working directory to match the HEAD commit.

The modifications stashed away by this command can be listed with git
stash list, inspected with git stash show, and restored (potentially on
top of a different commit) with git stash apply. Calling git stash
without any arguments is equivalent to git stash push. A stash is by
default listed as "WIP on branchname ...", but you can give a more
descriptive message on the command line when you create one.
