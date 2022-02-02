dat <- read.csv("arti_es.csv")
View(dat)
dat[,c(1)]
plot(x=dat[,c(7)],y=dat[,c(8)])
barplot(table(dat[,c(7)]),col = rainbow(3),main = "¿Cuenta con gratificaciones? ",names.arg = c("si", "no"))
barplot(table(dat[,c(8)]),col = rainbow(3),main = "¿Cuenta con su compensación por tiempo de servicios - CTS? ",names.arg = c("si", "no"))
barplot(table(dat[,c(9)]),col = rainbow(3),main = "¿Cuenta con asignación familiar?",names.arg = c("si", "no"))

pie(table(dat[,c(7)]))


# haciendo más cosas interesantes
# haciendo más cosas interesantes
library(ggplot2)
ggplot(data = dat,
       mapping = aes(x = dat$Edad,
                     fill = factor(dat$Carrera))) +
  geom_histogram(bins = 8,
                 position = 'identity',
                 alpha = 0.8) +
  labs(title = 'Titulo',
       fill = 'vs motor',
       x = dat$Preg.1.1,
       y = dat$Preg.1.4.a,
       subtitle = 'agregar información extra',
       caption = 'esta información es de tal fuente')
Carrera <- dat$Carrera
Edad <- dat$Edad
Genero <- dat$Genero
Hora <- dat$Horas
Sueldo <- dat$Sueldo
Tiempo_servicio <- dat$Tiempo
library(ggplot2)

ggplot(dat, aes(Hora, Sueldo, colour = Tiempo_servicio)) + 
  geom_point()
pie(Tiempo_servicio)