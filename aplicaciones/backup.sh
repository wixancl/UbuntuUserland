# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y%m%d%H%M%S")
# Directorio a Respaldar
directorio="/var/log/apt"

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
	zip -r archivos/$date_stamp.zip $directorio
	touch archivos/$date_stamp.txt
	chmod 777 archivos/$date_stamp.zip
#	ncftpput -f login.txt / /home/administrador/SH/aplicaciones/archivos/$date_stamp.txt
fi

