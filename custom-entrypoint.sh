#!/bin/bash

echo "${REGISTRY_PASSWORD_LIST}" > /auth/htpasswd

exec /entrypoint.sh
