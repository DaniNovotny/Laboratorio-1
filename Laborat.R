library(readxl)
library(zoo)

# PROBLEMA 1

# Leer los archivos y agregarle una columna adicional de fecha

X01 <- read_excel("Lab1/01-2018.xlsx")
a <- "2018-01"
X01$ANIO <- a

X02 <- read_excel("Lab1/02-2018.xlsx")
a <- "2018-02"
X02$ANIO <- as.Date(as.yearmon(a))

X03 <- read_excel("Lab1/03-2018.xlsx")
a <- "2018-03"
X03$ANIO <- as.Date(as.yearmon(a))

X04 <- read_excel("Lab1/04-2018.xlsx")
a <- "2018-04"
X04$ANIO <- as.Date(as.yearmon(a))

X05 <- read_excel("Lab1/05-2018.xlsx")
a <- "2018-05"
X05$ANIO <- as.Date(as.yearmon(a))

X06 <- read_excel("Lab1/06-2018.xlsx")
a <- "2018-06"
X06$ANIO <- as.Date(as.yearmon(a))

X07 <- read_excel("Lab1/07-2018.xlsx")
X07 <- X07[1:8]
a <- "2018-07"
X07$ANIO <- as.Date(as.yearmon(a))

X08 <- read_excel("Lab1/08-2018.xlsx")
X08 <- X08[,1:8]
a <- "2018-08"
X08$ANIO <- as.Date(as.yearmon(a))

X09 <- read_excel("Lab1/09-2018.xlsx")
X09 <- X09[,1:8]
a <- "2018-09"
X09$ANIO <- as.Date(as.yearmon(a))

X10 <- read_excel("Lab1/10-2018.xlsx")
X10 <- X10[,1:8]
a <- "2018-10"
X10$ANIO <- as.Date(as.yearmon(a))

X11 <- read_excel("Lab1/11-2018.xlsx")
X11 <- X11[,1:8]
a <- "2018-11"
X11$ANIO <- as.Date(as.yearmon(a))

# Unificar todos los archivos en una tabla unica

unido <- rbind(X01,X02,X03,X04,X05,X06,X07,X08,X09,X10,X11)

# Exportarlo como CSV o como Excel

write.csv(unido, file="Unido.csv") 

# Investigar sobre estos dos temas:
# list.files
# substr


# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * 

# PROBLEMA 2

a <- sample(1:100,20,TRUE)
b <- sample(1:100,25,TRUE)
c <- sample(1:100,30,TRUE)

ej_lista <- list(a,b,c)

# Mi proceso de encontrar la moda fue la siguiente: 
sort(table(a),decreasing = TRUE)
max(sort(table(a),decreasing = TRUE))
which.max(sort(table(a),decreasing = TRUE))

a[which.max(sort(table(a),decreasing = TRUE))]

# Esta linea anterior ya me devuelve la moda de un solo vector,
# ahora solo tengo que convertirlo en una funcion.

funcion <- function(a) {
  moda <- a[which.max(sort(table(a),decreasing = TRUE))]
  return(moda)
}

lapply(ej_lista, funcion)


# ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * ~ * 

# PROBLEMA 3

# install.packages("readr")

library(readr)

parque_veh <- read_delim(file = "INE_PARQUE_VEHICULAR_080720.txt",delim = "|")
parque_veh <- parque_veh[,1:10]

