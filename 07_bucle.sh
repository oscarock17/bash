#! /bin/bash

numero=0

while [ $numero -le 10 ]
do
	echo $numero
	numero=$((numero + 1))
done

until [ $numero -ge 10 ]
do
	echo $numero
	numero=$((numero + 1))
done


for i in 1 2 3 4 5 #si quieres un rango mas amplico colocarlo asi {0..100..10}
do
	echo $i
done


for (( i=0; i < 10; i++ )) #si quieres contar de 20 en 20 poner asi i+=20
do
	echo $i
done