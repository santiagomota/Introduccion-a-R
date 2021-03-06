################################################################################
## Santiago Mota                                                              ##
## santiago_mota@yahoo.es                                                     ##
## https://es.linkedin.com/in/santiagomota/en                                 ##
################################################################################

# Asignación: 
datos <- 10

# Datasets incoporados: 
data("iris")

# Ver objeto
iris

# Inicio
head(iris)
head(iris, 10)

# Final
tail(iris)
tail(iris, 20)

# Clase del objeto: 
class(iris)

# Información del objeto: 
str(iris)
summary(iris)

# Gráfico del objeto: 
plot(iris)

# Editar estilo excel: 
fix(iris)

# Instalar un paquete: 
install.packages(lattice)

# Cargar paquete: 
library(lattice)

# Demo del paquete: 
demo(lattice)

# Clases de datos
x <- c(0, 1, 2, 3, 4, 5, 6)
x

# Equivalente x <- 1:6

class(x)
# [1] "integer"

as.numeric(x)
# [1] 0 1 2 3 4 5 6

as.logical(x)
# [1] FALSE TRUE TRUE TRUE TRUE TRUE TRUE

as.character(x)
# [1] "0" "1" "2" "3" "4" "5" "6"

as.complex(x)
# [1] 0+0i 1+0i 2+0i 3+0i 4+0i 5+0i 6+0i

# Crear un dataframe
sample_df <- data.frame(a = 1:5, b = 5:1, c = c(5, 3, 1, 4, 1))
sample_df

# Obtener una columna
sample_df$a
sample_df$b

# Obtener varias columnas por el nombre
sample_df[c('a', 'c')]

columnas_a_y_c <- sample_df[c('a', 'c')]
columnas_a_y_c

# Obtener varias columnas por el numero de columna
sample_df[c(1, 3)]

# Todas las columnas menos 1
sample_df[-2]
sample_df[-1]

# Igual
sample_df[, -2]
sample_df[, -1]

# Por filas
sample_df[1, ]
sample_df[2, ]

# Acceder por filas y columnas
sample_df[2, 2]

# Matrices

# Crea una matrix 2x2
m <- matrix(c('a', 'b', 'c', 'd'), nrow = 2)
m
class(m)

# Igual
m <- matrix(c('a', 'b', 'c', 'd'), ncol = 2)
m

# Obtener valores de la matriz por fila y columna
m[1, 1]
m[1, 2]

# Filas
m[1, ]

# Columnas
m[, 1]

# Numericas
m <- matrix(1:6, nrow = 2, ncol = 3)
m

# Selecciones con condiciones
m>3
m[m>3]
m[!(m>3)]

# Dataset de Coches 
data("mtcars")

# Informacion
str(mtcars)
summary(mtcars)
?mtcars

# Quantiles de los cilindros
quantile(mtcars$cyl)

# Percentiles 99
quantile(mtcars$cyl, probs = c(0.01, 0.99))

# Quintiles
quantile(mtcars$cyl, seq(from = 0, to = 1, by = 0.20))

# Boxplots
boxplot(mtcars$cyl, main="Boxplot numero de cilindros", ylab="Cilindros")
boxplot(mtcars$mpg, main="Boxplot millas por galon", ylab="Millas/gallon")

# Histogramas
hist(mtcars$cyl, main="Histograma numero de cilindros", xlab="Cilindros")
hist(mtcars$mpg, main="Histograma millas por galon", xlab="Millas/gallon")

# Media, varianza y desviación estandar
mean(mtcars$cyl)
var(mtcars$cyl)
sd(mtcars$cyl)

## Tablas
# Tablas de variables
table(mtcars$cyl)
table(mtcars$gear)

# Tabla de porcentajes
tabla_cilindros <- table(mtcars$cyl)
prop.table(tabla_cilindros)
round(prop.table(tabla_cilindros), 3)
tabla_cilindros

# Unión de vectores
x <- 1:3
y <- 10:12
x
y

