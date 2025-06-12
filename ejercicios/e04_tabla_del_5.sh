#!/bin/bash

# =========================================
# Nombre del Script: e04_tabla_del_5.sh
# Descripción: Script que muestra la tabla de multiplicar del 5.
# Autor: Oscar Diaz
# Uso: ./e04_tabla_del_5.sh
# =========================================
for i in {1..10}
do
  echo "5 x $i = $((5 * i))"
done