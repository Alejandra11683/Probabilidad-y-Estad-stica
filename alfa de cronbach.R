
#ALFA DE CRONBACH

#Instalar paquete 
install.packages("userfriendlyscience")
library(userfriendlyscience)

#Exploramos la matriz de datos
dim(BD_Likert)
names(BD_Likert)
str(BD_Likert)
anyNA(BD_Likert)
typeof(BD_Likert)

#pasar los constructos a una variable
attach(BD_Likert)

#Localia la posicion de los valores perdidos
which(is.na(BD_Likert))

# elimina las filas que contengan datos perdidos
# y se guarda en una nueva matriz de datos que es la
# que se utilizará para trabajar.

BD_LikertA<-na.omit(BD_Likert)

#Construir los construtos
attach(BD_LikertA)
names(BD_LikertA)
anyNA(BD_LikertA)

constructo1<-data.frame(A1, A2, A3, A4, A5, A6, A7, A8)
constructo2<-data.frame(B1,B2,B3,B4)
constructo3<-data.frame(C1,C2,C3,C4,C5,C6)
constructo4<-data.frame(D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13)
constructo5<-data.frame(E1,E2,E3,E4,E5,E6,E7,E8,E9,E10,E11)
constructo6<-data.frame(F1,F2,F3,F4,F5,F6,F7,F8)
constructo7<-data.frame(G1,G2,G3,G4,G5,G6,G7,G8)
constructo8<-data.frame(H1,H2,H3,H4)

#Calculamos el Cronbach para cada uno de los constructos hechos.

scaleReliability(constructo1)
scaleReliability(constructo2)
scaleReliability(constructo3)
scaleReliability(constructo4)
scaleReliability(constructo5)
scaleReliability(constructo6)
scaleReliability(constructo7)
scaleReliability(constructo8)



#valores perdidos
anyNA (BD_LikertA2)
#localizar los valores perdidos
which(is.na(BD_LikertA2))

BD_LikertA2<-na.omit(BD_LikertA2)

#tenemos que localizar el coeficiente del constructo 2,6 y 8 que es
#el que nos daba error en el principio
#Tenemos que Instalar el paquete dplyr
#Como ya lo tenemos solo activamos el paquete. 

install.packages("dplyr")
library(dplyr)

names((BD_LikertA2))
const2<-select(BD_LikertA2,18,28,29,45)
const6<-select(BD_LikertA2,12,14,19,20,34,51,61,62)
const8<-select(BD_LikertA2, 4,8,9,10)

#Calculamos el alfa de Cronbach para los 
#constructos faltantes(2,6 y 8)
#Utiliamos el paquete psych

alpha(const2)
alpha(const6)
alpha(const8)
