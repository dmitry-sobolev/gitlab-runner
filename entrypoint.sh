#!/bin/sh

set -e

if test ! -e /var/run/docker.sock; then
    echo "Docker unix socket not found!"
    exit 1
fi

if test ! -f $CONFIG_FILE; then
    cat > $CONFIG_FILE <<EOF
concurrent = $RUNNER_CONCURRENCY

EOF
fi

exec /usr/bin/dumb-init /entrypoint run --user=$RUNNER_USER --working-directory=$RUNNER_WORKING_DIR
