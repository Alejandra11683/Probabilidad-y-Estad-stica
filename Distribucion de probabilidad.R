

#--------------BINOMIAL---------------
#-----PROBLEMA 1
# Probabilidad de escoger una respuesta de 5 posibles
p= 1/5

# Espacio muestral (12 preguntas en total)
n=12

#Probabilidad de tener 4 respuestas correctas elegidas aleatoriamente
k= 4

#Función en R
dbinom(4, size=12, prob=0.2)

# Otra forma más sencilla de calcular la probabilidad

sum(dbinom(0:4, 12, 0.2))

#-----PROBLEMA 2
# Probabilidad de escoger una respuesta de cinco posibles
P= 1/5
# Espacio muestral (12 preguntas en total)
N= 12
#Probababiliad de tener 2 respuestas correctas. 
K= 2
sum(dbinom(2:3, 12, 0.2))

#-----PROBLEMA 3
#Probabilidad de que un teléfono salga defectuoso
p= 0.005
#Espacio muestral (25 artículos)
n= 25
#Probabilidad de que una caja elegida al azar contenga un Iphone 11S
Defectuoso
k= 1
dbinom(1, 25, 0.005)

#----------------POISSON----------------

#PROBLEMA 1
# Probabilidad de que 35 alumnos lleguen en
15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=35
lamda=15

dpois(35,15)

# Probabilidad de que 50 alumnos lleguen en
#15 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.

x=50
lamda=15

dpois(50,15)

#PROBLEMA 2
#Probabilidad de que 34 alumnos lleguen en 
# 5 minutos a la entrada de la escuela
# x= número de alumnos
# lamda= tiempo de llegada.
x=34
lamda=5
dpois(34,15)

#PROBLEMA 3
# Probabilidadde que 60 alumnos se encuentren a
# la salida de la escuela en 5 minutos
# x=número de alumnos
# lamda= tiempo de salida 
x= 60
lamda= 5
dpois(60,5)


#PROBLEMA 4
# Probabilidad de que 120 alumnos se encuentren a
# la salida de la escuela en 5 minutos
# x=número de alumnos
# lamda= tiempo de salida 
x= 120
lamda= 5
dpois(120,5)

