# Odoo maintenance tutorial

### How to upgrade a module

The command uses the maintenance instance

    sudo -u odoo /opt/odoo/odoo-server11/odoo-bin -d database_name -u module_name --config=/etc/odoo/odoo-server-m.conf


### How to change email template colors

    1 export all the mail template from the Odoo backend (under settings mail)
    2 You need at least the field body in the CVS
    3 Make a copy / backup of the CVS file
    4 replace the color of Odoo magento "135,90,123" RGB with your desired color 
    5 replace the color of Odoo magento "875a7b" Hex with your desired color
    6 got to the Odoo Backend again and import the edited file  

