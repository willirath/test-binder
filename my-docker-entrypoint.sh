#!/bin/bash

sudo sed -i.bak -e "s@ernie@$HOSTNAME@" /etc/slurm/slurm.conf
sudo /usr/local/bin/docker-entrypoint.sh

exec "$@"
