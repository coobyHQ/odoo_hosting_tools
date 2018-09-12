Odoo SaaS Deploying Addons
===========================

This document describes the steps to deploy a bunch of useful Odoo modules to a new server.

The local path for the source repos is: /opt/odoo/custom/_repos

The local path for the addons is /opt/odoo/custom/addons


The basic start workflow on a master server should happen according the following scheme:

    external Repo1 -\
    external Repo1 --> oca.sh/other.sh /custom/_repos -> manual copying -> to custom/addons/xxxx
    external Repo1 -/


And there are several scripts to automate the deployment of the addons.
You need eventually to adapt the scripts to your needs in regard of the soruces you want to deploy.


### New Master Server deployment
A Master server is a standalone Server or Master Server which is able to push and commit changes to the addons repos.

For a brand new server that's the workflow.


    1 ./oca.sh, Deploy a bunch of useful OCA modules 
    2 ./other.sh, Deploy a bunch of useful more free modules 
    3 ./create_addons_folders.sh, Creates the necessary addons folders
    4 ./git_pull_over_dir.sh
    5 Install OCA module_auto_update module

4) needs to be run as cron job once a week or so.

5) would then be the OCA module_auto_update. Then everything should run smoothly.
