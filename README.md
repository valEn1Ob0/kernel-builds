# Kernel Builds (Automated)

Repositorio que descarga automáticamente el kernel más reciente desde kernel.org, genera builds `defconfig` y `debug`, empaqueta artefactos y publica builds completas.

Incluye:
- `defconfig` build
- `debug` build con símbolos y scripts GDB (`scripts/gdb/`)
- Código fuente completo del kernel usado para la build
- Build cache en GitHub Actions para acelerar los tiempos

