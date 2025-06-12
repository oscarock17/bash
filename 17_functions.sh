#! /bin/bash

function sayHello(){
    message="Hola mundo" #colocando asi "local variable" se define como local q solo funciona en la funcion
    echo $message
}

function sayHello2(){
    echo "Hola $1" #se le pasa argumentos
}

sayHello
sayHello2 "pepe"