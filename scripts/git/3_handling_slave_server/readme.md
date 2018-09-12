Odoo SaaS, Handling of slave server
====================================

This document describes the steps to pull and synchronize the modules to a slave server.

The local path for the source repos is: /opt/odoo/custom/_repos

The local path for the addons is /opt/odoo/custom/addons

And there are two scripts to automate the deployment of the addons.


### New Slave Server deployment

If there is a new slave server you only have to use this script to clone all our addons:

[Clone addons folder](clone_addons_folder.sh "clone_addons_folder")

    1 ./clone-addons-folder.sh
    2 ./git_cmd_pull_over_dir.sh 
    3. Install OCA module_auto_update module

2) needs to be run as cron job once a week or so.



