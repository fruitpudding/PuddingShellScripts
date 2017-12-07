#! /bin/bash

shopt -s nocasematch
/usr/bin/ssh "$@"
if [ $? -ne 0 ]; then
    read -p "Failed to login. Do you want to restart gpg-agent? [y/N]" usrinput
    if [ "$usrinput" == "y" ]; then
        source /Users/pudding/scripts/restart_gpgagent.sh
        ssh $1
    fi
fi
