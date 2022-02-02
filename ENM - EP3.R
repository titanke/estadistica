# 1.1 Edad
ggplot(data=dataep, aes(x = Preg.1.2, y = Preg.1.1))+
  geom_histogram(color="black", fill="lightblue", size=.1, binwidth = 1)

# Edad - Genero - Profesion

p <- c(c("Turismo", "Turismo"), c("Contabilidad", "Contabilidad"),
       c("Ing. Civil", "Ing. Civil"), c("Tur. y Cont.", "Tur. y Cont."))

t1 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino" & dataep$Preg.1.4.a == "turismo"])
t2 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femenino" & dataep$Preg.1.4.a == "turismo"])
c1 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino" & dataep$Preg.1.4.a == "contabilidad"])
c2 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femenino" & dataep$Preg.1.4.a == "contabilidad"])
ic1 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino" & dataep$Preg.1.4.a == "ing. Civil"])
ic2 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femenino" & dataep$Preg.1.4.a == "ing. Civil"])
tc1 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino" & dataep$Preg.1.4.a == "turismo y contabilidad"])
tc2 <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femenino" & dataep$Preg.1.4.a == "turismo y contabilidad"])

d <- c(c(t1,t2),c(c1,c2),c(ic1,ic2),c(tc1,tc2))

g <- c("Masculino", "Femenino")

dataep3 <- data.frame(
  Profesión =p,
  Cantidad = d,
  Genero = g
)


ggplot(dataep3, aes(fill=Genero, y=Profesión, x= Cantidad)) + 
  geom_bar(position="dodge", stat="identity")






# Tiempo 

dataep$Preg.2.7[dataep$Preg.2.7 == "0"] <- "Menos de 1 año"
dataep$Preg.2.7[dataep$Preg.2.7 == "1"] <- "1 año a 3 años"
dataep$Preg.2.7[dataep$Preg.2.7 == "2"] <- "4 años a 5 años"
dataep$Preg.2.7[dataep$Preg.2.7 == "3"] <- "Más de 5 años"

ggplot(data=dataep, aes(x = Preg.2.7))+
  geom_bar(color="black", fill="lightblue", size=.1)


tm1 <- length(dataep$Preg.2.7[dataep$Preg.2.7 == "Menos de 1 año"])
tm2 <- length(dataep$Preg.2.7[dataep$Preg.2.7 == "1 año a 3 años"])
tm3 <- length(dataep$Preg.2.7[dataep$Preg.2.7 == "4 años a 5 años"])
tm4 <- length(dataep$Preg.2.7[dataep$Preg.2.7 == "Más de 5 años"])

t <- c(tm1, tm2, tm3, tm4)
tch <- c("Menos de 1 año", "1 año a 3 años", "4 años a 5 años", "Más de 5 años")

dataep4  <- data.frame(Tiempo = t, Años = tch)

ggplot(data=dataep4, aes(x = Tiempo, y = Años))+
  geom_bar(stat="identity", fill="lightblue", color="black")

ggplot(data=dataep4, aes(x = Tiempo, y = Años))+
  geom_bar(color="black", fill="lightblue", size=.1)





# Separador = si/no - numero - Pregunta 
# 2.1 - 2.3 - 2.5 - 2.8 - 2.9 - 2.10 - 2.11 - 2.12 - 2.13 - 2.14

Res <- rep(c("Si", "No"), 10)
Pregun <-c("2.01","2.01","2.03","2.03","2.05","2.05","2.08","2.08","2.09","2.09",
           "2.10","2.10","2.11","2.11","2.12","2.12","2.13","2.13","2.14","2.14")

p2.01 <- c(length(dataep$Preg.2.1[dataep$Preg.2.1 == 0]), length(dataep$Preg.2.1[dataep$Preg.2.1 == 1])-1)
p2.03 <- c(length(dataep$Preg.2.3[dataep$Preg.2.3 == 0]), length(dataep$Preg.2.3[dataep$Preg.2.3 == 1]))
p2.05 <- c(length(dataep$Preg.2.5[dataep$Preg.2.5 == 0]), length(dataep$Preg.2.5[dataep$Preg.2.5 == 1]))
p2.08 <- c(length(dataep$Preg.2.8[dataep$Preg.2.8 == 0]), length(dataep$Preg.2.8[dataep$Preg.2.8 == 1])-1)
p2.09 <- c(length(dataep$Preg.2.9[dataep$Preg.2.9 == 0]), length(dataep$Preg.2.9[dataep$Preg.2.9 == 1])-1)
p2.10 <- c(length(dataep$Preg.2.10[dataep$Preg.2.10 == 0]), length(dataep$Preg.2.10[dataep$Preg.2.10 == 1])-1)
p2.11 <- c(length(dataep$Preg.2.11[dataep$Preg.2.11 == 0]), length(dataep$Preg.2.11[dataep$Preg.2.11 == 1]))
p2.12 <- c(length(dataep$Preg.2.12[dataep$Preg.2.12 == 0]), length(dataep$Preg.2.12[dataep$Preg.2.12 == 1]))
p2.13 <- c(length(dataep$Preg.2.13[dataep$Preg.2.13 == 0]), length(dataep$Preg.2.13[dataep$Preg.2.13 == 1]))
p2.14 <- c(length(dataep$Preg.2.14[dataep$Preg.2.14 == 0]), length(dataep$Preg.2.14[dataep$Preg.2.14 == 1]))

cant <- c(p2.01, p2.03, p2.05, p2.08, p2.09, p2.10, p2.11, p2.12, p2.13, p2.14)

dataep5 <- data.frame(
  Respuesta = Res,
  Pregunta = Pregun,
  Cantidad = cant
  )

ggplot(dataep5, aes(fill=Res, y=Pregunta, x= Cantidad)) + 
  geom_bar(position="dodge", stat="identity")



# Motivo por que sigue lavorando 
dataep$Preg.2.15[dataep$Preg.2.15 == "0"] <- "Por necesidad"
dataep$Preg.2.15[dataep$Preg.2.15 == "1"] <- "Por ascenso"
dataep$Preg.2.15[dataep$Preg.2.15 == "2"] <- "Mejores condiciones"
dataep$Preg.2.15[dataep$Preg.2.15 == "3"] <- "Buena relacion"

ml0 <- length(dataep$Preg.2.15[dataep$Preg.2.15 == "Por necesidad"])
ml1 <- length(dataep$Preg.2.15[dataep$Preg.2.15 == "Por ascenso"])
ml2 <- length(dataep$Preg.2.15[dataep$Preg.2.15 == "Mejores condiciones"])
ml3 <- length(dataep$Preg.2.15[dataep$Preg.2.15 == "Buena relacion"])

mlg <- c(ml0, ml1, ml2, ml3)
nml <- c("Por necesidad", "Por ascenso", "Mejores condiciones", "Buena relacion")
dataep6 <- data.frame(
  Cantidad = mlg,
  Motivo = nml
)

ggplot(data=dataep6, aes(x = Cantidad, y = Motivo))+
  geom_bar(stat="identity", fill="lightblue", color="black")

