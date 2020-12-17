

#------------EJERCICIO 1---------------
#X es una variable normalmene 
#distrinuida con una media de 30 y una desviacion estandar de 4.
#ENCONTRAR: a)P(x<40), b) P(x<21), c) P(30<x<35)
#Para X=40 Conocemos que μ = 30  σ = 4
#La Z estandarizada es: 
 #Z =X − μ
     # σ
#Z =40 − 30
#     4

#P X < 40 = P(Z < 2.5)
pnorm(2.5)
pnorm(40,mean=30, sd=4, lower.tail=TRUE)

#La variable es simetrica, dando el mismo resutado
#eso quiere decir que si problable que suceda. 

#-----------EJERCICIO 2--------------
#Para X=21
#La Z estandarizada es: 
##Z =21 − 30
#     4
##P(x<21) = P(Z < -2.25)
pnorm(-2.25)
pnorm(21,mean=30, sd=4, lower.tail=TRUE)
#La distribucion de la variable es simetrica, por lo tanto es probable que sucea. 

#--------EJERCICIO 3----------------
#X es una variable normalmente distribuida 
#con una media de 30 y una desviación estándar de 4.

#Encontrar: a) P(x < 40), b) P(x > 21), c) P(30 < x < 35).
#Para: P(30 < x < 35).
pnorm(35,mean=30, sd=4, lower.tail=TRUE) - pnorm(30,mean=30, sd=4, lower.tail=TRUE)
#La variable es un poco baja pero puede ser probable. 

#-------------EJERCICIO 4----------------------------
#X es una variable normalmente distribuida con una media 
#de 45 y una desviación estándar de 2.

#Encontrar: a) P( x < 75), b) P( x > 13), c) P(60 < x < 82).
#Para X=75  Conocemos que μ = 45  σ = 2
#La Z estandarizada es:
#Z =75 − 45
#     2
#P(x<75) = P(Z < 15)
pnorm(15)
pnorm(75,mean=45, sd=2, lower.tail=TRUE)

#La variable es simetrica respecto a su medida, su variable es probable de que suceda. 

#Para X=13
#Z =13 − 45
#     2
#P( x > 13) = P(Z < -16)
pnorm(-16)
pnorm(13,mean=45, sd=2, lower.tail=TRUE)
#La variable tiene un valor con un exponente muy alto, 
#aunque es simetrica respecto a su otro valor. 


#Para: P(60 < x < 82)
pnorm(82,mean=45, sd=2, lower.tail=TRUE) - pnorm(60,mean=45, sd=2, lower.tail=TRUE)
#es probable aun por tener un exponente significativo para su valor de distribucion. 

#El ingreso a una determinada universidad se determina mediante 
#un examen nacional. Los resultados de esta prueba se
#distribuyen normalmente con una media de 500 y una 
#desviación estándar de 100. Timmy quiere ser admitido en esta
#universidad y sabe que debe obtener mejores resultados que al 
#menos el 70% de los estudiantes que tomaron el examen.
#Timmy presenta el examen y obtuvo 585 puntos. ¿Será admitido en esta universidad?
#a) Genera el siguiente gráfico:
N=1000
hist(pnorm(N,500,100),20, col= "blue")
abline(v=585, col=2)
#solucion 
#Es P( X < 585) > 70%?
#Función:

pnorm(585,mean=500, sd=100)
##[1] 0.8023375
# Multiplica la probabilidad obtenida por 100

#C)Interpretacion 
#Timmy obtuvo una puntuación mejor que el 80.23% de los
#estudiantes que tomaron el examen y será admitido en esta
#universidad.


#El ingreso a la BENV se determina mediante la prueba estandarizada EXANII-II. Los resultados de esta prueba se
#distribuyen normalmente con una media de 1000 y una desviación estándar de 100. Tú quieres ser admitido en esta
#institución y sabes que debes obtener mejores resultados que al menos el 90% de los estudiantes que tomaron el examen.
#Presentas el examen y obtuviste 1185 puntos.
#¿Serás admitida/o en la BENV?
#A)Genera el grafico. 
N=2600
hist(rnorm(N,1000,100),20, color="blue")
abline(v=1185, col=2)
#B) Solucion 
#Es P( X < 1185) > 90%?
#funcion 
pnorm(1185, mean=1000, sd=100)
#[1] 0.9678432

#Intrprtacion. 
#Obtuve muy buenos resultados, mejor que el 96.78%
#de todos los estudiantes que presentaon el exaemen de ingreso a la BENV 
#asi que si sere admitida en la BEV. 

#-------PRUEBA T-TEST--------
set.seed(10)
x<-rnorm(100,10)  #creacion de una nueva variable leatoria de media 10
Media<- 10
test<-t.test(x, mu=Media) #comparacion de la media muestral con la media
print(test)

#One sample test

#data:x
#t= -1.4507, df=99, p-value=0.15
#alternative hypothsis: true mean is not equal to 10
#95 porcent confidence interval:
#9.676689 10.050213
#sample estimates:
#mean of x
#9.863451

#Interpretacion
#El p-valor es >0.05, no se rechaza Ho. Por lo
#tanto, la muestra tiene media igual a 10.