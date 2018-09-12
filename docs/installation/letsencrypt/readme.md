Letsencrypt tutorial
====================

### How to setup Let's Encrypt for Nginx on Ubuntu 16.04 (including IPv6, HTTP/2 and A+ SLL rating)
https://gist.github.com/cecilemuller/a26737699a7e70a7093d4dc115915de8

## Getting new certs with nginx plugin
sudo certbot --nginx certonly

sudo nginx -s reload -t

## Steps to generate wildcard certificate

https://asknetsec.com/generate-lets-encrypt-free-wildcard-certificate-using-certbot-ubuntu-16-04/

Run this below command on the linux cli.

    sudo certbot certonly --manual -d cooby.io -d *.cooby.io --agree-tos --no-bootstrap --manual-public-ip-logging-ok --preferred-challenges dns-01 --server https://acme-v02.api.letsencrypt.org/directory

Replace *.cooby.io with your domain name for example *.yourdomainname.com. Once you run this command it will generate a text DNS value.

The command output will be similar to the one below

    debug log to /var/log/letsencrypt/letsencrypt.log
    Plugins selected: Authenticator manual, Installer None
    Enter email address (used for urgent renewal and security notices) (Enter 'c' to
    cancel): admin@asknetsec.com
    Starting new HTTPS connection (1): acme-v02.api.letsencrypt.org

    -------------------------------------------------------------------------------
    Would you be willing to share your email address with the Electronic Frontier
    Foundation, a founding partner of the Let's Encrypt project and the non-profit
    organization that develops Certbot? We'd like to send you email about EFF and
    our work to encrypt the web, protect its users and defend digital rights.
    -------------------------------------------------------------------------------
    (Y)es/(N)o: N
    Starting new HTTPS connection (1): supporters.eff.org
    Obtaining a new certificate
    Performing the following challenges:
    dns-01 challenge for asknetsec.com

    -------------------------------------------------------------------------------
    Please deploy a DNS TXT record under the name
    _acme-challenge.asknetsec.com with the following value:

    AVOwxVcSTfASueHcoOosBFF4sxEFZuso5ip6w63GrMs

    Before continuing, verify the record is deployed.

    -------------------------------------------------------------------------------
    Press Enter to Continue