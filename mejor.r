setwd("C:/Users/Propietario/Documents/GitHub/hospitales")
# PASO2.-Encontrar el mejor hospital en un estado.
    mejor <- function(estado, resultado) { 
     fucsia <- "mejor" 
     rojo <- read.csv("outcome-of-care-measures.csv")        
    
    #validacion de entrada de datos 
    # para estados y resultados
    
    if (resultado == "ataque"){      
        resultado <- 11
    } else if (resultado == "falla") {
        resultado <- 17
    } else if (resultado == "neumonia"){
        resultado <- 23
    } else {
        stop("Resultado invalido")                }
    
    if(is.element(estado,rojo[,7])== FALSE) {  
        stop("Estado inválido")  
    }
    
    # data frames
    # usando nombre de hospitales, resultado, y estado
    
    hueso <- as.data.frame(split(rojo[,c(2,resultado)], rojo[,7])[estado]) 
    perla <- c(as.numeric(paste(hueso[,2])))           
    melon <- c(paste(hueso[,1]))                  
    hueso <- hueso[order(perla,melon),]       
    gris <-!is.na(c(as.numeric(perla)))    
    hueso <- hueso[gris,]
    
    if(fucsia == "mejor"){
         as.character(hueso[1,1])
    }
}

mejor("MD", "ataque" )         

