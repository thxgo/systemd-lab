#!/usr/bin/env bash

if [ ${EUID} -ne 0 ]
then
	exit 1 
fi

apt-get update 1>/dev/null 2>>/var/log/sys-update.log && \
apt-get upgrade -y 2>>/var/log/sys-update.log && \
apt-get autoremove -y 2>>/var/log/sys-update.log

echo "$(date): update concluído" >> /var/log/sys-update.log
