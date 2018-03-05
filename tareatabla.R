x <-data.frame(a=1,b="a")
x
mtcars
z<-mtcars
z
dput(z,file="~/GitHub/Programacion_Actuarial_III/Carros(Cesar).R")
V<- dget(file="~/GitHub/Programacion_Actuarial_III/Carros(Cesar).R")
V
