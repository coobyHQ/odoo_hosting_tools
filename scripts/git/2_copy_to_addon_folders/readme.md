Odoo SaaS, Copy to addon folders
=================================

This document describes the steps to manage the the upgrade process of the previous deployd Odoo modules.
There are 9 Github repositories which contain all the additional modules on the platform.

, Updating those modules with automated scripts

Please don't add any other folder or files there!

The corresponding Github repos are here:

https://github.com/coobyHQ/odoo_addons.git

The local path for the addons is /opt/odoo/custom/addons
The local path for the source repos is: /opt/odoo/custom/_repos

The basic update workflow on a master server should happen according the following scheme:

    external Repo1 -\
    external Repo1 --> git_cmd_pull_over_dir.sh -> ./module_copy_over_list_*.sh -> to custom/addons/xxxx
    external Repo1 -/       \to /custom/_repos


And there are several scripts to automate the update of the addons.

The master server for the addons handling is our Staging server xx.xx.xx.xx.

### Master Server module update
Master server module repositories can be updated according the workflow.


    1 Go to custom/_repos/oca run ./git_pull_over_dir.sh
    2 Do the same for other base repos on _repos/other for instance.
    3 Run ./module_copy_over_list_oca.sh
    4 Run ./module_copy_over_list_other.sh
    5 Check if the Odoo instances er still running and the Odoo log files. 
    6 Run ./module_new_copy_over_list_oca.sh
    7 Run ./module_new_copy_over_list_other.sh
    8 Do a restart of the maintenance instance.
    9 Check if the server is still running and the log file of the maintenance instance. 
    10 Update module_copy_table_*.csv if necessary
    11 Push / Commit the addons modules repos to Github using lazygit_addons.sh.

1) If it is not running as a cron job

3)4)6)7) should be run manually because you need to check if the server does still work.

11) New updated addons repos have to tested there and then be pushed to the Github repo (via lazygit).
    lazygit_addons.sh is a script that commits and pushes the repos to git with a predefined commit message.