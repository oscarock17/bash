#! /bin/bash

echo "Ingresa tu url: "
read url

curl $url > users.json

