#!/usr/bin/env bash
# from https://stackoverflow.com/questions/19595067/git-add-commit-and-push-commands-in-one
# Making lazygit a function instead of an alias allows you to pass it an argument. I have added the following to my .bashrc (or .bash_profile if Mac):
# git config --global user.email "admin@cooby.io"
# git config --global user.name "Admin"

clear
echo "Lazygt add,commit & push"

MESSAGE="Update commit from Staging Server 159.69.19.208"

git add .
git commit -a -m "$MESSAGE"
echo
git push
echo

# This allows you to provide a commit message, such as lazygit "Initial commit from Staging Server 159.69.19.208"
# You could of course beef this up even more by accepting even more arguments, such as which remote place to push to, or which branch.

