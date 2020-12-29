#sudo apt-get install apt-transport-https -y
#sudo apt-get install ca-certificates -y
#sudo apt-get install curl -y
#sudo apt-get install software-properties-common -y
#curl -fsSL https://debian.neo4j.com/neotechnology.gpg.key | sudo apt-key add -
#echo "deb http://httpredir.debian.org/debian strech-backports main" | sudo tee -a /etc/apt/sources.list.d/stretch-backport.list
echo "deb http://httpredir.debian.org/debian strech-backports main" >> /etc/apt/sources.list
echo "deb https://debian.neo4j.com stable 4.1" >> /etc/apt/sources.list
echo "deb http://httpredir.debian.org/debian strech-backports main" >> /etc/apt/sources.list
apt-get update
apt-get upgrade
apt-get install neo4j
service neo4j start


