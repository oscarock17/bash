#!/bin/bash

# =========================================
# Nombre del Script: e10_servicio_status.sh
# Descripción: Revisa varios servicios del sistema e informa cuales estan activos y cuales no.
# Autor: Oscar Diaz
# Uso: ./e10_servicio_status.sh
# =========================================

servicios=("nginx" "mysql" "docker")

for servicio in "${servicios[@]}"; do
  if systemctl is-active --quiet "$servicio"; then
    echo "El servicio $servicio está ACTIVO."
  else
    echo "El servicio $servicio NO está activo."
  fi
done