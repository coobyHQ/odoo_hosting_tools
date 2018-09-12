#!/bin/bash
################################################################################
# Script for automatic copy modules to addons folder from/through sub folders
# added: Lucas Huber,  Author:
################################################################################

rm -rf /addons_path_to_update/*
find . -mindepth 1 -maxdepth 1 -type d -print -exec cp --archive --verbose {} /addons_path_to_update/ \;


#  find . searches the current directory
#  -type d to find directories, not files
#  -depth 1 for a maximum depth of one sub-directory
#  -exec {} \; runs a custom command for every find
#
#  THIS IS NOT YET WORKING

