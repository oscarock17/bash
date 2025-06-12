#!/bin/bash

# =========================================
# Nombre del Script: e01_mi_status.sh
# Descripción: Script que muestra el usuario actual, el directorio actual y la fecha.
# Autor: Oscar Diaz
# Uso: ./e01_mi_status.sh
# =========================================

echo "Usuario: $(whoami)"
echo "Directorio actual: $(pwd)"
echo "Fecha: $(date)"