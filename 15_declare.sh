#! /bin/bash

#declare tiene mas propiedades una variable de solo lectura algo asi como una constante para tener mas control sobre las variables

declare -r pwdfile=/etc/passwd #r solo lectura
echo $pwdfile