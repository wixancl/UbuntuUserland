#!/bin/bash
FECHA_Y_HORA=`date "+%d-%m-%y_%H-%M-%S"`
NOMBRE_SISTEMA="Metone"
RUTA="/var/script/storage/informe/"
EXTENSION=".txt"
SEPARADOR=" ------------------------------------------------------------------------------------------------------------------------------ "
CADENA=$RUTA$FECHA_Y_HORA$EXTENSION

#
echo $SEPARADOR >> $CADENA
echo "---- > Informe estado equipo " >> $CADENA
echo $FECHA_Y_HORA >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Nombre Host " >> $CADENA
hostname >> $CADENA
hostname -I >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Sistema Operativo " >> $CADENA
lsb_release -a >> $CADENA
cat /proc/version >> $CADENA
cat /etc/debian_version >> $CADENA
hostnamectl >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Arquitectura Maquina " >> $CADENA
uname -m >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Versión del kernel usado " >> $CADENA
uname -r >> $CADENA
cat /proc/version >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Componentes (hardware) del sistema " >> $CADENA
dmidecode -q >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Particiones Montadas " >> $CADENA
df -h >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Informacion CPU " >> $CADENA
cat /proc/cpuinfo >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Informacion de Memoria " >> $CADENA
cat /proc/meminfo >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Adaptadores de red y estadísticas " >> $CADENA
cat /proc/net/dev >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Ficheros Montados " >> $CADENA
cat /proc/mounts >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Tamaño Estimado " >> $CADENA
du -sh /bin >> $CADENA
du -sh /boot >> $CADENA
du -sh /dev >> $CADENA
du -sh /etc >> $CADENA
du -sh /home >> $CADENA
du -sh /lib >> $CADENA
du -sh /bin >>$CADENA
du -sh /lib64 >>$CADENA
du -sh /lost+found >>$CADENA
du -sh /mnt >>$CADENA
du -sh /proc >>$CADENA
du -sh /root >>$CADENA
du -sh /run >>$CADENA
du -sh /sbin >>$CADENA
du -sh /snap >>$CADENA
du -sh /srv >>$CADENA
du -sh /sys >>$CADENA
du -sh /tmp >>$CADENA
du -sh /usr >>$CADENA
du -sh /var >>$CADENA
echo $SEPARADOR >> $CADENA
#
echo "Dispositivos PCI " >> $CADENA
lspci -tv >> $CADENA
echo $SEPARADOR >> $CADENA
#
echo "Dispositivos USB " >> $CADENA
lsusb -tv >> $CADENA
echo $SEPARADOR >> $CADENA
#

