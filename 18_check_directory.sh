#! /bin/bash

echo "crea el nombre del archivo"
read file

if [ -f $file ] #comprueba si una carpeta existe
then
    echo "Escribe un contenido"
    read contentido
    echo contenido >> $file
    #echo "el directorio $file existe"
else
    echo "el archivo $file no existe"
fi

# -d: compara directorios
# -f: compara archivos