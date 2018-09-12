#!/bin/bash
################################################################################
# Script for installing Odoo V11 extra tools for Ubuntu 16.4
# Author: Lucas Huber
################################################################################

# and these dependencies for the chatbot module:
sudo pip3 install chatterbot --upgrade --ignore-installed pyyaml
sudo apt-get install mongodb

# Install letsencrypt
sudo apt-get update
sudo apt-get install software-properties-common
sudo add-apt-repository ppa:certbot/certbot
sudo apt-get update
sudo apt-get install python-certbot-nginx  
# Install from GIT 
git clone --depth=1 https://github.com/certbot/certbot.git

# How to setup Let's Encrypt for Nginx on Ubuntu 16.04 (including IPv6, HTTP/2 and A+ SLL rating)
https://gist.github.com/cecilemuller/a26737699a7e70a7093d4dc115915de8
# How To Generate Let's Encrypt Free Wildcard Certificate Using Certbot on Ubuntu 16.04
https://asknetsec.com/generate-lets-encrypt-free-wildcard-certificate-using-certbot-ubuntu-16-04/

# Install fail2ban (secures the ssh login)
apt-get install fail2ban

# Install sendmail !! not yet startable
apt-get install sendmail

# Install NGINX
apt-get install nginx
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048


# Install autopostgresqlbackup  heirloom-mailx
sudo apt-get install autopostgresqlbackup

# PGtune
# Postgres pgtune Ubuntu not anymore available see http://pgtune.leopard.in.ua/

# Install uncomplicated firewall
# sudo apt-get install ufw

# sudo ufw allow ssh
# sudo ufw allow 80/tcp
# Attention that will ev. block you out from the server
# sudo ufw enable