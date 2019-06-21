#!/bin/bash

sudo chown ${USER}:${USER} ${HOME}/*ipynb
sudo /usr/local/bin/docker-entrypoint.sh

exec "$@"
