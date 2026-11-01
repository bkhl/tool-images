#!/bin/sh

set -eu

if [ -n "${LUALS_CACHE:-}" ]; then
    mkdir -p "$LUALS_CACHE/addons"
    cp -r /usr/lib/lua-language-server/meta/3rd/. "$LUALS_CACHE/addons/"
fi

exec /usr/bin/lua-language-server "$@"
