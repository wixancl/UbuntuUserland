# -*- coding: utf-8 -*-
# Importacion de Librerias sistema Operativo
import os
import os.path as path
# Importacion librerias para Fecha 
from datetime import date
from datetime import datetime
# Libreria de Errores
import errno


# Importar codigo QR
#import qrcode
##############################################################################################################################
##############################################################################################################################
class Titulo():
    
    def __init__(self):
        self.titulo="S Python"

    def mostrar(self,tituloingresado):
        self.titulo=tituloingresado
        print("|-----------------------------------------------------|")
        print("|",self.titulo,"|")


TituloPrincipal=Titulo()
TituloPrincipal.mostrar("S python 1")
##############################################################################################################################
##############################################################################################################################

def print_case(value):
    cases = {
        1: lambda: print("1"),
        2: lambda: print("2"),
            }
    cases.get(value, lambda: print("no es la opcion"))()

print_case(44441)

##############################################################################################################################
print('Ingreso de datos datos adicionales')

print('Ingrese el titulo del log')
titulo = input()
print(f"El titulo del log es, {titulo} ")

print('Ingrese el un comentario')
comentario = input()
print(f"El comentario ingresado es, {comentario} ")

##############################################################################################################################
##############################################################################################################################

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

#Crear QR
#imagen = qrcode.make('holamundo')

##############################################################################################################################




