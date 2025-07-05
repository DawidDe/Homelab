#!/bin/bash

# Step 1 Setup Server
ansible-playbook ansible/playbooks/server-setup.yml

echo "Press when proxmox is ready"
read

# Step 2 Add SSH Key
ssh-copy-id -i ~/.ssh/master.pub root@192.168.178.192

# Step 3 Setup Proxmox
ansible-playbook -i ansible/inventory.ini ansible/playbooks/proxmox-setup.yml --user root --private-key ~/.ssh/master