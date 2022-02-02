library(ggplot2)
dataep <- read.csv(file = "Codigo/EP/data.csv")


# 1.1 Edad
ggplot(data=dataep, aes(x = Preg.1.1))+
  geom_histogram(color="black", fill="lightblue", size=.1, binwidth = 1)

# 1.2 Género
ggplot(data=dataep, aes(x = Preg.1.2))+
  geom_bar(color="black", fill="lightblue", size=.1)

m <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Masculino"])
f <- length(dataep$Preg.1.2[dataep$Preg.1.2 == "Femenino"])
d <- c(m,f)
g <- c("Femenino","Masculino")

dataep2 <- data.frame(
  group=g,
  value=d
)

ggplot(dataep2, aes(x="", y=d, fill=g)) +
  geom_col(color = "black") + 
  geom_text(aes(label = value),
            position = position_stack(vjust = 0.5)) +
  coord_polar("y", start=0) + 
theme_void()

# 1.3 Estado Civil
l <- list(table(dataep$Preg.1.3))

ggplot(data=dataep, aes(x = Preg.1.3)) + 
  geom_bar(color="black", fill="lightblue", size=.1)



#1.4 Edad vs genero
ggplot(data=dataep, aes(x = Preg.1.2, y = Preg.1.1))+
  geom_bar(color="black", fill="lightblue", size=.1)
            