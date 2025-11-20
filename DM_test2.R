data(mtcars)


mpg <- mtcars$mpg
mpg
rango_mpg <- range(mpg)
varianza_mpg <-  var(mpg)
desviacion_mpg <-  sd(mpg)

print(paste("Rango:", rango_mpg[2] - rango_mpg[1]))
print(paste("Varianza:", round(varianza_mpg,7)))
print(paste("Desviación Estándar:", desviacion_mpg))


cuartiles_mpg <- quantile(mpg)
cuartiles_mpg


library(ggplot2)


ggplot(mtcars,aes(y=mpg)) +
  geom_boxplot(fill="lightgreen") +
  labs(title = "BoxPlot de MPG", y = "Miles per Gallon")



tabla_gear <- table(mtcars$gear)
tabla_gear

ggplot(mtcars,aes(x=mpg)) +
  geom_histogram(binwidth = 2, fill="lightblue",color = "black") +
  labs(title = "Histograma de MPG", x="Miles per gallon", y="Frecuencia") #Labs son las etiquetas que se le va a dar al histograma


#GRAFICO DE DENSIDAD

ggplot(mtcars, aes(x=mpg)) +
  geom_density(fill="lightblue", alpha=0.5) +
  labs(title="Grafico de densidad", x="Miles per gallon", y="densidad")


barplot(tabla_gear, main="Distribucion de marchas", xlab="Numero de marchas", ylab="frecuencia", col="lightblue")

hp <- mtcars$hp

ggplot(mtcars,aes(x=hp,y=mpg))+
  geom_point(color = "blue") +
  labs(title = "Grafico de dispersion: MPG x HP", x="Caballos de fuerza", y="Millas por galon")


