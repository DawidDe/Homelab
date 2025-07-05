#!/bin/bash

# Step 1 Start HTTP Server
python3 -m http.server 8000 &

# Step 2 Create Proxmox ISO
cd proxmox-iso
chmod +x create-iso.sh
./create-iso.sh
cd ..

# Step 3 Put IP as variable in ansible vars
ip=$(ip addr show | awk '/inet / && $2 !~ /^127/ {sub(/\/.*/, "", $2); print $2; exit}')
echo 'webserver_ip: "$ip"' >> ansible/group_vars.yml

# Step 4 Setup Server
ansible-playbook ansible/playbooks/server-setup.yml

sleep 300

# Step 5 Setup Proxmox
ansible-playbook -i ansible/inventory.ini ansible/playbooks/proxmox-setup.yml --user root --private-key ssh-key/master