FROM debian:bookworm

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt install -y gnupg software-properties-common wget

# Add HashiCorp Repo
RUN wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null
RUN gpg --no-default-keyring --keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg --fingerprint
RUN echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(grep -oP '(?<=UBUNTU_CODENAME=).*' /etc/os-release || lsb_release -cs) main" | tee /etc/apt/sources.list.d/hashicorp.list

# Add Proxmox Repo
RUN echo "deb http://download.proxmox.com/debian/pve bookworm pve-no-subscription" | tee /etc/apt/sources.list.d/proxmox-no-subscription.list
RUN wget -qO - http://download.proxmox.com/debian/proxmox-release-bookworm.gpg | apt-key add -

RUN apt update && apt install -y \
    ansible \
    terraform \
    proxmox-auto-install-assistant \
    python3

COPY ./src /app
COPY /home/dawid/.ssh/master /app/ssh-key/master

RUN chmod +x /app/setup.sh