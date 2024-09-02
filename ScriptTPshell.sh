#!/bin/bash

#RedNickTechnologies Gabriel Nicolas Acevedo Sistemas Operativos y redes 1

echo "Bienvenidos al Script de Nico, A continuación se creará una carpeta en el directorio HOME"

if [ -z "$1" ];

then

	# Comprueba si se ingresaron los datos por parámetro
	
	echo "Error: no se recibió ningún parámetro"
	echo "Escriba un dato para continuar:" read variable

	#En el caso de que ingresen un parámetro, el programa se dirige a HOME
	#Esto con la finalidad de crear una carpeta con el nombre del parametro ingresado

    	cd "$HOME"

	while [ -z "$variable" ];
	#En el caso de que el usuario siga ingresando un dato vacio, entrara en un bucle donde se le pedira constantemente que ingrese un parametro
	do

	echo "Por favor, necesito que ingreses al menos un dato para poder continuar con la operación"
	read variable
	done
	if [ -d "$variable" ]; #Si el directorio que se intenta crear ya existe solo se accede al directorio y se crea el fichero .txt
	then
	cd "$variable"
	touch archivo.txt 
        ls -l -a "$HOME" > archivo.txt #se escribe la informacion de los ficheros de home dentro del programa .txt
	cat archivo.txt
	if [ $(find . -maxdepth 1 -type f | wc -l) -lt 5 ]; #Esta linea se encarga de contar la cantidad de ficheros que se encuentran en el directorio
							    #Si la cantidad de archivos que estan dentro del directorio es menor a 5 se crean ficheros
	then
            for ((i=1; i<5; i++)); #Ante la duda mantuve la condicion i<5 para asegurarme de que no se creen ficheros extras
	    do
		touch "archivo$i.txt"
	    done
		echo "Proceso finalizado, que tenga un excelente día"
	fi
	else
	mkdir "$variable" #En el caso de que no existan directorios con ese nombre, se crea uno con el dato indicado,
	cd "$variable"
	touch archivo.txt
	ls -l -a "$HOME" >archivo.txt #concateno la informacion de los ficheros disponibles dentro del fichero .txt
	cat archivo.txt
	if [ $(find . -maxdepth 1 -type f | wc -l) -lt 5 ];  #Esta linea se encarga de contar la cantidad de ficheros que se encuentran en el directorio
                                                            #Si la cantidad de archivos que estan dentro del directorio es menor a 5 se crean ficheros
	then
            for ((i=1; i<5; i++)); 
	    do
		touch "archivo$i.txt"
	    done
	echo "Proceso finalizado, que tenga un excelente día"
	fi
      fi
	else
   	 # Si recibo un dato por parametro ejecuto el programa de la siguiente manera
	cd "$HOME"
	if [ ! -d "$1" ]; #Confirmo si el directorio con el nombre pasado por parametro existe
	then
	mkdir "$1" #si no existe, lo creo
	fi
	cd "$1" #accedo a la carpeta con el nombre del parametro
	touch archivo.txt
	ls -l -a "$HOME" > archivo.txt #concateno la informacion de los ficheros disponibles dentro del fichero .txt
	cat archivo.txt
	if [ $(find . -maxdepth 1 -type f | wc -l) -lt 5 ]; #cuento la cantidad de ficheros y me aseguro si hay menos de 5 ficheros en un mismo directorio
							    #Si la cantidad de archivos que estan dentro del directorio es menor a 5 se crean ficheros

	then
	for ((i=1; i<5; i++)); # para asegurarme de que no se pase de la cantidad de 5 archivos dentro del directorio
	do
        touch "archivo$i.txt"
	done
	echo "Proceso finalizado, que tenga un excelente día"
	fi
fi

#Finalizo la ejecucion del archivo










































#Propiedad de RedNickTechnologies todos los derechos reservados
#Gracias de corazon a todos los que me ayudaron en este proyecto
