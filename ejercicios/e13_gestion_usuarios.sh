#!/bin/bash

# =========================================
# Nombre del Script: e13_gestion_usuarios.sh
# Descripción: Crea un usuario si no existe, y registra la acción en un log.
# Autor: Oscar Diaz
# Uso: ./e13_gestion_usuarios.sh
# =========================================

# Verifica si se proporcionó un nombre de usuario
if [ -z "$1" ]; then
  echo "Uso: $0 nombre_usuario"
  exit 1
fi

USUARIO="$1"
LOGFILE="usuarios.log"
FECHA=$(date +"%Y-%m-%d %H:%M:%S")

# Verifica si el usuario ya existe
if id "$USUARIO" &>/dev/null; then
  echo "$FECHA - El usuario '$USUARIO' ya existe." >> "$LOGFILE"
  echo "El usuario '$USUARIO' ya existe."
else
  # Crea el usuario
  sudo useradd "$USUARIO"
  if [ $? -eq 0 ]; then
    echo "$FECHA - Usuario '$USUARIO' creado exitosamente." >> "$LOGFILE"
    echo "Usuario '$USUARIO' creado exitosamente."
  else
    echo "$FECHA - Error al crear el usuario '$USUARIO'." >> "$LOGFILE"
    echo "Error al crear el usuario '$USUARIO'."
  fi
fi