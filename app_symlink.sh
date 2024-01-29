#!/bin/bash
if ln -sf "/app/log/log_$(date +\%Y\%m\%d).txt" /app/log/log.log; then
    echo "Success AppSymlink"
else
    echo "Error: AppSymlink creation failed"
fi


/opt/fluent-bit/bin/fluent-bit -c /etc/fluent-bit/fluent-bit.conf -vv &