echo "Configuracion Terminal"
# Configurar Color de letra y Fondo
echo " Configuracion de color "
setterm -foreground white -background black
clear

# Se crea variable de tiempo Fecha/Hora
date_stamp=$(date +"%Y_%m_%d_%H_%M_%S")



###########################################################################################################################
#Configuracion para Crontab
# directorio existe ?
if [ -d /crondir ];
then
	echo "El Directorio crondir  existe no se ha realizado ningun cambio"
else
	echo "El Directorio crondir no existe. se procede a crear"
	mkdir -p crondir
	chmod 777 crondir
fi

# archivo Existe ?
if [ -f crondir/$date_stamp.sh ];
then
	echo "El archivo existe"
else
	echo "El archivo no existe. se procede a crear"
	echo " " > crondir/$date_stamp.sh
	chmod 777 crondir/$date_stamp.sh
fi

###########################################################################################################################

###########################################################################################################################
#Configuracion para variables
# directorio /var/config existe ?
if [ -d /var/config ];
then
	echo "El Directorio config  existe no se ha realizado ningun cambio"
else
	echo "El Directorio crondir no existe. se procede a crear"
	mkdir -p /var/config
	chmod 777 /var/configcrondir
fi

# directorio /var/log existe ?
if [ -d /var/config/log ];
then
	echo "El Directorio log  existe no se ha realizado ningun cambio"
else
	echo "El Directorio log no existe. se procede a crear"
	mkdir -p /var/config/log
	chmod 777 /var/config/log
fi

###########################################################################################################################


###########################################################################################################################
#Configuracion para Mutt
# directorio ~/.mutt/cache/headers existe ?
if [ -d ~/.mutt/cache/headers ];
then
	echo "El Directorio  ~/.mutt/cache/headers  existe no se ha realizado ningun cambio"
else
	echo "El Directorio  ~/.mutt/cache/headers no existe. se procede a crear"
	mkdir -p  ~/.mutt/cache/headers
	chmod 777  ~/.mutt/cache/headers
fi

# directorio ~/.mutt/cache/bodies existe ?
if [ -d ~/.mutt/cache/bodies ];
then
	echo "El Directorio  ~/.mutt/cache/bodies  existe no se ha realizado ningun cambio"
else
	echo "El Directorio  ~/.mutt/cache/bodies  no existe. se procede a crear"
	mkdir -p ~/.mutt/cache/bodies 
	chmod 777 ~/.mutt/cache/bodies 
fi

# archivo ~/.mutt/certificates existe ?
if [ -f  ~/.mutt/certificates ];
then
	echo "El Directorio ~/.mutt/certificates existe no se ha realizado ningun cambio"
else
	echo "El Directorio ~/.mutt/certificates no existe. se procede a crear"
	touch ~/.mutt/certificates
	chmod 777 ~/.mutt/certificates
fi

# archivo ~/.mutt/muttrc existe ?
if [ -f   ~/.mutt/muttrc ];
then
	echo "El Directorio  ~/.mutt/muttrc existe no se ha realizado ningun cambio"
else
	echo "El Directorio  ~/.mutt/muttrc no existe. se procede a crear"
	touch  ~/.mutt/muttrc
	chmod 777 ~/.mutt/muttrc
fi

# crear configuracion de 


echo "set ssl_starttls=yes " >>  ~/.mutt/muttrc
echo "set ssl_force_tls=yes" >>  ~/.mutt/muttrc
 
echo "set imap_user =\'pon_aquí_tu_dirección_de_correo@gmail.com\'" >>  ~/.mutt/muttrc
echo "set imap_pass = 'PASSWORD'" >>  ~/.mutt/muttrc

echo "set from=\'pon_aquí_tu_dirección_de_correo@gmail.com\'" >>  ~/.mutt/muttrc
echo "set realname='Tu nombre real'" >>  ~/.mutt/muttrc

echo "set folder = imaps://imap.gmail.com/" >>  ~/.mutt/muttrc
echo "set spoolfile = imaps://imap.gmail.com/INBOX" >>  ~/.mutt/muttrc
echo "set postponed=\"imaps://imap.gmail.com/[Gmail]/Drafts\"" >>  ~/.mutt/muttrc

echo "set header_cache = \"~/.mutt/cache/headers\"" >>  ~/.mutt/muttrc
echo "set message_cachedir = \"~/.mutt/cache/bodies\"" >>  ~/.mutt/muttrc
echo "set certificate_file = \"~/.mutt/certificates\"" >>  ~/.mutt/muttrc

echo "set smtp_url = \'smtps://pon_aquí_tu_dirección_de_correo@gmail.com:PASSWORD@smtp.gmail.com:4/\'" >>  ~/.mutt/muttrc

echo "set move = no" >>  ~/.mutt/muttrc
echo "set imap_keepalive = 900 " >>  ~/.mutt/muttrc

###########################################################################################################################



