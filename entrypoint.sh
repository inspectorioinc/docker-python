#!/bin/bash
# Filename: entrypoint.sh
# Description: Docker entrypoint script for Inspectorio Python base image

set -euxo pipefail

export NGINX_WORKER=${NGINX_WORKER:-4}

# shellcheck disable=SC2094
envsubst < "/etc/nginx/nginx.conf" > "/etc/nginx/nginx.conf"

/usr/bin/supervisord -n -c /etc/supervisor/supervisord.conf
