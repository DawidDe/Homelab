FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt update && apt upgrade -y && apt install -y \
    ansible \
    terraform \
    proxmox-auto-install-assistant \
    python3

COPY ./src /app
COPY ~/.ssh/master /app/ssh-key/master

RUN chmod +x /app/setup.sh

CMD ["/app/setup.sh"]