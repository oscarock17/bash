#! /bin/bash

while read line
do
    echo $line
done < "${1:-/dev/stedin}" #recibe un archivo y lo interpreta en consola