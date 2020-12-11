echo "Configuracion Terminal"
# Configurar Color de letra y Fondo
echo " Configuracion de color "
setterm -foreground white -background black
clear

# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")


# directorio existe ?
if [ -d /crondir ];
then
	echo "El Directorio crondir  exsite no se ha realizado ningun cambio"
else
	echo "El Directorio crondir no existe. se procede a crear"
	mkdir -p crondir
	chmod 777 crondir
fi

# archivo Existe ?
if [ -f crondir/$date_stamp.sh ];
then
	echo "El archivo existe"
else
	echo "El archivo no existe. se procede a crear"
	echo " " > crondir/$date_stamp.sh
	chmod 777 crondir/$date_stamp.sh
fi


