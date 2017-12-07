#!/bin/bash

echo "killing gpg-agent"
code=0
while [ $code -ne 1 ]; do
    killall gpg-agent 2> /dev/null
    code=$?
    sleep 0.5
done

echo "killed. restarting...."
eval $(gpg-agent --daemon)

echo "restart success."
