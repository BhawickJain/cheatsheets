# GIT commands

## typical patterm with Aliases

```bash
g s                           # get status
g a .                         # add all items (usually one)
g c "{message}"               # give commit with message
g pp                          # pull and push into respository
```

## reading logs
```bash
git log
git log --oneline             # useful for | grep
git log --graph               # fancy visual
git log --graph --color | less -r # less with color output
```

## differences

```
git diff HEAD~1 HEAD          # compare 1 previous with current HEAD
git diff [from-#] [after-#]   # commit comparison
```

## managing branches

```bash
git branch [name]
git branch -a                 # list all branches
git branch                    # list all branches
git push -u origin [name]     # push branch to repo
git switch [name]
git switch -c [name]
git checkout -b [branch-name] # create and switch to new branch
```

__deleting__
```bash
git fetch —prune              # remove dead branches according to remote
git branch -D [name]
```

## managing changes

```bash
git restore [filename]        # restore file to last indexed commit
git rebase [ahead-branch]     # merge ahead-branch commits
                              # into current branch
```

## git config

```bash
git config --global -l
git config --global user.email "user@email.com"
git config --global user.name "name"
```

Your git config usually lies in the user root `~` under file name `.gitconfig` 


## Setup alias

Useful if you want to lose your fingeres and wrists
[git-docs-aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)

```bash
# .bashrc

alias g="git"

# add git alias
git config --global alias.[alias name] [Command]
git config --global alias.p pull
git config --global alias.s status
git config --global alias.a add

# remove git alias
git --config unset alias.[alias name]
```

git config alias settings

Multiple commands are written in bash as seen for alias `a` below learned from [this](https://stackoverflow.com/questions/7534184/git-alias-multiple-commands-and-parameters).

```bash
# .gitconfig

[alias]
        p = pull
        s = status
        a = !git add $1 && git status
        ss = switch
        ba = branch -a
        pu = push
        pp = !git pull && git push && git status
        c = commit -m
        fp = fetch --prune
 ```

## Troubleshooting

### Azure DevOps: authentication failed
Ensure [git credential manager](https://docs.microsoft.com/en-us/azure/devops/user-guide/code-with-git?view=azure-devops) is installed and ensure `user.email` belongs to domain you are accessing from repo from.

### Azure DevOps: OpenSSL connection error
[Turn off IPv6 from Network Settings](https://stackoverflow.com/questions/67230241/fatal-unable-to-access-https-dev-azure-com-xxx-openssl-ssl-connect-connec)

## Setup General

```bash

# view git config list global
git config --global -l

git config --global user.name [name surname]
git config --global user.email [email]

# edit in editor
git config --global -e
```

#tooling

