#! /bin/bash

for (( i=0; i < 10; i++ ))
do
	if [ $i -gt 5 ] #se agrega el break por medio de una condicion
    then
        break
    fi
    echo $i
done

for (( i=0; i < 10; i++ ))
do
	if [ $i -eq 5 ] #se agrega el continue para q en la condificon no haga nada
    then
        continue
    fi
    echo $i
done