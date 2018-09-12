#!/bin/bash
################################################################################
# Script for automatic copying new Odoo modules to addons folder /test from repos folders.
# The scripts screens an additional csv file in the same folder, which contains
# source address. Destination address is always the same
# The script deletes the destination module folder first, before copying.
# The script copies only newly changed modules.
# The script excludes addons that are already in the /nut_used folder
# Concept: Lucas Huber (lh@cooby.io),  Author: Dave Cook (dc@cooby.io)
################################################################################

# Init some vars
INPUT=module_copy_table_oca.csv
SRC=/opt/odoo/custom/_repos11
DST=/opt/odoo/custom/test
EXCL=/opt/odoo/custom/nut_used
OLDIFS=$IFS
IFS=,

# Check for .csv file
[ ! -f $INPUT ] && { echo "$INPUT file not found"; exit 99; }

# Process .csv and copy files
sed 1d $INPUT | while read src dest
do
    # See if dir exists
    if [ -d "$DST/$src" ]; then rm -Rf $DST/$src; fi

    sudo mkdir -p $DST/$dest
    sudo cp -R $SRC/$src $DST/$dest
done

sudo chown -R odoo.odoo $DST

# Reset IFS
IFS=$OLDIFS
