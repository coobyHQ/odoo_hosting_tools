#!/bin/bash
################################################################################
# Script to clone Odoo V11 extra repositories / addons
# Author: Lucas Huber
################################################################################
# git config --global user.email "lucas.huber@org-it.ch"
# git config --global user.name "Lucas Huber"
# git pull origin --depth=1
# git clone --depth=1  https://github.com/OCA/OCB.git -b 11.0

mkdir /opt/odoo/custom/_repos11
mkdir /opt/odoo/custom/_repos11/yelizariev
cd /opt/odoo/custom/_repos11/yelizariev
git clone --depth=1 https://github.com/it-projects-llc/misc-addons -b 11.0 
git clone --depth=1 https://github.com/it-projects-llc/project.git -b 11.0 
git clone --depth=1 https://github.com/it-projects-llc/website-addons.git -b 11.0 
git clone --depth=1 https://github.com/it-projects-llc/mail-addons -b 11.0
git clone --depth=1 https://github.com/it-projects-llc/access-addons.git -b 11.0
git clone --depth=1  https://github.com/it-projects-llc/odoo-saas-tools.git -b 11.0

# cd /opt/odoo/custom/_repos11/EduERP
# git clone https://github.com/JayVora-SerpentCS/OdooEduERP.git -b 11.0

mkdir /opt/odoo/custom/_repos11/cooby
cd /opt/odoo/custom/_repos11/cooby
# our Sythil Tech repo
git clone --depth=1 https://github.com/coobyHQ/Odoo.git -b 11.0
git clone --depth=1 https://gitlab.com/cooby_agent_portal/marketplace-11  -b master
git clone --depth=1 https://gitlab.com/cooby_agent_portal/agent_portal -b 11.0
git clone --depth=1 https://github.com/coobyHQ/odoo-saas-tools.git -b 11.0
git clone --depth=1 https://gitlab.com/cooby/our-saas.git -b master

# other repos
mkdir /opt/odoo/custom/_repos11/other
cd /opt/odoo/custom/_repos11/other
git clone --depth=1 https://github.com/guohuadeng/app-odoo.git -b 11.0
git clone --depth=1 https://github.com/codup/odoo-eam.git -b 11.0
git clone --depth=1 https://github.com/SythilTech/Odoo.git -b 11.0
# Cubic ERP Accounting restores the Accounting settings with Adviser
git clone --depth=1 https://github.com/CubicERP/apps.git -b 11.0

# Muk-IT DMS Document Management
git clone --depth=1 https://github.com/muk-it/muk_base.git -b 11.0
git clone --depth=1 https://github.com/muk-it/muk_web.git -b 11.0
git clone --depth=1 https://github.com/muk-it/muk_dms.git -b 11.0
git clone --depth=1 https://github.com/muk-it/muk_misc.git -b 11.0
git clone --depth=1 https://github.com/muk-it/muk_website.git -b 11.0

#Scrum scrummer
git clone --depth=1 https://github.com/modoolar/scrummer.git -b 11.0

# Seedoo Documents Signing
# https://github.com/seedoo

#themes
mkdir /opt/odoo/custom/_themes11
cd /opt/odoo/custom/_themes11
git clone https://github.com/Openworx/backend_theme.git -b 11.0
#Html form builder 

# Be cloud member team mail for all partner
# https://apps.odoo.com/apps/modules/9.0/mail_all_on_partner/ 
# https://github.com/be-cloud-be/odoo-modules.git
# https://github.com/mongramosjr/best-deals
