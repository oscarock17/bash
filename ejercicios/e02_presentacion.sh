#!/bin/bash

# =========================================
# Nombre del Script: e02_presentacion.sh
# Descripción: Script que pida tu nombre y edad y los muestre.
# Autor: Oscar Diaz
# Uso: ./e02_presentacion.sh
# =========================================

read -p "¿Cuál es tu nombre? " nombre
read -p "¿Cuál es tu edad? " edad
echo "Hola, $nombre. Tienes $edad años."