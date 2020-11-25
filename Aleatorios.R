
#NUMEROS ALEATORIOS

#1.1- Calcula el tamaño de muestra para una poblacion de 
#83 alumnas y alumnos que se encuentran en primer grado
#de la Licenciatura en Educación Primaria de la BENV.

#Primaria BENV.
#Sacamos los datos que nos proporcionan, ocupamos macorr para obtener el tamaño 
#la muestra, tenemos un nvel de confianza del 95 porciento y un ntervalo de confianza
#del 5 porciento con una poblacion de 83 alumnos, lo que nos 
#da un resultado de 68
#N=83  n= 55 (dividimos primero 68/83=0.81 y lo multiplicamos por 68=55)

#1.2.- Una vez que obtengas el tamaño de la muestra, 
#selecciona el número de lista de las personas que formaran
#parte de la muestra.

sample(1:83,55, replace=FALSE)

#1.3.- Crea un vector llamado muestra con los números de 
#lista de las personas que forman parte de la muestra.

muestra<-c(4 16 23 36 20 55 52 10 65 37 24 22  7 11 77 28 54 43 33 58 13 47 45 34 68 18  2
           61 21 17  8 32  3 38 29 26 39 80 14 62 19 78 30 75  5 49 44 71 73  1 69 82 66 25
           64)

#2.- Repite el ejercicio anterios ahora para una poblacion
# de 90 alumnas y alumnos de integran el segundo año de la
#licenciatura en Educación Primaria de la BENV.

#N= 90   n=59

sample(1:90,59, replace=FALSE)

muestra<-c(20  5  2 22 56 67 35 36 26 85 74 57 51 42 39  6 10 72  7 33 27 13 14 32 89 63 11
           47 23 50 82 62 28 21 54 68 88 55 30 73 29 37 77 43 46 70 80 16 17 60  1 58 52  9
            8 84 41 87 75)

#3.- Determina el número e identifíca a las personas que participarán
#en un estudio de seguimiento de egresados de la generación
#2015-2019 de las 5 licenciaturas de la BENV.

#Primaria: 78 personas egresadas.
#Preescolar: 84 personas egresadas.
#Física: 35 personas egresadas.
#Telesecundaria: 83 personas egresadas.
#Especial: 25 personas.

#N= 305  
#n=93
#coeficiente de estrato=0.55

#PRIMARIA
#Estrato=78 alumos
#N=78  n=36 
sample(1:78,36, replace=FALSE)
muestra<-c(17 41 64 21 68 60 36 58 34 54 67 71 19 65 13 32 72  3 53 14 70 63  8 50 55 27 39
          69  4 76 15  9 24 75 25 23)

#PREESCOLAR
#Estrato=84
#N=84 n=36
sample(1:84,38, replace=FALSE)
muestra<-c(56 49 38 57 55 36  8  7 40 67 75 51 68 62 41 44  9  4 63 16 12 82 79 32 45 17 34
            5 37 11 25  6 24 47 61 69 52 29)

#FISICA
#Estrato=35
#N=35  n=29
sample(1:35, 18, replace=FALSE)
muestra<-c(12 22 14  1  3  9 13 25  6  5  8 29 23 35 34  2 21 27)

#TEESECUNDARIA
#Estrato=83
#N=83   n=55
sample(1:83, 37, replace=FALSE)

muestra<-c(1 25 19 48 42 68 14 17 13 38 28 29 55 80  5 81  3  9 54 33 46 63 44 43 52 20 37
           53 23 10 82 56 22 83 76 18 67)

#ESPECIAL
#Estrato=25
#N=25  n=23
sample(1:25, 13, replace=FALSE)
muestra<-c(1 25 16 23  6 19 22 11 20 14  5  8  2)