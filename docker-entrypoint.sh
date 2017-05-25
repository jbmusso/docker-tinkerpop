#!/bin/bash

set -e

cd /opt/gremlin-server

CONF_FILE=$1

# IP substitution hack borrowed from:
# https://github.com/htaox/NEAT/blob/94a004831cf89767e116d955192fc14ac82e5069/docker-scripts/gremlin-server-3.0.0/files/default_cmd#L5
IP=$(ip -o -4 addr list eth0 | perl -n -e 'if (m{inet\s([\d\.]+)\/\d+\s}xms) { print $1 }')
sed -i "s|^host:.*|host: $IP|" $CONF_FILE

exec /opt/gremlin-server/bin/gremlin-server.sh "$@"
