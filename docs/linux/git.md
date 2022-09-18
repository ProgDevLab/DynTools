# DynTools : Linux : Git

![Icon](../../icon.png)

## Table Of Contents

- [DynTools : Linux : Git](#dyntools--linux--git)
  - [Table Of Contents](#table-of-contents)
  - [Description](#description)
  - [Documentations](#documentations)
  - [Provider](#provider)
  - [Install](#install)
  - [Init Commands](#init-commands)
  - [Aliases](#aliases)
  - [Basic Commands](#basic-commands)
  - [Extra Commands](#extra-commands)
  - [SSH Key](#ssh-key)

## Description

**Git** is a great **version control system**, with this you can **save** and **collaborate** with **each version** of your **files** (for source code but also **other type** of files). Before **Git** we have used **SVN**, now we use Git through **GitLab** or **GitHub** (**Gitea** for **self hosted** simple solution or also **GitLab** for advanced **self hosted** Git).

## Documentations

- [Official Documentation](https://git-scm.com/doc)
- [Hostinger Tutoriel](https://www.hostinger.fr/tutoriels/tuto-git)
- [IONOS Tutoriel](https://www.ionos.fr/digitalguide/sites-internet/developpement-web/tutoriel-git/)

## Provider

- **[GitLab](https://gitlab.com/)** : Open Source Git Repository (Self Hosted availabe)
- **[GitHub](https://github.com/)** : Enterprise Git Repository.
- **[Gitea](https://gitea.io/en-us/)** : Little Self Hosted Git Repository.

## Install

```bash
sudo apt-get install -y git
```

## Init Commands

**Configure Git** with your **account** (to config your commit author) :

```bash
git config --global user.name 'ProgOwer'
git config --global user.email 'ProgOwer0770@gmail.com'
```

**Display** **Git Config** :

```bash
git config --list
```

**Init** a new **Git Repository** :

```bash
git init
```

**Clone** a **Git Repository** :

```bash
# With SSH
git clone git@gitlab.com:project.git

# With HTTPS
git clone https://gitlab.com/project.git
```

## Aliases

If you want, you can **configure** come **aliases** to some **Git command** :

```bash
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.hist "log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
git config --global alias.type 'cat-file -t'
git config --global alias.dump 'cat-file -p'
git config --global alias.hist "log --pretty=format:'%C(yellow)[%ad]%C(reset) %C(green)[%h]%C(reset) | %C(red)%s %C(bold red){{%an}}%C(reset) %C(blue)%d%C(reset)' --graph --date=short"
```

Especially **"git hist"** to display **beautiful** log of git in your **console**.

## Basic Commands

Here some **basic commands** to use with Git :

```bash
# Add file for commit
git add FILENAME
# Add all files for commit
git add *

# List all files with changes and added or not
git status

# Create a new commit
git commit -m "Commit Message"

# List each commit
git log

# List each commit with better view
git hist

# Get lasted commit
git pull

# Send lasted commit
git push --all

# Change the current branch
git checkout BRANCH_NAME

# Change the current branch and create a new one
git checkout -b BRANCH_NAME

# Merge a branch to your current branch
git merge BRANCH_NAME

# Setup a tag to a commit
git tag 1.0.0 COMMIT_ID
```

## Extra Commands

Git **disable** Safe Directory choice :

```bash
git config --global --add safe.directory "*"
```

Git **Script** to add **multiple repository** to push code : **git.sh**

```bash
#!/bin/bash

# Git Repository
git remote add gitlab git@gitlab.com:project.git
git remote set-url --add --push origin git@gitlab.com:project.git

git remote add github git@github.com:project.git
git remote set-url --add --push origin git@github.com:project.git

# Display Config
git remote show origin
git config --list
```

## SSH Key

If you want (**it's the best way**), you can configure an **SSH Key** to add to your **account** on your **Git Provider** to don't have to **login** when your need to **communicate** with it (**git clone, git pull, git push**, ...), here a little command to **generate** your **pair of SSH Key** :

```bash
ssh-keygen
```

Now you can go to the **folder** where you have save your **pair of SSH Key** and enter this key into your **account** on your **Git Provider**.
