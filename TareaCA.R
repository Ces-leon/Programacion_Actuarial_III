set.seed(1)
z<-5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
    z <-z+1
  }else{
    z<-z-1
  }
}


v<-c(z,1:32)
v
