#!/bin/bash
set -eu

if [ "$1" = 'bro' -o "${1:0:1}" = '-' ]; then
    exec bro "$@"
fi

exec "$@"

