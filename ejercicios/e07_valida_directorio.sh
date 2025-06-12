#!/bin/bash

# =========================================
# Nombre del Script: e07_valida_directorios.sh
# Descripción: Validar si un directorio existe, y si no, crearlo.
# Autor: Oscar Diaz
# Uso: ./e07_valida_directorios.sh
# =========================================

read -p "Introduce el nombre del directorio: " dir

if [ -d "$dir" ]; then
  echo "El directorio '$dir' ya existe."
else
  mkdir -p "$dir"
  echo "El directorio '$dir' ha sido creado."
fi