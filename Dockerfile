FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y \
    ansible \
    terraform \
    wget \
    proxmox-auto-install-assistant 

COPY ./src /app