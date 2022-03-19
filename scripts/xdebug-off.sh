#!/usr/bin/env bash

# DISABLES AUTO-RUNNING XDEBUG WITH EVERY PHP SCRIPT STARTED ON COMMAND LINE
export XDEBUG_CONFIG="start_with_request=trigger"

echo "xdebug disabled"
echo
