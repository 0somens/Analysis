
# ------------------ Paso 4 --------------------
data(mtcars)
str(mtcars)

summary(mtcars)

mpg <- mtcars$mpg
media_mpg <- mean(mpg)
mediana_mpg <- median(mpg)

getmode <- function(v){
  uniqv <- unique(v)
  uniqv[which.max(tabulate((match(v,uniqv))))]
}
moda_mpg <- getmode(mpg)

media_mpg
mediana_mpg
moda_mpg
# ------------------ Paso 5 ----------------------
library(ggplot2)
ggplot(mtcars, aes(x=mpg))+
  geom_histogram(binwidth = 2,fill = "lightblue",color="black") +
  geom_vline(aes(xintercept = media_mpg), color = "blue", linetype= "dashed",size = 1) +
  geom_vline(aes(xintercept = mediana_mpg), color ="purple",linetype="dashed",size = 1) +
  geom_vline(aes(xintercept = moda_mpg), color="darkgreen",linetype="dashed",size=1) +
  labs(title = "Histograma de MPG", x = "Millas por galón", y="Frecuencia")

# ------------------ Paso 6 ----------------------

rango <- range(mpg)
rango

varianza_mpg <- var(mpg)
varianza_mpg

desviacion_mpg <- sd(mpg)
desviacion_mpg


# ------- Paso 7 ------- BOXPLOT --------------

ggplot(mtcars, aes(y = mpg)) +
  geom_boxplot(fill="lightgreen") +
  labs(title="Boxplot de MPG", y="Millas por galón")


# ------------------ Paso 8 ----------------------

tabla_gear <- table(mtcars$gear)
barplot(tabla_gear, main="Distribucio0n de Marchas", xlab="Numero de marchas", ylab= "Frecuencia", col ="lightblue")











