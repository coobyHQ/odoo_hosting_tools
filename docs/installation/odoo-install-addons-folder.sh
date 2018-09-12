#!/bin/bash
################################################################################
# Script for installing Odoo V11 addons folder
# Author: Lucas Huber
################################################################################

# Creating addons folder
mkdir /opt/odoo/custom/addons.free1
mkdir /opt/odoo/custom/addons.free2
mkdir /opt/odoo/custom/addons.muk
mkdir /opt/odoo/custom/addons.ap
mkdir /opt/odoo/custom/addons.paid
mkdir /opt/odoo/custom/addons.themes
mkdir /opt/odoo/custom/addons.saas

# Coping from repos
# copy  /opt/odoo/custom/_repos11/cooby/odoo-saas-tools /opt/odoo/custom/saas_tools
# find . -mindepth 1 -maxdepth 1 -type d -print -exec copy "tbd" \;