# Union por columnas
cbind(x, y) 

# Union por filas
rbind(x, y)

# Numeros aleatorios
set.seed(1)
?sample
sample(1:10, 4)
# [1] 3 4 5 7

sample(1:10, 4)
# [1] 3 9 8 5

sample(letters, 5)
# [1] "q" "b" "e" "x" "p"

sample(1:10) ## permutation
# [1] 4 7 10 6 9 2 8 3 1 5

sample(1:10)
# [1] 2 3 4 1 9 5 10 8 6 7

sample(1:10, replace = TRUE) ## Sample con reemplazamiento
# [1] 2 9 7 8 2 8 5 9 7 8

# Distribuciones normales
x <- rnorm(100)
hist(x)

y <- rnorm(100)
plot(x, y)

# Establecer los margenes del grafico
par(mar=c(2, 2, 2, 2)) 
plot(x,y)

par(mar=c(4 ,4, 2, 2))
plot(x,y)

# Cambiar diseño de puntos
plot(x, y, pch=19)

# Usando la funcion example
example(points)   

# Mas graficos
x <- rnorm(100)
y <- rnorm(100)
plot(x, y, pch=20)

# Titulo
title("Scatterplot")

# Texto libre
text(-2, -2, "Label")

# Leyenda
legend("topleft", legend = "Data")

# Crear una regresión lienal
fit <- lm(y ~ x)

# Dibujarla
abline(fit)

# Mas gruesa
abline(fit, lwd =3)

# Azul
abline(fit, lwd =3, col="blue")

# Distribución de Poisson
z <- rpois(100, 2)

# Dos gráficos
par(mfrow=c(2, 1))
plot(x, y, pch=20)
plot(x, z, pch=19)

# Ver las opciones graficas
par()

# Volver a un grafico
par(mfrow=c(1, 1))

x <- rnorm(100)
y <- x + rnorm(100)
g <- gl(2, 50, labels=c("Male", "Female"))
x
y
str(g)
plot(x, y)
plot(x, y, type="n") # prepare the plot buy do not print it
points(x[g=="Male"], y[g=="Male"], col="green")
points(x[g=="Female"], y[g=="Female"], col="blue")

# Funciones matematicas

# Basicas

# sum     # sum
# sqrt    # square root
# sd      # standard deviation
# log     # log
# mean    # mean
# median  # median

# Otras

# cumsum  # Cumulative Sum for a column
# diff    # Differencing
# lag     # Lag

# Manipulacion de datos

# paste(a$Var)       # converts Var from Factor/Numeric variable to Charachter Variable
# as.numeric(a$Var2) # Converts a character variable into a numeric variable
# is.na(a)           # retruns TRUE wheneve it encounters a Missing Value within the object
# na.omit(a)         # Deletes all missing values (denoted by NA within R)
# na.rm=T            # (this option enables you to calculate values Ignoring Missing Values)
# nchar(abc)         # gives the values of characters in a character value
# substr("ajay",1,3) # gives the sub string from starting place 1 to ending place 3. Note in R index starts from 1 for first object

# For sums and means of matrix dimensions, we have some shortcuts.
# rowSums  = apply(x, 1, sum)
# rowMeans = apply(x, 1, mean)
# colSums  = apply(x, 2, sum)
# colMeans = apply(x, 2, mean)

###############################################################################
### Machine Learning with R

## Vectores

# Crear vectores de datos para tres pacientes
subject_name <- c("John Doe", "Jane Doe", "Steve Graves")
temperature  <- c(98.1, 98.6, 101.4)
flu_status   <- c(FALSE, FALSE, TRUE)

## Factores

# añadir el genero
gender <- factor(c("MALE", "FEMALE", "MALE"))
gender

# añadir el tipo de sangre
blood <- factor(c("O", "AB", "A"), levels = c("A", "B", "AB", "O"))
blood

## Listas

# Obtener la informacion del paciente 1
subject_name[1]
temperature[1]
flu_status[1]
gender[1]
blood[1]

