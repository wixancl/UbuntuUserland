###############################################################################
##############################################################################
#########ncftpput -f login.txt / /home/administrador/SH/py/02.txt
#########ncftpget -f login.txt /home/administrador/SH/py/ /01.txt
# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")



###########################################################################################################################
#Configuracion para repositorio
# directorio existe ?
if [ -d /$date_stamp ];
then
	echo "El Directorio $date_stamp existe no se ha realizado ningun cambio"
else
	echo "El Directorio $date_stamp no existe. se procede a crear"
	mkdir -p $date_stamp
	chmod 777 $date_stamp
fi


