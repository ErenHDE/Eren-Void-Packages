#!/bin/bash
CODEMAPFILE=()
lines=()

[[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/antigravity-flags.conf" ]] && mapfile -t < "${XDG_CONFIG_HOME:-$HOME/.config}/antigravity-flags.conf" CODEMAPFILE

antigravityflags=()
for line in "${CODEMAPFILE[@]}"; do
    [[ ! "${line}" =~ ^[[:space:]]*#.* ]] && [[ -n "${line}" ]] && antigravityflags+=("${line}")
done

ELECTRON_RUN_AS_NODE=1 exec electron35 /usr/lib/antigravity/out/cli.js --app=/usr/lib/antigravity/ "${antigravityflags[@]}" "$@"
