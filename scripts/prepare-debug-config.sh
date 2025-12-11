#!/usr/bin/env bash
set -euo pipefail

KERNEL_DIR="$1"

cd "$KERNEL_DIR"

echo "Generando defconfig base..."
make defconfig

# Activar simbolos y scripts gdb
echo "CONFIG_DEBUG_INFO=y" >> .config
echo "CONFIG_GDB_SCRIPTS=y" >> .config

# Generar scripts de gdb
make scripts_gdb

echo "Configuración de debug lista."

