#!/bin/bash
################################################################################
# Script for automatic pull from git through sub folders
# added: Lucas Huber,  Author: https://stackoverflow.com/questions/3497123/run-git-pull-over-all-subdirectories
################################################################################

find . -mindepth 1 -maxdepth 1 -type d -print -exec git -C {} pull \;

#  find . searches the current directory
#  -type d to find directories, not files
#  -maxdepth 1 for a maximum depth of one sub-directory
#  -exec {} \; runs a custom command for every find
#  git --git-dir={}/.git --work-tree=$PWD/{} pull git pulls the individual directories

# alternative
# find . -type d -depth 1 -exec git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;
# find . -type d -maxdepth 1 -exec echo git --git-dir={}/.git --work-tree=$PWD/{} status \;
# find . -type d -maxdepth 1 -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;

