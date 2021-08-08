#!/bin/bash
echo "$K_REVISION start"

while true; do
    echo "nc listeing ..." >> /var/log/nc.log
    nc -l -k -e /cloud-run-wrapper.sh -p ${PORT:-8080} >> /var/log/nc.log 2>&1
done
