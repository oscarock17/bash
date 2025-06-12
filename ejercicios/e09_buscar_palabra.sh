#!/bin/bash

# =========================================
# Nombre del Script: e09_buscar_palabra.sh
# Descripción: Busca una palabra en un archivo
# Autor: Oscar Diaz
# Uso: ./e09_buscar_palabra.sh
# =========================================

# Verifica que se reciban dos argumentos
if [ "$#" -ne 2 ]; then
  echo "Necesitas ingresar 2 argumentos: $0 <file> <palabra>"
  exit 1
fi

# Busca la palabra en el archivo usando grep
if grep -q "$2" "$1"; then
  echo "¡Encontrado!"
else
  echo "No encontrado."
fi