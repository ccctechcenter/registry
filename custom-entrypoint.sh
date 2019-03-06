#!/bin/sh

set -e

echo "${REGISTRY_PASSWORD_LIST}" > /auth/htpasswd

case "$1" in
    *.yaml|*.yml) set -- registry serve "$@" ;;
    serve|garbage-collect|help|-*) set -- registry "$@" ;;
esac

exec "$@"
