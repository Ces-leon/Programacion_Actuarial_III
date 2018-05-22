setwd("C:/Users/Propietario/Documents/GitHub/hospitales")
rankingcompleto <- function(resultado, num = "mejor") {
    #validacion de entrada de datos
    rojo <- read.csv("outcome-of-care-measures.csv")
    if (!((resultado == "ataque") | (resultado == "falla")
          | (resultado == "neumonia"))) {
        stop ("resultado invalido")                   
    }                                    #validacion nueva (pero mas larga)
    
    # Para cada estado, encuentra el hospital con la posición dada.
    
    col <- if (resultado == "ataque") {
        11 
    } else if (resultado == "falla") {
        17 
    } else {
        23 
    }
    
    rojo[, col] <- suppressWarnings(as.numeric(levels(rojo[, col])[rojo[, col]]))
    rojo[, 2] <- as.character(rojo[, 2])
    #creacion de un nuevo vector el cual usaremos para resultados finales 
    blanco <- vector() 
    estados <- levels(rojo[, 7])
    
    for(i in 1:length(estados)) {
        azul <- rojo[grep(estados[i], data$State), ]
        naranja<- azul[order(azul[, col], azul[, 2], na.last = NA), ]
        
        hospital <- if(num == "mejor") {
            naranja[1, 2]
        } else if(num == "peor") {
            naranja[nrow(naranja), 2]
        } else{
            naranja[num, 2]
        }
        # agregamos elementos al vector que teniamos vacio al inincio
        blanco<- append(blanco, c(hospital, estados[i])) 
    }
    
    # devuelve un data frame con el nombre del hospital y el estado al que pertenece.
    
    blanco <- as.data.frame(matrix(blanco, length(estados), 2, byrow = TRUE))
    colnames(blanco) <- c("hospital", "estado")
    rownames(blanco) <- estados
    blanco
    
}

head(rankingcompleto("ataque",20),10)

tail(rankingcompleto("neumonia","peor"),3)