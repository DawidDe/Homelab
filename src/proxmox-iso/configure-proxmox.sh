#!/bin/bash

apt update
rm /etc/apt/sources.list.d/pve-enterprise.list
rm /etc/apt/sources.list.d/ceph.list
echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" > /etc/apt/sources.list
apt update && apt dist-upgrade -y