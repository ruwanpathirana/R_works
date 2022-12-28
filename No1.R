ST402<-c(52,71,44,90,23,66)
ST419<-c(69,82,57,78,51,63)
ST422<-c(71,84,55,68,52,61)

mkst<-data.frame(ST402,ST419,ST422)
print(mkst)

ST402
ST402[1]
ST402[c(1,2,5)]  #index
ST402[1:4]

row.names(mkst)<-c("A","B","C","D","E","F")
print(mkst)
row.names(mkst)[1:3]

ST419[ST419>70]
ST402[ST419<65]
ST422[rowSums(mkst)<200]
ST422[ST402>50 & ST419>50 & ST422>50]

#----------------------------------------------

Emp_id<-c(20:24)
Department<-c("Sales","HR","Sales","HR","Sales")
Basic_Salary<-c(25450,22500,21000,23500,15000)
Allowances<-c(5200,4500,3100,2600,1800)

Emp_Sal<-data.frame(Emp_id,Department,Basic_Salary,Allowances)
print(Emp_Sal)

Emp_Sal$Net_Sal<- Emp_Sal$Basic_Salary+Emp_Sal$Allowances
print(Emp_Sal)

Emp_Sal$Net_Sal[Department=="Sales"]

Emp_id[Emp_Sal$Net_Sal>25000]

Emp_id[Emp_Sal$Net_Sal<25000 & Department=="HR"]

#Function----------------------------------------------

a<-function(r,x){
  g<-r*x*(1-x)
  return(g)
}

a(3,0)
a(3,0.4)
a(2,0.4)
seq(0,1,length=7)
a(3.5,seq(0,1,length=6))

lmap<-function(r){
  tem<-a(r,0.6)
  a(r,tem)
}

lmap(1)
lmap(3)

fix(lmap)

#While----------------------------------------------

j<-1
while(j<6){
  print(j)
  j<-j+1
}

j<-1
repeat{
  print(j)
  j<-j+1
  
  if(j>5){
    break
  }
}

cat("Hello",23,"\n","I am")
paste("Hello",23,"\n","I am")













