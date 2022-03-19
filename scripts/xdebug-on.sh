#!/usr/bin/env bash

# ENABLES AUTO-RUNNING XDEBUG WITH EVERY PHP SCRIPT STARTED ON COMMAND LINE
host=$MAIN_HOSTNAME

if [[ "$1" != "" ]]; then
    host=$1
fi

export XDEBUG_CONFIG="start_with_request=yes"
export PHP_IDE_CONFIG="serverName=$host"

echo "xdebug enabled"
echo
