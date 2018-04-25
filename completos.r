setwd("C:/Users/Propietario/Documents/GitHub/specdata")
directorio = "C:/Users/Propietario/Documents/GitHub/specdata"

completos<-function(directorio,id=1:332){
    rojo<-c()
    for(i in id){
        x0<-formatC(i,width=3,flag="0")
        y<-paste(x0,"csv",sep=".")
        salto<-na.omit(read.csv(y))
        nuevo<-nrow(salto) 
        rojo<-c(rojo,nuevo)
    }
    amarillo<-c(id)
    numeros<-data.frame(amarillo)
    datos<-data.frame(rojo) 
    titulos<-c(numeros,datos)
    titulos<- data.frame(titulos)
    names(titulos)<- c("id","noobs")
    titulos
}

completos(directorio,id=1:70)



