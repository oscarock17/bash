#!/bin/bash

# =========================================
# Nombre del Script: e11_backup_logs.sh
# Descripción: Crea un backup de los logs del sistema.
# Autor: Oscar Diaz
# Uso: ./e11_backup_logs.sh
# =========================================

RUTA="/var/log"
FECHA=$(date +%Y-%m-%d-%H-%M-%S)
BACKUP_DIR="/home/tu_usuario/backups"

# Crear carpeta de backups si no existe
mkdir -p "$BACKUP_DIR"

# Comprimir carpeta
tar -czf /tmp/logs_$FECHA.tar.gz "$RUTA"

# Mover backup a la carpeta de backups
mv /tmp/logs_$FECHA.tar.gz "$BACKUP_DIR/backup_logs_$FECHA.tar.gz"

# Eliminar backups de más de 7 días y mostrar mensaje
find "$BACKUP_DIR" -name "backup_logs_*.tar.gz" -type f -mtime +7 -exec rm {} \; -exec echo "Backup eliminado: {}" \;