# crear una lista para ese paciente
subject1 <- list(fullname    = subject_name[1], 
                 temperature = temperature[1], 
                 flu_status  = flu_status[1], 
                 gender      = gender[1], 
                 blood       = blood[1])

# verlo
subject1

## Data frames

# crear un dataframe de los datos médicos

pt_data <- data.frame(subject_name, temperature, flu_status, gender, blood, 
                      stringsAsFactors = FALSE)

# ver el data frame
pt_data

## acceder al data frame

# una columna
pt_data$subject_name

# varias columnas a partir de los nombres
pt_data[c("temperature", "flu_status")]

# igual, ahora por posicion
pt_data[2:3]

# una fila y columna concreta
pt_data[1, 2]

# varias filas y columnas
pt_data[c(1, 3), c(2, 4)]

## para extraer todos los valores, se deja en blanco

# columna 1, todas las filas
pt_data[, 1]

# fila 1, todas las columnas
pt_data[1, ]

# todas las filas y columnas
pt_data[ , ]

# equivalente
pt_data[c(1, 3), c("temperature", "gender")]
pt_data[-2, c(-1, -3, -5)]

## Matrices

# crear una matriz 2x2
m <- matrix(c('a', 'b', 'c', 'd'), nrow = 2)
m

# igual
m <- matrix(c('a', 'b', 'c', 'd'), ncol = 2)
m

# obtener valores de la matriz
m[1, 1]
m[3, 2]

# filas
m[1, ]

# columnas
m[, 1]

# uniones de vectores
x <- 1:3
y <- 10:12
x
y

# Column bind
cbind(x, y) 

# Row bind
rbind(x, y)


# Subsetting
x <- c("a", "b", "c", "c", "d", "a")
x[1]
# [1] "a"

x[2]
# [1] "b"

x[1:4]
# [1] "a" "b" "c" "c"

x[x > "a"]
# [1] "b" "c" "c" "d"

u <- x > "a"
u
# [1] FALSE TRUE TRUE TRUE TRUE FALSE

x[u]
# [1] "b" "c" "c" "d"

# Subsetting una matriz
x <- matrix(1:6, 2, 3)
x
# [,1] [,2] [,3]
# [1,]    1    3    5
# [2,]    2    4    6

x[1, 2]
# [1] 3

x[2, 1]
# [1] 2

# también se pueden elimnas los indices
x[1, ]

# Por defecto, cuando se obtiene un elemento de una matriz el resultado es un
# vector de tamaño 1x1 en vez de una matriz, para cambiar esto drop = FALSE.

x <- matrix(1:6, 2, 3)

x[1, 2]
# [1] 3

class(x[1, 2])
# [1] "integer"

x[1, 2, drop = FALSE]
#   [,1]
# [1,] 3

class(x[1, 2, drop = FALSE])
# [1] "matrix"

x[, 2]
# [1] 3 4

# Subsetting listas
x <- list(foo = 1:4, bar = 0.6)
x[1]
# $foo
# [1] 1 2 3 4

x[[1]]
# [1] 1 2 3 4

x$bar
# [1] 0.6

x[["bar"]]
# [1] 0.6

x["bar"]
# $bar
# [1] 0.6

# Obtener elementos multiples de una lista
x <- list(foo = 1:4, bar = 0.6, baz = "hello")
x[c(1, 3)]
# $foo
# [1] 1 2 3 4
# $baz
# [1] "hello"

# Se permite una coincidencia parcial con [[ y $.
x <- list(aardvark = 1:5)
x$a
# [1] 1 2 3 4 5

x[["a"]]
# NULL

x[["a", exact = FALSE]]
# [1] 1 2 3 4 5

# Como quitar los valores NA
x   <- c(1, 2, NA, 4, NA, 5)
x
bad <- is.na(x)
bad
x[!bad]
# [1] 1 2 4 5

summary(x)
#    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.    NA's 
#    1.00    1.75    3.00    3.00    4.25    5.00       2 


