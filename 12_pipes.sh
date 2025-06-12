#! /bin/bash

mensaje="hola mundo"

echo $mensaje | wc -m #se pueden pasar las salidas de un comando a otro por medio del pipe |

./otro_script #llama otro script si se quiere acceder a una variable hay q exportarla copn el export $variable