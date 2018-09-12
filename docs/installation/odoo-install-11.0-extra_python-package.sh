#!/bin/bash
################################################################################
#
# Script for installing Odoo V11 extra addons and dependies for Ubuntu 16.4
# Author: Lucas Huber
#
################################################################################

# Update distro
sudo apt-get update

# Installing of requirements
# pip3 install -r requirements.txt
# If you are thinking of using Odoo to create your website, it is a good idea to get GeoIP. 
# GeoIP locates the origin of the user and helps your business to understand the demographics better.
wget -N http://geolite.maxmind.com/download/geoip/database/GeoLiteCity.dat.gz && gunzip GeoLiteCity.dat.gz && 
mkdir /usr/share/GeoIP/ && mv GeoLiteCity.dat /usr/share/GeoIP/

# for OCA GeoIP locates import module
sudo apt-get install python-requests python-unicodecsv -y
 
# for OCA auto-backup
sudo pip3 install pysftp

# Install the PyOTP library 
sudo pip3 install pyotp

# Misc libraries
sudo pip3 install unidecode 
sudo pip3 install wand
sudo pip3 install checksumdir
sudo pip3 install num2words
sudo pip3 install cachetools
sudo pip3 install validate_email
sudo pip3 install phonenumbers
sudo pip3 install simplejson

# 2FA module requirement
sudo pip3 install qrcode[pil]

# Certbot install
sudo apt-get install software-properties-common -y
sudo add-apt-repository ppa:certbot/certbot -y
sudo apt-get update
sudo apt-get install python-certbot-nginx -y

# SAML2 needs teh Lasso library
sudo apt-get install libxml2-dev libxmlsec1-dev python3-lasso -y
