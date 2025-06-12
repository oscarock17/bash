#!/bin/bash

source ./funciones.sh

LOGFILE="usuarios.log"

crear_usuario() {
    local usuario="$1"
    if id "$usuario" &>/dev/null; then
        echo "$(date '+%Y-%m-%d %H:%M:%S') - El usuario '$usuario' ya existe." >> "$LOGFILE"
        echo "El usuario '$usuario' ya existe."
    else
        useradd "$usuario"
        if [ $? -eq 0 ]; then
            echo "$(date '+%Y-%m-%d %H:%M:%S') - Usuario '$usuario' creado." >> "$LOGFILE"
            echo "Usuario '$usuario' creado."
        else
            echo "$(date '+%Y-%m-%d %H:%M:%S') - Error al crear el usuario '$usuario'." >> "$LOGFILE"
            echo "Error al crear el usuario '$usuario'."
        fi
    fi
}

if [ $# -ne 1 ]; then
    echo "Uso: $0 nombre_usuario"
    exit 1
fi

crear_usuario "$1"


