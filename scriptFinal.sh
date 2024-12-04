#!/bin/bash

# RedNickTechnologies Gabriel Nicolas Acevedo, todos los derechos reservados

#Este es el script que desarrolle para el curso de linux de la Universidad Nacional De General Sarmiento
#El objetivo del script es recibir 4 parametros, que corresponden a 2 nombres, y 2 Edades, los valores de edad deben compararse
#y el script debe dar como resultado el nombre junto con las edades de las personas que se deben comparar
                                                                                                                                                                                        
#tiene doble funcionalidad, en primer lugar puede funcionar si no se le envian parametros (que es el objetivo principal del trabajo), por otro lado si el script se ejecuta
#recibiendo parametros por consola primero validara si la cantidad de parametros es la correcta, despues si los tipos de datos ingresados son los correctos, y si alguno de estos
#no se cumple el programa redirigira al usuario a un menu donde se le dara la opcion de decidir si quiere terminar la ejecucion del script o si quiere continuar completando los datos
#de manera tradicional
                                                                                                                                                                                        
#A continuacion el script
                                                                                                                                                                                        
# Esta es la ejecucion normal del script, corresponde a su funcionamiento en el caso de que no se envien parametros.
                                                                                                                                                                                        
if [[ $# -eq 0 ]]; then
                                                                                                                                                                                        
    echo "Hola como estas? bienvenido/a a mi Script en bash, en esta ocasion, voy a solicitarte que me otorgues la siguiente informacion:"
    echo "Por favor ingresa un nombre:"
    read nombre
                                                                                                                                                                                        
    echo "Ahora ingresa una edad:"
    read edad
                                                                                                                                                                                        
    echo "Ahora ingresa otro nombre:"
    read nombreDos
                                                                                                                                                                                        
    echo "Ahora ingresa otra edad:"
    read edadDos
                                                                                                                                                                                        
#En esta parte del codigo, se usaron expresiones regulares para que los datos ingresados por el usuario cumplan con el tipo de datos correctos, me aseguro de que los nombres tengan
#Caracteres ASCII y que los numeros que ingreso pertenezcan al sistema decimal
                                                                                                                                                                                        
    if [[ "$nombre" =~ ^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$ && "$edad" =~ ^[0-9]+$ && "$nombreDos" =~ ^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$ && "$edadDos" =~ ^[0-9]+$ ]]; then
        if [ "$edad" -gt "$edadDos" ]; then
            echo "$nombre tiene $edad y es mayor que $nombreDos que tiene $edadDos anios"
        elif [ "$edadDos" -gt "$edad" ]; then
            echo "$nombreDos tiene $edadDos y es mayor que $nombre que tiene $edad anios"
        else
            echo "$nombre y $nombreDos tienen la misma edad"
        fi
        echo "------------------------------------------------"
        echo "Programa finalizado, que tengas un excelente dia"
        echo "------------------------------------------------"
                                                                                                                                                                                        
    else
        echo "Usted ingreso datos incorrectos. El programa no puede devolver un resultado correcto."
                                                                                                                                                                                        
        echo "------------------------------------------------"
        echo "Programa finalizado, que tengas un excelente dia"
        echo "------------------------------------------------"
                                                                                                                                                                                        
    fi
                                                                                                                                                                                        
# Si se pasan parámetros, pero no son suficientes, el programa ejecuta esta parte del codigo
                                                                                                                                                                                        
elif [[ $# -lt 4 ]]; then
                                                                                                                                                                                        
    echo "Hola como estas?, veo que ingresaste datos por parametro antes de iniciar el script, te sorprendera saber que esto funciona de la misma manera"
    echo "Sin embargo, el orden o la cantidad datos enviados no son los correctos, desea completar los datos de manera guiada? (y/n)"
    read decision
                                                                                                                                                                                        
    if [ "$decision" = "y" ] || [ "$decision" = "Y" ]; then
                                                                                                                                                                                        
# Si la decision es y o Y, el programa continua su ejecucion normalmente, de lo contrario  se finaliza su ejecucion
                                                                                                                                                                                        
        echo "Hola como estas? bienvenido a mi Script en bash, en esta ocasion, voy a solicitarte que me otorgues la siguiente informacion:"
        echo "Por favor ingresa un nombre:"
        read nombre
                                                                                                                                                                                        
        echo "Ahora ingresa una edad:"
        read edad
                                                                                                                                                                                        
        echo "Ahora ingresa otro nombre:"
        read nombreDos
                                                                                                                                                                                        
        echo "Ahora ingresa otra edad:"
        read edadDos
                                                                                                                                                                                        
                                                                                                                                                                                        
        if [ "$edad" -gt "$edadDos" ]; then
            echo "$nombre tiene $edad y es mayor que $nombreDos que tiene $edadDos anios"
                                                                                                                                                                                        
        elif [ "$edadDos" -gt "$edad" ]; then
            echo "$nombreDos tiene $edadDos y es mayor que $nombre que tiene $edad anios"
                                                                                                                                                                                        
        else
            echo "$nombre y $nombreDos tienen la misma edad"
        fi
                                                                                                                                                                                        
                                                                                                                                                                                        
        echo "------------------------------------------------"        
        echo "Programa finalizado, que tengas un excelente dia"
        echo "------------------------------------------------"
                                                                                                                                                                                        
    else
                                                                                                                                                                                        
        echo "------------------------------------------------"
        echo "Programa finalizado, que tengas un excelente dia"
        echo "------------------------------------------------"
                                                                                                                                                                                        
    fi
                                                                                                                                                                                        
                                                                                                                                                                                        
# En el caso de que se reciban todos los parametros de manera correcta, se ejecutara esta seccion de codigo, aqui tambien se comprueba si los datos pasados por parametro
# Al script son los correctos
                                                                                                                                                                                        
elif [[ "$1" =~ ^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$ && "$2" =~ ^[0-9]+$ && "$3" =~ ^[a-zA-ZáéíóúÁÉÍÓÚñÑ]+$ && "$4" =~ ^[0-9]+$ ]]; then
                                                                                                                                                                                        
    echo "Hola como estas?, veo que ingresaste datos por parametro antes de iniciar el script, te sorprendera saber que esto funciona de la misma manera"
    echo "Ahora comparare las edades y te dire quien es mas grande, si $1 o $3"
                                                                                                                                                                                        
                                                                                                                                                                                        
    echo "-----------------------------------"
    echo "     Procesando la informacion....."
    echo "-----------------------------------"
                                                                                                                                                                                        
                                                                                                                                                                                        
    if [ "$2" -gt "$4" ]; then
        echo "$1 Tiene $2 anios y es mayor que $3 que tiene $4 anios"
    elif [ "$4" -gt "$2" ]; then
        echo "$3 Tiene $4 anios y es mayor que $1 que tiene $2 anios"
    elif [ "$2" -eq "$4" ]; then
        echo "$1 y $3 tienen la misma Edad"
    fi
                                                                                                                                                                                        
                                                                                                                                                                                        
    echo "------------------------------------------------"
    echo "Programa finalizado, que tengas un excelente dia"
    echo "------------------------------------------------"
                                