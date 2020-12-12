echo "Configuracion Terminal"
# Configurar Color de letra y Fondo
echo " Configuracion de color "
setterm -foreground white -background black
clear

# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")




###########################################################################################################################
#Configuracion para Crontab
# directorio existe ?
if [ -d /crondir ];
then
	echo "El Directorio crondir  existe no se ha realizado ningun cambio"
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

###########################################################################################################################

###########################################################################################################################
#Configuracion para Mutt
# directorio ~/.mutt/cache/headers existe ?
if [ -d ~/.mutt/cache/headers ];
then
	echo "El Directorio  ~/.mutt/cache/headers  existe no se ha realizado ningun cambio"
else
	echo "El Directorio  ~/.mutt/cache/headers no existe. se procede a crear"
	mkdir -p  ~/.mutt/cache/headers
	chmod 777  ~/.mutt/cache/headers
fi

# directorio ~/.mutt/cache/bodies existe ?
if [ -d ~/.mutt/cache/bodies ];
then
	echo "El Directorio  ~/.mutt/cache/bodies  existe no se ha realizado ningun cambio"
else
	echo "El Directorio  ~/.mutt/cache/bodies  no existe. se procede a crear"
	mkdir -p ~/.mutt/cache/bodies 
	chmod 777 ~/.mutt/cache/bodies 
fi



###########################################################################################################################




