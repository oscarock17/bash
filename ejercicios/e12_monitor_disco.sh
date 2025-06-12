#!/bin/bash

# =========================================
# Nombre del Script: e12_monitor_disco.sh
# Descripción: Monitoreo de Uso de Disco y Alertas
# Autor: Oscar Diaz
# Uso: ./e12_monitor_disco.sh
# =========================================


ADMIN="prueba@prueba.com"
USO_RAIZ=$(df / | grep / | awk '{print $5}' | sed 's/%//g')
TAMANO_HOME=$(du -sh /home | awk '{print $1}' | sed 's/G//g')

if [ "$USO_RAIZ" -ge 90 ]; then
    echo "¡Alerta: Partición / al ${USO_RAIZ}%!" | mail -s "Alerta Partición /" $ADMIN
fi

if (( $(echo "$TAMANO_HOME > 2" | bc -l) )); then
    echo "¡Alerta: /home ocupa ${TAMANO_HOME}GB!" | mail -s "Alerta Directorio /home" $ADMIN
fi

FECHA=$(date '+%Y-%m-%d %H:%M:%S')
LOGFILE="$HOME/monitor_particiones.log"

echo "$FECHA - Uso de /: ${USO_RAIZ}%" >> $LOGFILE
echo "$FECHA - Tamaño de /home: ${TAMANO_HOME}GB" >> $LOGFILE