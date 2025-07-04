#!/bin/bash

# Step 1 Setup Server
ansible-playbook ansible/playbooks/server-setup.yml

# Step 2 Setup Proxmox
ansible-playbook -i ans