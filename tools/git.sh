#!/bin/bash

# Git Repository
git remote add gitlab git@gitlab.com:progdevlab/dyntools.git
git remote set-url --add --push origin git@gitlab.com:progdevlab/dyntools.git

git remote add github git@github.com:ProgDevLab/DynTools.git
git remote set-url --add --push origin git@github.com:ProgDevLab/DynTools.git

# Display Config
git remote show origin
git config --list
