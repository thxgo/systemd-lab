#!/bin/bash

while true; do
    echo "Dummy service is running. Unix timestamp: $(date +%s)" >> /var/log/dummy-service.log
    sleep 30
done

