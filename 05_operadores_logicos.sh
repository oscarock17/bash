#! /bin/bash

edad=19

#if (( $edad < 18 ) && $edad > 40)
if [[ $edad -gt 18 && $edad -lt 40 ]]
then
    echo "edad valida"
else
    echo "edad no valida"
fi

#operadores
#-eq: igual a
#-ne: no igual a
#-lt: menor que
#-le: menor o igual a
#-gt: mayor que
#-ge: mayor o igual a