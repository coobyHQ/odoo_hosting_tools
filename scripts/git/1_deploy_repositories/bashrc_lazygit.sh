#!/usr/bin/env bash
# from https://stackoverflow.com/questions/19595067/git-add-commit-and-push-commands-in-one

# Making lazygit a function instead of an alias allows you to pass it an argument. I have added the following to my .bashrc (or .bash_profile if Mac):

function lazygit() {
    git add .
    git commit -a -m "$1"
    git push
}
export -f lazygit
# This allows you to provide a commit message, such as lazygit "My commit msg"
# You could of course beef this up even more by accepting even more arguments, such as which remote place to push to, or which branch.

