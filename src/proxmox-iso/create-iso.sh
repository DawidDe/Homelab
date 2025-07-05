#!/bin/bash

curl -o proxmox.iso https://enterprise.proxmox.com/iso/proxmox-ve_8.4-1.iso

proxmox-auto-install-assistant prepare-iso proxmox.iso --fetch-from iso --answer-file answer.toml --on-first-boot configure-proxmox.sh