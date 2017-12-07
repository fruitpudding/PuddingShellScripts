#! /bin/bash

ssh "$@"
shopt -s nocasematch
if [ $? -ne 1 ]; then
    read -p "Failed to login. Do you want to restart gpg-agent? [y/N]" usrinput
    if [ "$usrinput" == "y" ]; then
        source /Users/pudding/scripts/restart_gpgagent.sh
        ssh $1
    fi
fi
