#! /bin/bash

ls 1> file.txt #se guarda el output o la salida del comando en un txt

ls -123 1>file.txt 2>error.txt #se guarda el ouput de error del comando en un txt

#ls > file.txt 2>&1 #guarda el output del error en el mismo archivo
#ls -123 >& file.txt #hace lo mismo pero la sintaxis es mas corta