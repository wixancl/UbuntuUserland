echo "Configuracion Terminal"
# Configurar Color de letra y Fondo
echo " Configuracion de color "
setterm -foreground white -background black
clear
mkdir -p crondir
chmod 777 crondir
# archivo Existe ?
if [ -f /crondir/01.sh ];
then
	echo "Existe archivo"
else
	echo "No Existe"
	echo " " > 001.sh
fi

