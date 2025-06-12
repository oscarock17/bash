#! /bin/bash

echo $1 $2 #leer argumentos de forma manual

echo $@ #muestra todos los argumentos

echo $# #cuenta todos los argumentos

args=("$@")

echo "resultado: ${args[4]}" #accede a los argumentos como un array
