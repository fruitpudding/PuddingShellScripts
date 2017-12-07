#!/bin/bash
printf "Activiting Brevent....\n\n"
adb shell "sh /data/data/me.piebridge.brevent/brevent.sh"

if [[ $? -eq 0 ]]; then
    printf "\nBrevent activation successful.\n"
else
    printf "\nBrevent activation failed.\n"
fi
