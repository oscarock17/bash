#!/bin/bash

# =========================================
# Nombre del Script: e08_menu_interactivo.sh
# Descripción: Crear un menú interactivo con opciones.
# Autor: Oscar Diaz
# Uso: ./e08_menu_interactivo.sh
# =========================================

while true; do
  echo "===== Menú Principal ====="
  echo "1. Mostrar fecha actual"
  echo "2. Mostrar usuarios conectados"
  echo "3. Mostrar espacio en disco"
  echo "4. Salir"
  echo "=========================="
  read -p "Seleccione una opción [1-4]: " opcion

  case $opcion in
    1)
      echo "Fecha actual: $(date)"
      ;;
    2)
      echo "Usuarios conectados:"
      who
      ;;
    3)
      echo "Espacio en disco:"
      df -h
      ;;
    4)
      echo "¡Hasta luego!"
      break
      ;;
    *)
      echo "Opción no válida. Intente de nuevo."
      ;;
  esac

  echo ""  # Línea en blanco para separar
done