#!/usr/bin/env bash
set -euo pipefail

SRC="kernel-source"
OUT="../artifacts/source"

mkdir -p "$OUT"

cp -r "$SRC" "$OUT/kernel-source"
cp latest.txt "$OUT/"
echo "Código fuente y metadatos empaquetados."

