#!/bin/bash
FECHA_Y_HORA=`date "+%d-%m-%y_%H-%M-%S"`
NOMBRE_SISTEMA="Metone"
RUTA="/var/script/storage/log/"
EXTENSION=".zip"
SEPARADOR=" ------------------------------------------------------------------------------------------------------------------------------ "
CADENA=$RUTA$FECHA_Y_HORA$EXTENSION

zip -r $CADENA /var/log 
