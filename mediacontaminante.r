setwd("C:/Users/Propietario/Documents/GitHub/specdata")
directorio="C:/Users/Propietario/Documents/GitHub/specdata"

mediacontaminante <- function(directorio , contaminante= "sulfate", id= 1:332){    
    if (contaminante== "sulfate") { 
        columna= 2
    } else if(contaminante == "nitrate"){
        columna=3
    } 
    verde<-0
    suma<-0
    for (i in id){
        x<-formatC(i,width = 3,flag="0")
        x0<-paste(x,"csv",sep=".")
        salto<-read.csv(x0) 
        verde<-length(na.omit(salto[,columna]))+verde
        suma<-sum(salto[,columna],na.rm=TRUE)+suma
        media<-mean(salto[,columna],na.rm=TRUE)
        verde<-verde+media
        
    }
    y<-suma/verde
    y
}

mediacontaminante(directorio,"sulfate",1:33)