#!/bin/sh

SPHINX_PATH="/var/www/newznab/misc/sphinx/"
JBMUX_PATH="/var/www/newznab/misc/update_scripts/nix_scripts/tmux/"

cd ${SPHINX_PATH} %% ./nnindexer.php daemon 2>&1 > /var/log/nn_startup.log && cd ${JBMUX_PATH} && ./start.sh
