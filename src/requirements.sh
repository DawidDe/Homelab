#!/bin/bash

sudo pacman -Syu --noconfirm ansible terraform python-passlib sshpass

cd terraform

terraform init

cd ..

clear