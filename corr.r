setwd("C:/Users/Propietario/Documents/GitHub/specdata")
directorio="C:/Users/Propietario/Documents/GitHub/specdata"

corr<-function(directorio,horizonte=0){
    azul<-c()
    for(i in 1:332){
        x0<-formatC(i,width=3,flag="0")
        y<-paste(x0,"csv",sep=".")
        salto<-na.omit(read.csv(y))
        ren<-nrow(salto)
        if(ren>horizonte){
            col2<-data.frame(salto[,2])
            col3<-data.frame(salto[,3])
            correlacion<-cor(col2,col3)
            azul<-c(azul,correlacion)}
        
    }
    azul 
}

corr(directorio,0)
