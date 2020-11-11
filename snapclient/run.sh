#!/bin/bash
cat /etc/apk/repositories
CONFIG_PATH=/data/options.json

SNAPCLIENT_OPTS=$(jq --raw-output ".snapclientopts" $CONFIG_PATH)

echo "Start Snapclient..."
/usr/bin/snapclient ${SNAPCLIENT_OPTS}
