#!/bin/bash

set -e

cd /opt/gremlin-server

CONF_FILE=$1

IP=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')

sed -i "s|^host:.*|host: $IP|" $CONF_FILE

exec /opt/gremlin-server/bin/gremlin-server.sh "$@"
