#! /bin/bash

echo "entra tu password"
read input1

echo "repite el password"
read input2

if [ $input1 == $input2 ]
then
    echo "claves iguales"
else
    echo "clave incorrecta..."
fi

result="$name is $adjetivo" #concatenacion
echo ${name,,} #convierte en minusculas
echo ${name^^}} #convierte en mayusculas
echo ${name,,[AEIOU]}} #convierte algunas letras a minusculas