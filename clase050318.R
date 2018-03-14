setwd("~/GitHub/Programacion_Actuarial_III")
x<-"Software Actuarial III"
y<-data.frame(a=1,b="a")
dump(c("x","y"),file="Data.R")
rm(x,y)
source("Data.R")
#coneccion

x<-c("a","b","c","d")
x[1]
x[2]
x[1:4]
x[x>"b"]
u<-x=="c"
u
x[u]
x[5-3]

x<-list(foo=1:4,bar=0.6)
x
x[1]
x[[1]]

#$
x$foo

x<-list(foo=1:4,bar=0.6,baz="hola")
x[c(1,3)]
x[[c(1,3)]]

name<-"baz"
x[name]
x[[name]]
x$name
