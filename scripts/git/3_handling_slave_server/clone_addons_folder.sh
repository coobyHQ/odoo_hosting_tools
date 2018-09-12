#!/bin/bash
################################################################################
# Script to clone Odoo Addons folders V11
# Author: Lucas Huber
################################################################################
# git config --global user.email "admin@yoursite.io"
# git config --global user.name "Odoo addons"

mkdir /opt/odoo/custom/addons
cd /opt/odoo/custom/addons
git clone --depth=5 https://github.com/coobyhq/addons/free1.git
git clone --depth=5 https://github.com/coobyhq/addons/free2.git
git clone --depth=5 https://github.com/coobyhq/addons/muk.git
git clone --depth=5 https://github.com/coobyhq/addons/themes.git
git clone --depth=5 https://github.com/coobyhq/addons/docs.git
git clone --depth=5 https://github.com/coobyhq/addons/not_used.git
git clone --depth=5 https://github.com/coobyhq/addons/test.git
