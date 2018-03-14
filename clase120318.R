for(i in 1:10){
  print(i)
}

for(i in c("a","b","c")){
  print(i)
}

x<-c("a","b","c","d")
for(i in 1:4){
  print(x[i])
}
for(i in seq_along(x)){
  print(x[i])
}
for(letra in x){
  print(letra)
}
for(i in 1:4) print(x[i])

x<- matrix(1:6,2,3)
for(i in seq_len(nrow(x))){
  for(j in seq_len(ncol(x))){
    print(x[i,j])
  }
}
x

count<-0
while(count<10){
  print(count)
  count<-count+1
}
set.seed(1)
contador<-0
z<-5
while(z>=3 && z<=10){
  print(z)
  moneda <- rbinom(1,1,0.5)
  if(moneda==1){
     z <-z+1
  }else{
    z<-z-1
  }
contador<-contador+1
}
contador

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
z<-as.vector(z,"any")
z

