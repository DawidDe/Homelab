#!/bin/bash


# Step 1 Setup Server
ansible-playbook ansible/playbooks/server-setup.yml

echo "Press when proxmox is ready"
read

# Step 2 Setup Proxmox
ansible-playbook -i ansible/inventory.ini ansible/playbooks/proxmox-setup.yml --user root --ask-pass