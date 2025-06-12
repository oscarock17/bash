#!/bin/bash

# =========================================
# Nombre del Script: e05_mayor_de_tres.sh
# Descripción: Script que lee tres números e imprimir el mayor.
# Autor: Oscar Diaz
# Uso: ./e05_mayor_de_tres.sh
# =========================================

read -p "Ingrese el primer número: " num1
read -p "Ingrese el segundo número: " num2
read -p "Ingrese el tercer número: " num3

mayor=$num1

if [ "$num2" -gt "$mayor" ]; then
  mayor=$num2
fi

if [ "$num3" -gt "$mayor" ]; then
  mayor=$num3
fi

echo "El mayor número es: $mayor"