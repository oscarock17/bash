#!/bin/bash

# =========================================
# Nombre del Script: e03_multiplicar.sh
# Descripción: Script que reciba dos números por argumento y muestre el resultado de la multiplicación.
# Autor: Oscar Diaz
# Uso: ./e03_multiplicar.sh
# =========================================

# Verifica si se proporcionaron dos argumentos
if [ $# -ne 2 ]; then
  echo "Uso: $0 num1 num2"
  exit 1
fi

# Realiza la multiplicación de los dos números
resultado=$(( $1 * $2 ))
echo "El resultado de multiplicar $1 por $2 es: $resultado"