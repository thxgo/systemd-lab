#!/usr/bin/env bash
[ ${EUID} -ne 0 ] && exit 1

[ ! -f /var/log/sys-update.log ] && install -m 640 /dev/null /var/log/sys-update.log

apt-get update 2>>/var/log/sys-update.log && \
apt-get upgrade -y 2>>/var/log/sys-update.log && \
apt-get autoremove -y 2>>/var/log/sys-update.log

echo "$(date): update concluído" >> /var/log/sys-update.log#!/usr/bin/env bash
