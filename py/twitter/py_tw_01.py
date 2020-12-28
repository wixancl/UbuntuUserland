X#!/usr/bin/env python
import tweepy

#Coloca dentro de las comillas tus claves...
CONSUMER_KEY = 'Aquí coloca Consumer key' 
CONSUMER_SECRET = 'Aquí coloca Consumer secret'
ACCESS_KEY = 'Aquí coloca Access token'
ACCESS_SECRET = 'Aquí coloca Access token secret'

#En esta parte nos identifica para poder realizar operaciones
auth = tweepy.OAuthHandler(CONSUMER_KEY, CONSUMER_SECRET)
auth.set_access_token(ACCESS_KEY, ACCESS_SECRET)

#update_status('mensaje' o variable) es para actualizar nuestro estado
x = tweepy.API(auth)
x.update_status('@GeekyTheory Si me Funciono el Tuto de @luisvillak ')
