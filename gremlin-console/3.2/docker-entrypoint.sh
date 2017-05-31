#!/bin/bash

set -e

cd /opt/gremlin-console

exec /opt/gremlin-console/bin/gremlin.sh "$@"
