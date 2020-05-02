#!/bin/bash
# eval $(ssh-agent -c)
# echo "I'm executed"
clear
echo "date" $(date)
echo pid: $SSH_AGENT_PID

cd ~/main_odoo/odoo
git fetch --all
cd ~/main_odoo/enterprise
git fetch --all
