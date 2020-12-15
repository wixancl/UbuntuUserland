# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")
# Directorio a Respaldar
directorio="/home/administrador/SH/py"
###########################################################################################################################
#Configuracion para Crontab
# directorio existe ?
if [ -d /archivos ];
then
	echo "El Directorio crondir  existe no se ha realizado ningun cambio"
else
	echo "El Directorio crondir no existe. se procede a crear"
	mkdir -p archivos
	chmod 777 archivos
fi

# archivo Existe ?
if [ -f archivos/$date_stamp.zip ];
then
	echo "El archivo existe"
else
	echo "El archivo no existe. se procede a crear"
	#echo " " > crondir/$date_stamp.sh
	#chmod 777 crondir/$date_stamp.sh
	zip -r archivos/$date_stamp.zip $directorio
fi

