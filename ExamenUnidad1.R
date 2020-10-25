#Unidad 1 
#Trabajare con la matriz de datos millas 
millas <- datos :: millas

# Vamos a explorar la matriz de datos con los siguientes comandos
? millas  
dim(millas) # conocer la dimensión
names(millas) # muestra el nombre de las variables
str(millas) # tipo de variable
anyNA(millas) # indica los datos perdidos
typeof(millas) # tipo de matriz de datos
View(millas) # visualizacion de la tabla (data frame) #Porque la convertimos e data frame 

#Cree una data frame con el nombre millasAB
millas_AB<-as.data.frame(millas)

#Determinaremos las medidas estadisticas descriptivas y de variabilidad 
summary(millas_AB)

#Active el paquete Modeest en Packages 
install.packages("modest")
library(modeest)
#Nos vamos al apartado de Packages y buscamos Modeest y lo activamos 

#Sacamos la moda de cada una de las variables de la matriz millas 
mfv(millas_AB$fabricante)
mfv(millas_AB$modelo)
mfv(millas_AB$cilindraria)
mfv(millas_AB$anio)
mfv(millas_AB$cilindros)
mfv(millas_AB$transmision)
mfv(millas_AB$traccion)
mfv(millas_AB$ciudad)
mfv(millas_AB$autopista)
mfv(millas_AB$combustble)
mfv(millas_AB$clase)

#Al visualizar en el comando str, podemos notar cuales son lo datos cuantitativos  cuales son los datscualtativos 
#Calculamos la varianza a cada variable cuantitativa de la matriz de datos. #El comando es var
var(millas_AB$cilindrada)
var(millas_AB$anio)
var(millas_AB$ciudad)
var(millas_AB$cilindros)
var(millas_AB$autopista)

#calculamos la desviacion estandr de la variables cuantitativas
sd(millas_AB$cilindrada)
sd(millas_AB$anio)
sd(millas_AB$ciudad)
sd(millas_AB$cilindros)
sd(millas_AB$autopista)

#Insalar el paquete Fical
install.packages("FinCal")
library(FinCal)

#Calculamos el coeficiente de variacion 

coefficient.variation (sd=sd(millas_AB$cilindrada),
                       avg=mean(millas_AB$cilindrada))
coefficient.variation (sd=sd(millas_AB$anio),
                       avg=mean(millas_AB$anio))
coefficient.variation (sd=sd(millas_AB$ciudad),
                       avg=mean(millas_AB$ciudad))
coefficient.variation (sd=sd(millas_AB$cilindros),
                       avg=mean(millas_AB$cilindros))
coefficient.variation (sd=sd(millas_AB$autopista),
                       avg=mean(millas_AB$autopista))

#Instalamos Tidyverse
install.packages("tidyverse")
library(tidyverse)

#Instalamos el paquete RColorBrewer
install.packages("RColorBrewer")
library(RColorBrewer)

#Construimos un grafico de dispersion 
dispersion_PRIM<-ggplot(millas_AB, aes(x=cilindrada, y=autopista, color=clase)) +
  geom_point ()
#visualizar el grafico 
dispersion_PRIM

# BOXPLOT
boxplot<-ggplot(millas_AB,aes(factor(transmision),
                              ciudad,fill=transmision)) +
  geom_boxplot () +
  ggtitle("Transmision de autos en ciudad") +
  xlab ("transmision") +
  ylab ("ciudad")

#visualizamos el gráfico
boxplot

# Creamos un grafico de Barras

# Construcción de la tabla con la que vamos a trabajar
attach(millas_AB)
tabla_PRIM<-table(millas_AB$cilindros) #El nombre de mi tabla es tabla_PRIM

#Visualizamos la tabla
tabla_PRIM

# Especificamos la paleta de colores que vamos a utilizar
color=c("indianred1" , "mediumorchid1" , "mediumspringgreen", "lightsalmon")

#Visualizamos la tabla 

barplot(tabla_PRIM, xlab="cilindros" , ylab ="frecuencias",
        main="Gráfico de barras de Cilindros", col=color)