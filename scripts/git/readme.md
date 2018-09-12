Odoo SaaS Addons Handling process
==================================

This document describes the steps to manage the the upgrade and handling of Odoo modules.
There are 9 Github repositories which contain all the additional modules on the platform.

        /opt/odoo/custom/addons/ap
        /opt/odoo/custom/addons/free1
        /opt/odoo/custom/addons/free2
        /opt/odoo/custom/addons/muk
        /opt/odoo/custom/addons/paid
        /opt/odoo/custom/addons/saas
        /opt/odoo/custom/addons/test
        /opt/odoo/custom/addons/themes
        /opt/odoo/custom/addons/themes_paid

Please don't add any other folder or files there!

The corresponding Github repos are here:



The local path for the addons is /opt/odoo/custom/addons
The local path for the source repos is: /opt/odoo/custom/_repos


The basic start workflow on a master server should happen according the following scheme:

    external Repo1 -\
    external Repo1 --> oca.sh/other.sh /custom/_repos -> manual copying -> to custom/addons/xxxx
    external Repo1 -/

The basic update workflow on a master server should happen according the following scheme:

    external Repo1 -\
    external Repo1 --> git_cmd_pull_over_dir.sh -> ./module_copy_over_list_*.sh -> to custom/addons/xxxx
    external Repo1 -/       \to /custom/_repos


And there are several scripts to automate the deployment of the addons.
The scripts are in this three subfolders:

[Deployment Of Repositories](./1_deploy_repositories "Deployment Of Repositories"), Deploy a bunch of usefull modules to a new server

[Copy to addon folders](./2_copy_to_addon_folders "Copy to addon folders"), Updating those modules with automated scripts

[Handling of slave server](./3_handling_slave_server "Handling of slave server"), Pull and synchronize the modules to a slave server

[Work in Progress Scripts](./_wip "Work in Progress Scripts"), This scripts are not yet ready

Credits
=======

Contributors
------------

* Lucas Huber, Cooby tec <lh@cooby.io>
* Dave Cook, Cooby tec  (dc@cooby.io)
