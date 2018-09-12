#!/bin/bash
################################################################################
# Script to clone Odoo V11 OCA extra repositories / addons
# Author: Lucas Huber
################################################################################
# git config --global user.email "lucas.huber@org-it.ch"
# git config --global user.name "Lucas Huber"
# It is recommended using OCA version of Odoo https://github.com/OCA/OCB.git
# git clone --depth=1 https://github.com/OCA/OCB.git -b 11.0

mkdir /opt/odoo/custom/_repos11
mkdir /opt/odoo/custom/_repos11/oca
cd /opt/odoo/custom/_repos11/oca
git clone --depth=1 https://github.com/oca/account-analytic.git -b 11.0
git clone --depth=1 https://github.com/oca/account-closing.git -b 11.0
git clone --depth=1 https://github.com/oca/account-financial-reporting.git -b 11.0
git clone --depth=1 https://github.com/oca/account-financial-tools.git -b 11.0
git clone --depth=1 https://github.com/oca/account-invoicing.git -b 11.0
git clone --depth=1 https://github.com/oca/account-payment.git -b 11.0
git clone --depth=1 https://github.com/oca/account-reconcile.git -b 11.0
git clone --depth=1 https://github.com/oca/bank-payment.git -b 11.0
git clone --depth=1 https://github.com/oca/business-requirement.git -b 11.0
git clone --depth=1 https://github.com/oca/commission.git -b 11.0
git clone --depth=1 https://github.com/oca/community-data-files -b 11.0
git clone --depth=1 https://github.com/oca/connector.git -b 11.0
git clone --depth=1 https://github.com/oca/contract.git -b 11.0
git clone --depth=1 https://github.com/oca/currency.git -b 11.0
git clone --depth=1 https://github.com/oca/crm.git -b 11.0
git clone --depth=1 https://github.com/OCA/data-protection -b 11.0
git clone --depth=1 https://github.com/oca/e-commerce.git -b 11.0
git clone --depth=1 https://github.com/oca/edi.git -b 11.0
git clone --depth=1 https://github.com/oca/event.git -b 11.0
git clone --depth=1 https://github.com/oca/hr.git -b 11.0
git clone --depth=1 https://github.com/oca/knowledge.git -b 11.0
git clone --depth=1 https://github.com/oca/l10n-germany.git -b 11.0
git clone --depth=1 https://github.com/oca/l10n-switzerland.git -b 11.0
git clone --depth=1 https://github.com/oca/management-system.git -b 11.0
git clone --depth=1 https://github.com/oca/mis-builder.git -b 11.0
git clone --depth=1 https://github.com/oca/operating-unit -b 11.0
git clone --depth=1 https://github.com/oca/partner-contact.git -b 11.0
git clone --depth=1 https://github.com/oca/project.git -b 11.0
git clone --depth=1 https://github.com/oca/queue.git -b 11.0
git clone --depth=1 https://github.com/oca/reporting-engine.git -b 11.0
git clone --depth=1 https://github.com/oca/sale-workflow.git -b 11.0
git clone --depth=1 https://github.com/oca/server-auth.git -b 11.0
git clone --depth=1 https://github.com/oca/server-backend.git -b 11.0
git clone --depth=1 https://github.com/oca/server-brand -b 11.0
git clone --depth=1 https://github.com/oca/server-tools.git -b 11.0
git clone --depth=1 https://github.com/oca/server-ux.git  -b 11.0
git clone --depth=1 https://github.com/oca/social.git -b 11.0
git clone --depth=1 https://github.com/oca/vertical-association.git -b 11.0
git clone --depth=1 https://github.com/oca/web.git -b 11.0
git clone --depth=1 https://github.com/oca/website-cms.git -b 11.0
git clone --depth=1 https://github.com/oca/website.git -b 11.0
git clone --depth=1 https://github.com/oca/website-themes.git -b 11.0

# git clone --depth=1 https://github.com/oca/app-store.git -b 11.0
# git clone --depth=1 https://github.com/oca/vertical-medical.git -b 11.0
