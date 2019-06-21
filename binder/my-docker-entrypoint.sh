#!/bin/bash

sudo sed -i.bak -e "s@ernie@localhost@" /etc/slurm/slurm.conf
sudo /usr/local/bin/docker-entrypoint.sh
sudo chown ${USER}:${USER} ${HOME}/*ipynb

exec "$@"
