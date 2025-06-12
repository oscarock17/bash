#! /bin/bash

nombres=( "pedro" "maria" "rosa" )
echo "los nombres son: ${nombres[*]}"
echo "los nombres son: ${nombres[@]}" #otra forma de escribirlo para traer todos los elementos

echo "el primer elemento ${nombres[0]}" #traer un elemento
echo "los indices de los elementos son: ${!nombres[@]}" #trae los indices de los elementos
echo "el total de elementos son: ${#nombres[@]}" #trae el total de los elementos
echo "el ultimo elemento es: ${nombres[${#nombres[@]}-1]}" #trae el ultimo elemento

#recorrer los elementos
for nombre in ${nombres[@]}
do
    echo "Mi nombre es: $nombre"
done

#eliminar elementos de la lista
unset nombres[2]
echo "los nombres son: ${nombres[*]}"

#añadir un elemento
nombres[${#nombres[@]}]="camila"
nombres+=("andrea") #otra forma de añadir elementos mas facil
echo "elementos: ${nombres[*]}"

#editar un elemento
nombres[1]="maria2"
echo "elementos: ${nombres[*]}"