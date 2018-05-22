setwd("C:/Users/Propietario/Documents/GitHub/hospitales")

#PASO1.Graficar la tasa de mortalidad de 30 d�as 
#por ataque al coraz�n.
outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character") 
head(outcome) 
ncol(outcome)
names(outcome)
# histograma simple de las tasas de mortalidad 
#de 30 d�as por ataque al coraz�n.
outcome[, 11] <- as.numeric(outcome[, 11])
hist(outcome[, 11]) 
