install.packages("datos")
library(datos)

flores<-(datos::flores)

?flores #ayuda

#Explorar la matriz de datos 
dim(flores)

#conocer las variables 
names(flores)

#conocer los tipos de datos
str(flores)

#Detectar valores perdidos
anyNA(flores)

#conocer el tipo de matriz de datos 
typeof(flores)
View(flores)

#Convertimos la matriz de datos a "data frama"
flores_1<-as.data.frame(flores) 

#Calcular estadisticas descriptivas 
summary(flores_1) 


install.packages("modeest")
library(modeest)

#Identificar la varianza 
mfv(flores_1$Largo.Sepalo)
mfv(flores_1$Ancho.Sepalo)
mfv(flores_1$Largo.Petalo)
mfv(flores_1$Ancho.Petalo)
mfv(flores_1$Especies) #¿Que observas?

#Calculamos la varianza de cada una de las especies 
#Cuantitativas
var(flores_1$Largo.Sepalo)
var(flores_1$Ancho.Sepalo)
var(flores_1$Largo.Petalo)
var(flores_1$Ancho.Petalo)

#Calcularemos la desviacion estandar para cada una de las
#variables cuantitativas
sd(flores_1$Largo.Sepalo)
sd(flores_1$Ancho.Sepalo)
sd(flores_1$Largo.Petalo)
sd(flores_1$Ancho.Petalo)

#Calculamos el error para la variable largo del sepalo 
error_1<-(flores_1$Largo.Sepalo-mean(flores$Largo.Sepalo))
error_1<-
  
  
#coeficiente de variacion
  #vamos a instalar el paquete FinCal y abrimos la libreria 
install.package("Fincal")
library(Fincal)

#Calculamos el coeficiente de variacion
coefficient.variation(sd=sd(flores_1$Largo.Sepalo),
                        avg=mean(flores_1$Largo.Sepalo))

# Empezaremos a construir algunos graficos

# Instalaremos el paquete tidyverse y abriremos la libreria
install.packages("tidyverse")
install.packages("RColorBrewer")

# Abrimos las librerias
library(tidyverse)
library(RColorBrewer)

# Grafico de Barras

# Construcción de la tabla con la que vamos a trabajar
attach( flores_1 )
tabla_especies <- table( flores_1 $ Especies )

# visualizamos la variable x que contiene la columna de Especies
tabla_especies

# Especificamos la paleta de colores que vamos a utilizar
color = c ( "lightsalmon " , "lightpink" , "mediumpurple1" )

# Construimos el gráfico de la variable x
barplot ( tabla_especies , xlab = " Especies " , ylab = " Frecuencias " ,
          main = " Gráfico de barras de Especies " , col = color )
# BOXPLOT
boxplot <- ggplot ( flores_1 , aes ( factor ( Especies ),
                                     Largo.Sepalo , fill = Especies )) +
  geom_boxplot () +
  ggtitle ( " Boxplot del Largo del sepalo " ) +
  xlab ( " Especies " ) +
  ylab ( " Largo.Sepalo " )

# visualizamos el gráfico
boxplot

# Diagrama de dispersión 1
dispersion_1 <- ggplot ( flores_1 , aes ( x = Largo.Petalo , y = Largo.Sepalo , color = Especies )) +
  geom_point ()

# visualizamos el gráfico
dispersion_1

# Diagrama de dispersión 2
attach( flores )
par ( mfrow = c ( 1 , 1 )) # Volver a definir una ventana normal
dispersion_2 <- plot ( flores $ Largo.Petalo , flores $ Ancho.Petalo , pch = 19 ,
                       col = " violeta " ,
                       xlab = " Largo del pétalo " ,
                       ylab = " Ancho del pétalo " )

# diagrama de dispersion 3
dispersion_3 <- ggplot ( flores , aes ( x = flores $ Largo.Sepalo , y = flores $ Ancho.Sepalo ,
                                        color = Especies )) +
  geom_point ( alfa = .9 ) +
  xlab ( " Largo del sépalo " ) +
  ylab ( " Ancho del sépalo " )

# visualizamos el gráfico
dispersion_3

# Diagrama de dispersión múltiple
pares ( flores [, 1 : 4 ], pch = 19 ,
        col = c ( " azul " , " verde " , " naranja " ) [ flores [, 5 ]])


# Histograma 1, visualizando la variable largo del pétalo

ggplot ( flores , aes ( x = Largo.Petalo )) +
  geom_histogram ( binwidth  =  0.1 , col = " black " , fill = " green " , alpha = 0.4 ) +
  xlab ( " Largo del pétalo " ) +
  ylab ( " Frecuencia " ) +
  ggtitle ( " Histograma del largo del pétalo " )


# Histograma 2
par ( mfrow = c ( 1 , 3 ))

hist ( flores [ 1 : 50 , 3 ], principales = " Largo del Pétalo (setosa) " ,
       xlab = " " , ylab = " Frecuencias " , col = " red " , breaks  =  " Sturges " ) +
  
  hist ( flores [ 51 : 100 , 3 ], main = " Largo del pétalo (versicolor) " ,
         xlab = " " , ylab = " Frecuencias " , col = " blue " , breaks  =  " Sturges " )

hist ( flores [ 101 : 150 , 3 ], main = " Largo del pétado (virginica) " ,
       xlab = " " , ylab = " Frecuencias " , col = " green " , breaks  =  " Sturges " )


