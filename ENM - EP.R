#Installer readr y haven
# 1.1 Edad

dataep <- read.csv(file = "Codigo/EP/data.csv")
hist(x = dataep$Preg.1.1, main = "Histograma de Edad", 
     xlab = "Edad", ylab = "Frecuencia",
     col = "dodgerblue1")

# 1.2 Género

dataep$Preg.1.2[dataep$Preg.1.2 == "0"] <- "Masculino"
dataep$Preg.1.2[dataep$Preg.1.2 == "1"] <- "Femenino"
barplot(table(dataep$Preg.1.2))

# length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino"])
# length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femeninos"])

# 1.3 Estado Civil

dataep$Preg.1.3[dataep$Preg.1.3 == "0"] <- "Casado(a)"
dataep$Preg.1.3[dataep$Preg.1.3 == "1"] <- "Soltero(a)"
dataep$Preg.1.3[dataep$Preg.1.3 == "2"] <- "Conviviente"
dataep$Preg.1.3[dataep$Preg.1.3 == "3"] <- "Viudo(a)"
dataep$Preg.1.3[dataep$Preg.1.3 == "4"] <- "Divorciado(a)"

barplot(table(dataep$Preg.1.3))

# length(dataep$Preg.1.3[dataep$Preg.1.3 == "Casado(a)"])
# length(dataep$Preg.1.3[dataep$Preg.1.3 == "Soltero(a)"])
# length(dataep$Preg.1.3[dataep$Preg.1.3 == "Conviviente"])
# length(dataep$Preg.1.3[dataep$Preg.1.3 == "Viudo(a)"])
# length(dataep$Preg.1.3[dataep$Preg.1.3 == "Divorciado(a)"])


