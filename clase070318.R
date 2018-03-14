setwd("~/GitHub/Programacion_Actuarial_III")

airquality[1:6,]
completo<-complete.cases(airquality[1:6,])
data<-airquality[completo,]
data[1:6,]
x<-1:4; y<-6:9
x+y
x>2
x>=2
y==8
x*y
x/y
x<-matrix(1:4,2,2); y<-matrix(rep(10,4),2,2)
x*y
x/y
x%*%y
x;y;x%*%y
y%*%x
x=3
if (x>5){
  x=0
  }else
{x=5
  }
x
