# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y%m%d%H%M%S")
touch /var/config/log/$date_stamp.txt
rm -rf /var/config/log/$date_stamp.txt
