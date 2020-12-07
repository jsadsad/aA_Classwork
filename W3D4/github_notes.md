#Local Repo Commands
`git init` creates local Git repo.

`git status` ses current changes from last commit.

`git log` see list of commits.

#Local Repo Vocab
`untracked` is any newly introduced file

`unstage` is a file that exists in .git but has been changed since last commit

`staged` are files added to staging area. They are waiting to be commited

`commit` are files that have been commited to .git

`git reset --hard` resets the staging area and the working directory to match the most recent commit. Good for reseting an an absolute broken function.

`origin` is the keyword referring to default remote repo

`git remote` is the command to list remotes

`git remote add <remote> <remote-url>` adds a remote

`git push <remote> <branch-name>` moves updates from `.git` to remove repo

`git push -u <remote> <branch-name>` sets a default location for this branch/project

`git clone <remote-url>` copies the remote repo to your local machine. Do NOT `git init` this

`git fetch <remote> <branch-name>` gets updated info from the remote Repo

`git pull <remote> <branch-name>` gets updates AND merges from remote repo

#Keep your options open
`git push --force <remote> <branch>` forces the changes to remote repo.
`git push -all` pushes all branches
<!--  -->
#Branching
Features you want to work on. Makes `main` branch clean.
`git branch` lists branches
`git checkout <branch-name>` is a switch to branch
`git checkout -b <branch-name>` switches to the branches
`git checkout -d <branch-name>` deletes branch
`git merge <branch-name>` merge `<branch-name>` into current branch
