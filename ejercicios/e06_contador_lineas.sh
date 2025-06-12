#!/bin/bash

# =========================================
# Nombre del Script: e06_contador_lineas.sh
# Descripción: Contar el número de líneas de un archivo de texto.
# Autor: Oscar Diaz
# Uso: ./e06_contador_lineas.sh
# =========================================

read -p "Introduce el nombre del archivo: " archivo

if [[ -f "$archivo" ]]; then
  lineas=$(wc -l < "$archivo")
  echo "El archivo '$archivo' tiene $lineas líneas."
else
  echo "El archivo '$archivo' no existe."
fi