echo "Instalacion Preliminar"
read -rsp $'Presione cualquier tecla o espere 5 segundos para continuar  \n' -n 1 -t 5;
######################################################################################################################
# Actualizar Servidor
apt-get update
apt-get upgrade -y



######################################################################################################################
# Instalacion de utilidad de Red

# Solicitude de echo 
# Ejemplo : ping 192.168.0.1
apt-get install iputils-ping -y
#

# Solicitudes de echo ICMP (Protocolo de mensajes de control de internet)
# Ejemplo : fping 192.168.0.1 192.168.0.2
# Ejemplo : fping -g -r 1 192.168.0.0/24
# Ejemplo : fping -s -g 192.168.0.1 192.168.0.9
apt-get install fping
#

# Utilidades de RED
#
# arp : utilizada para manipular la cache ARP del nucleo, usualmente para anadir, borrar o volcar la cache completa 
# Ejemplo : arp 192.168.1.1
#
# dnsdomainname : muestra el nombre del dominio DNS del sistema 
# Ejemplo : dnsdomainname -I
# Ejemplo : dnsdomainname -s
#
# domainname : muestra o establece el nombre de dominio NIS/YP del sistema
# Ejemplo : domainname -I
# Ejmeplo : domainname -s
#
# hostname : muestra o establece el nombre del sistema
# Ejemplo : hostname
#
# ifconfig : utilidad para configurar las interfaces de red
# Ejemplo : ifconfig
apt-get install net-tools -y
#
apt-get install netstat -y
#
apt-get install speedometer -y
#
apt-get install whois -y
#
apt-get install netselect -y
#
apt-get install bmon -y
#
apt-get install nmap -y
#
apt-get install netselect -y
#
apt-get install fping -y
#
apt-get install arp-scan -y
#



#Instalacion de Aplicativos de Correo 
#
apt-get install sendmail -y
#
apt-get install mutt -y

#Intalacion de aplicaciones para automatizacion
#
apt-get install cron

apt-get install speex -y
apt-get install apg -y
apt-get install cmatrix -y 

apt-get install fontconfig -y 
apt-get install gawk -y
apt-get install gettext-base -y 
apt-get install jp2a -y
apt-get install kbd -y
apt-get install keyboard-configuration -y 



apt-get install tmux -y
apt-get install tree -y
apt-get install vim -y
apt-get install xxd -y
apt-get install cpp -y
apt-get install wamerican -y
apt-get install binutils -y
apt-get install ctags -y

apt-get install vacation -y
apt-get install nas -y
apt-get install pulseaudio -y
apt-get install jackd2 -y
apt-get install sndiod -y


apt-get install mc -y
apt-get install mlocate -y
apt-get install moreutils -y
apt-get install mplayer -y
apt-get install htop -y
#Instalacion de python y aplicativos
apt-get install python3 -y
apt-get install python3-pip -y
apt-get install python3-psutil -y
apt-get install python3-twisted -y
#instalacion de reportlab para Python3


