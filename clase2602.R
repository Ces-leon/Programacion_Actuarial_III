x <- list(1, "a", TRUE, 3+2i, 5L)
x
#matrices
m <- matrix(nrow=2, ncol=3)
m
dim(m)
attributes(m)

#como llenar una matriz
m <- matrix(data=1:6, nrow=2, ncol=3)
m <- matrix(1:6,2,3)
m
#la manera automatica de llenar es por columna
#haremos los ,mismo pero por filas
m <- matrix(data=1:6, nrow=2, ncol=3, byrow=TRUE)
m <- matrix(1:6,2,3,T)
m
#MANERA ALTERNATVA DE CREAR UN VECTOR
m <- 1:10
m
dim(m)<-c(2,5)
m

#otra manera de crear matrices
x <- 1:3
y <- 10:12
#Cbind, une columnas
cbind(x,y)
rbind(x,y)

#Factores
x<- factor(c("Si","Si","No","No","Si"))
x

x<-factor(c("Azul","Verde","Verde","Azul","Rojo"), levels = c("Rojo","Amarillo", "Verde", "Naranja"))
x

table(x)
unclass(x)


x <- data.frame(foo=1:4, bar= c(T,T,F,F))
x
x<- 1:3
names(x)
names(x) <- c("foo", "bar", "norf")
x
names(x)

