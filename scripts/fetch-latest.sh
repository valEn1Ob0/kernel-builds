#!/usr/bin/env bash
set -euo pipefail

MONIKER="${1:-mainline}"

INFO=$(curl -s https://www.kernel.org/releases.json)
URL=$(echo "$INFO" | jq -r --arg m "$MONIKER" '.releases[] | select(.moniker==$m) | .source')
VER=$(echo "$INFO" | jq -r --arg m "$MONIKER" '.releases[] | select(.moniker==$m) | .version')

if [ -z "$URL" ] || [ "$URL" = "null" ]; then
    echo "No se pudo obtener la URL del kernel ($MONIKER)."
    exit 1
fi

echo "$VER" > latest.txt
echo "Descargando kernel $VER ($MONIKER)"
wget -c "$URL"

TAR="$(basename "$URL")"
tar -xf "$TAR"

mv "linux-$VER" "kernel-source"
echo "Fuente extraída en kernel-source/"

