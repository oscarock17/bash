
# Carpeta de Scripts Bash

Esta carpeta contiene una serie de scripts bash que abarcan diversos temas y conceptos básicos de scripting en Bash.

## Tabla de Contenidos

- [00_helloworld.sh](./00_helloworld.sh): Script para imprimir "Hello, World!"
- [01_guardar_salida.sh](./01_guardar_salida.sh): Script para guardar la salida de un comando en un archivo.
- [02_delimitador_cat.sh](./02_delimitador_cat.sh): Script para mostrar el uso del limitador cat
- [03_leer_paramentros.sh](./03_leer_paramentros.sh): Script para leer parámetros pasados a través de la línea de comandos.
- [04_condicionales.sh](./04_condicionales.sh): Script que muestra cómo utilizar condicionales en Bash.
- [05_operadores_logicos.sh](./05_operadores_logicos.sh): Script que muestra cómo utilizar operadores lógicos en Bash.
- [06_case.sh](./06_case.sh): Script que demuestra el uso de la estructura de control de caso en Bash.
- [07_bucle.sh](./07_bucle.sh): Script que demuestra el uso de bucles en Bash.
- [08_continue_break.sh](./08_continue_break.sh): Script que demuestra el uso de las palabras clave continue y break en bucles en Bash.
- [09_argumentos.sh](./09_argumentos.sh): Script que muestra cómo manejar argumentos en un script Bash.
- [10_standar_input.sh](./10_standar_input.sh): Script que demuestra cómo leer desde la entrada estándar en Bash.
- [11_standar__error_output.sh](./11_standar__error_output.sh): Script que muestra cómo redirigir la salida de error estándar en Bash.
- [12_pipes.sh](./12_pipes.sh): Script que demuestra cómo utilizar tuberías (pipes) en Bash.
- [13_strings.sh](./13_strings.sh): Script que muestra operaciones básicas con cadenas de caracteres en Bash.
- [14_numbers.sh](./14_numbers.sh): Script que muestra operaciones básicas con números en Bash.
- [15_declare.sh](./15_declare.sh): Script que muestra cómo declarar variables en Bash.
- [16_arrays.sh](./16_arrays.sh): Script que muestra cómo trabajar con matrices (arrays) en Bash.
- [17_functions.sh](./17_functions.sh): Script que muestra cómo definir y llamar funciones en Bash.
- [18_check_directory.sh](./18_check_directory.sh): Script que comprueba si un directorio existe en Bash.
- [19_curl.sh](./19_curl.sh): Script que muestra cómo realizar solicitudes HTTP utilizando curl en Bash.
- [20_debugin.sh](./20_debugin.sh): Script que muestra cómo depurar un script Bash.
- [Ejercicios](./ejercicios/): Scripts con ejercicios de ayuda

## Colocar permisos a los archivos
```bash
sudo chmod +x <file.sh>
```


## Descripciones Detalladas

### 00_helloworld.sh

Este script simplemente imprime "Hello, World!" en la consola.

Ejemplo de uso:
```bash
./00_helloworld.sh
```

### 01_guardar_salida.sh

Este script ejecuta un comando y guarda la salida en un archivo especificado.

Ejemplo de uso:
```bash
./01_guardar_salida.sh
```

### 02_delimitador_cat.sh

Este script muestra el contenido en la terminal usando el delimitador cat

Ejemplo de uso:
```bash
./02_delimitador_cat.sh
```

### 03_leer_paramentros.sh

Este script lee los parámetros pasados a través de la línea de comandos y los muestra en la consola.

Ejemplo de uso:
```bash
./03_leer_paramentros.sh
```

### 04_condicionales.sh

Este script muestra cómo utilizar condicionales en Bash.

Ejemplo de uso:
```bash
./04_condicionales.sh
```

### 05_operadores_logicos.sh

Este script muestra cómo utilizar operadores lógicos en Bash.

Ejemplo de uso:
```bash
./05_operadores_logicos.sh
```

### 06_case.sh

Este script demuestra el uso de la estructura de control de caso en Bash.

Ejemplo de uso:
```bash
./06_case.sh
```

### 07_bucle.sh

Este script demuestra el uso de bucles en Bash.

Ejemplo de uso:
```bash
./07_bucle.sh
```

### 08_continue_break.sh

Este script demuestra el uso de las palabras clave continue y break en bucles en Bash.

Ejemplo de uso:
```bash
./08_continue_break.sh
```

### 09_argumentos.sh

Este script muestra cómo manejar argumentos en un script Bash.

Ejemplo de uso:
```bash
./09_argumentos.sh <args>
```

### 10_standar_input.sh

Este script demuestra cómo leer desde la entrada estándar en Bash.

Ejemplo de uso:
```bash
./10_standar_input.sh 
```

### 11_standar__error_output.sh

Este script muestra cómo redirigir la salida de error en un archivo en Bash.

Ejemplo de uso:
```bash
./11_standar__error_output.sh 
```

### 12_pipes.sh

Este script demuestra cómo utilizar tuberías (pipes) en Bash.

Ejemplo de uso:
```bash
./12_pipes.sh 
```

### 13_strings.sh

Este script muestra operaciones básicas con cadenas de caracteres en Bash.

Ejemplo de uso:
```bash
./13_strings.sh 
```

### 14_numbers.sh

Este script muestra operaciones básicas con números en Bash.

Ejemplo de uso:
```bash
./14_numbers.sh 
```

### 15_declare.sh

Este script muestra cómo declarar variables de solo lectura algo asi como una constante para tener mas control sobre las variables

Ejemplo de uso:
```bash
./15_declare.sh 
```

### 16_arrays.sh

Este script muestra cómo trabajar con matrices (arrays) en Bash.

Ejemplo de uso:
```bash
./16_arrays.sh 
```

### 17_functions.sh

Este script muestra cómo definir y llamar funciones en Bash.

Ejemplo de uso:
```bash
./17_functions.sh 
```

### 18_check_directory.sh

Este script comprueba si un directorio existe en Bash.

Ejemplo de uso:
```bash
./18_check_directory.sh 
```

### 19_curl.sh

Este script muestra cómo realizar solicitudes HTTP utilizando curl y la respuesta la envia a un archivo json en Bash.

Ejemplo de uso:
```bash
./19_curl.sh 
```

### 20_debugin.sh

Este script muestra cómo depurar un script Bash utilizando la opción de depuración.

Ejemplo de uso:
```bash
./20_debugin.sh 
```

## Requisitos

- Bash (shell de Unix)
- Linux/macOS (puede que algunos scripts no funcionen correctamente en Windows)