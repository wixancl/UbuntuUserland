echo "Instalacion Preliminar"
read -rsp $'Presione cualquier tecla o espere 5 segundos para continuar  \n' -n 1 -t 5;
# Actualizar Servidor 
apt-get update
apt-get upgrade -y
apt-get install iputils-ping -y
apt-get install net-tools -y
apt-get install netstat -y
apt-get install bmon -y
apt-get install speedometer -y
apt-get install whois -y
apt-get install speex -y
apt-get install netselect -y
apt-get install fping -y
apt-get install nmap -y

