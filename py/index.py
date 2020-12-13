# Importar dependencias para manejo del sistema operativo
import os

#importar dependencias para el manejo de fechas
from datetime import date
from datetime import datetime

#Titulo program 
print('s python ')

##############################################################################################################################
#Mostrar fecha y hora
today = date.today()
print(today)
print("El dia actual es {} ".format(today.day))
print("El mes actual es {} ".format(today.month))
print("El agno actual es {} ".format(today.year))
#
##############################################################################################################################
#
##############################################################################################################################
#
#Fecha actual
now = datetime.now()
print(now)
print("El dia actual es {} ".format(now.day))
print("El mes actual es {} ".format(now.month))
print("El agno actual es {} ".format(now.year))
print("La hora actual es {}".format(now.hour))
print("El hora actual es {}".format(now.minute))
print("El segundo actual es {}".format(now.second))
formatofecha = now.strftime('Dia :%d, Mes :%m, Agno :%Y, Hora :%H, Minutos :%M, Segundos :%S')
print(formatofecha)

##############################################################################################################################

#

#Crear log
nombrelog = now.strftime('%Y%m%d_%H%M%S.txt')
file = open(nombrelog, "w")
file.write(" Nombre : " + nombrelog  + os.linesep)
file.write("-------------------------------------------------------------------------------------------------- " + os.linesep)
file.close()