# ¿Que pasa cuando no queremos los NAs?
x <- c(1, 2, NA, 4, NA, 5)
y <- c("a", "b", NA, "d", NA, "f")

good <- complete.cases(x, y)
good
# [1] TRUE TRUE FALSE TRUE FALSE TRUE

x[good]
# [1] 1 2 4 5

y[good]
# [1] "a" "b" "d" "f"

airquality[1:6, ]
#   Ozone Solar.R Wind Temp Month Day
# 1    41     190  7.4   67     5   1
# 2    36     118  8.0   72     5   2
# 3    12     149 12.6   74     5   3
# 4    18     313 11.5   62     5   4
# 5    NA      NA 14.3   56     5   5
# 6    28      NA 14.9   66     5   6

good <- complete.cases(airquality)

airquality[good, ][1:6, ]
#  Ozone Solar.R Wind Temp Month Day
# 1   41     190  7.4   67     5   1
# 2   36     118  8.0   72     5   2
# 3   12     149 12.6   74     5   3
# 4   18     313 11.5   62     5   4
# 7   23     299  8.6   65     5   7
# 8   19      99 13.8   59     5   8

## ggplot2
library(ggplot2)

# Crear factores con etiquetas
mtcars$gear <- factor(mtcars$gear,levels=c(3,4,5),
                      labels=c("3gears","4gears","5gears"))
mtcars$am <- factor(mtcars$am,levels=c(0,1),
                    labels=c("Automatic","Manual"))
mtcars$cyl <- factor(mtcars$cyl,levels=c(4,6,8),
                     labels=c("4cyl","6cyl","8cyl"))

# Kernel density plots for mpg
# grouped by number of gears (indicated by color)
qplot(mpg, data=mtcars, geom="density", fill=gear, alpha=I(.5),
      main="Distribution of Gas Milage", xlab="Miles Per Gallon",
      ylab="Density")

# Scatterplot of mpg vs. hp for each combination of gears and cylinders
# in each facet, transmittion type is represented by shape and color
qplot(hp, mpg, data=mtcars, shape=am, color=am,
      facets=gear~cyl, size=I(3),
      xlab="Horsepower", ylab="Miles per Gallon")

# Separate regressions of mpg on weight for each number of cylinders
qplot(wt, mpg, data=mtcars, geom=c("point", "smooth"),
      method="lm", formula=y~x, color=cyl,
      main="Regression of MPG on Weight",
      xlab="Weight", ylab="Miles per Gallon")

# Boxplots of mpg by number of gears
# observations (points) are overlayed and jittered
qplot(gear, mpg, data=mtcars, geom=c("boxplot", "jitter"),
      fill=gear, main="Mileage by Gear Number",
      xlab="", ylab="Miles per Gallon")

# Plotly

## https://plot.ly/ggplot2/
      
library(plotly)

# Definir los datos
dsamp <- diamonds[sample(nrow(diamonds), 1000), ]

# Dibujar. Ver que es interactivo
qplot(carat, price, data=dsamp, colour=clarity)
ggplotly()

# Establecer semilla
set.seed(100)

# Valores
d <- diamonds[sample(nrow(diamonds), 1000), ]

# Definimos el grafico en p
p <- ggplot(data = d, aes(x = carat, y = price)) +
      geom_point(aes(text = paste("Clarity:", clarity)), size = 4) +
      geom_smooth(aes(colour = cut, fill = cut)) + facet_wrap(~ cut)

# Lo imprimimos con ggplotly
gg <- ggplotly(p)


## Leaflet
library(leaflet)

# Creamos el grafico
m <- leaflet() %>%
      addTiles() %>%  # Add default OpenStreetMap map tiles
      addMarkers(lng=-3.7038, lat=40.4168, popup="Madrid")

# Lo imprimimos
m


################################################################################
## Ejemplos: 

# https://github.com/mages/googleVis/blob/master/demo/WorldBank.R
# https://github.com/walkerke/teaching-with-datavis/blob/master/wdi-leaflet/wdi_leaflet.R

