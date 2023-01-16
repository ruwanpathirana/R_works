#types----------------------------------------------

a1<-"David"
print(a1)
cat(a1)

a2<-3.14
a3<-88L
print(a2)
print(a3)

a4<-"this is called\"escaping\".and\nthats it"
print(a4)
cat(a4)

#operations----------------------------------------------

b1<-11
b2<-4
b1/b2
b1%/%b2

min(10,15)
max(100,45)

x<-14
x>20
x==14

#input----------------------------------------------

input<-print(readline(prompt = "Enter name: "))


input1<-print(readline("Enter name: "))


b<-function(k){
  k<-as.integer(readline("Enter Temp: "))
  t<-k+273
  print(t)
}
b()


c<-print(as.numeric(readline("Enter no: "))*10)

c1<-function(z){
  z<-as.integer(readline("Enter number: "))
  x<-z*10
  print(x)
}
c1()

#if-else----------------------------------------------

score<-78

if(score>=75){
  print("A")
}else if(score>=50){
  print("B")
}else{
  print("C")
}

a<-function(m){
  m<-as.numeric(readline("Enter Marks: "))
  
  if(m>=75){
    print("A")
  }else if(m>=50){
    print("B")
  }else{
    print("C")
  }
}
a()


#logical operators----------------------------------------------

x<-TRUE
print(!x)

x<-10
y<-10
x==y

#switch----------------------------------------------

num<-3
result<-switch(
  num,"Mango","Banana","Pineapple","Watermelon","Papaya"
)
print(result)

s<-function(k){
  k<-as.integer(readline("Enter the index: "))
  result<-switch(
    k,"Mango","Banana","Pineapple","Watermelon","Papaya"
  )
  print(result)
}
s()

a<-function(s){
  s<-readline("Enter state code: ")
  state<-switch(
    s,
    "CA"="California",
    "NY"="New York",
    "DC"="Washington DC",
    "IL"="Illanois"
  )
  print(state)
}
a()


#while loop----------------------------------------------

i<-1
while(i<10){
  print(i)
  i<-i+2
  
}


i<-1
while(i<10){
  print(i)
  i<-i+1
  
  if(i==5){
    break
  }
}


#for loop----------------------------------------------

for(x in 1:10){
  print(x)
  
  if(x==4){
    break
  }
}

for(x in 1:10){
  
  if(x==4){
    next
  }
  print(x)
}

x<-5

for(i in x:1){
  for(s in 0:(x-1)){
    print(noquote(paste(strrep(" ",s),strrep("#",i))))
    s<-s+1
    i<-i-1
  }
  break

}

z<-function(n){
  n<-as.integer(readline("Enter the number: "))
  for(i in n:1){
    for(s in 0:(n-1)){
      print(noquote(paste(strrep(" ",s),strrep("#",i))))
      s<-s+1
      i<-i-1
    }
    break
  }
}
z()



#function----------------------------------------------

pow<-function(x,y){
  r<-x^y
  print(r)
}
pow(2,3)


pow<-function(x,y=2){
  x<-as.numeric(readline("Enter number: "))
  r<-x^y
  return(r)   #or print
}
pow()

#Concatenation----------------------------------------------

t1<-"Hello"
t2<-"Sri"
t3<-"Lanka"
paste(t1,t2,t3)
paste(t1,t2,t3,sep="")

#Upper/Lower----------------------------------------------

txt<-"RuwAn"
txt1<-toupper(txt)
print(txt1)
txt3<-tolower(txt)
print(txt3)

#char & substr----------------------------------------------

print(nchar(txt))

print(substr(txt,2,4))

#----------------------------------------------Vectors----------------------------------------------

names<-c("fd","sg","fp","ep")
print(names[2])

names<-c("fd"=20,"sg"=24,"fp"=14,"ep"=18)
print(names["fp"])

print(names[["fp"]])

print(names[-3])   #skip

print(names[2:4])  #range

#vector functions----------------------------------------------

x<-c(1,4,9,16,25,36,49,64,81,100)

cat(paste("length: ",length(x)))

print(sum(x))
print(sort(x))
print(sort(x,decreasing = TRUE))

x[2]=10
print(x)

#sequence---------------------------------------------

y<-seq(1,20,by=2)
print(y)
print(y[x>9])

y[4]<-34
print(y)

x<-c(1,4,9,16,25,36,49,64,81,100)
y<-seq(1,20,by=2)

print(x+y)

z<-c(2,4,6)
print(x+z)

print(mean(x))
print(median(x))


#----------------------------------------------List----------------------------------------------

x<-list("fd","sg","fp","ep",c(2,4,6,8))
print(x[3])
print(x[[3]])

y<-list("fd"=20,"sg"=24,"fp"=14,"ep"=18,"sc"=FALSE)

print(y["fp"])
print(y[["fp"]])
print(y$sg)

#add
y[["gn"]]<-30
print(y)

a<-c(x,y)
print(a)

b<-unlist(x)  #convert list to vector
print(b)

#matrix----------------------------------------------

x<-matrix(c(1,2,3,4,5,6))
print(x)

x<-matrix(c(1,2,3,4,5,6),nrow=2)
print(x)
print(t(x))

print(x[1,2])
print(x[1,])
print(x[,2])

x[2,3]=40
print(x)

a<-matrix(1:8,nrow=2)
b<-matrix(9:16,nrow = 2)
c<-matrix(9:16,nrow = 4)
print(a)
print(b)
print(c)

print(a*b)
print(a%*%c)

d<-matrix(1:4,nrow = 2)
print(d)
solve(d)   #inverse
solve(a)  #error, a must be square matrix
#----------------------------------------------DataFrame----------------------------------------------


x<-data.frame("id"=1:3,"names"=c("A","B","C"),"age"=c(20,34,56))
print(x)

print(x$names)
print(x[3])
print(x[2,3])
print(x[2,])
print(x[2,"age"])

x$city<-c("Colombo","Kandy","Matale")
print(x)

print(x[x$age>30])
subset(x,age>30)
print(mean(x$age))
summary(x)



#RandomSample----------------------------------------------

sample(1:40,5)
sample(1:6,5,replace = FALSE)  #replace=repeat value & x>n
sample(1:6,5,replace = T)
sample(c("H","T"),10,replace = T)
sample(c("H","T"),10,replace = T,prob = c(0.9,0.1))

set.seed(5)   #same sequence
sample(1:40,10)

sample(1:40,10)

set.seed(5)
sample(1:40,10)

#Array----------------------------------------------
a<-array(1:15,dim = c(5,3),dimnames = list(101:105,201:203))
print(a)  # same as matrix operators

?array


#Probability Distribution----------------------------------------------

#Pr(x<=18) when ~N(20,sd=4.2)

pnorm(18,20,4.2)       #p=probability  cdf
qnorm(0.25,20,4.2)     #q=quantile

#Pr(x<=10) when ~N(12.5,var=3.5)

pnorm(10,12.5,sqrt(3.5))

#Pr(x>18) when ~N(12.5,var=3.5)

pnorm(18,12.5,sqrt(3.5),lower.tail = FALSE)

#75% percentile

qnorm(0.75,12.5,sqrt(3.5))

#Generating a vector of 20 normally distributed random variables with mean=10 and sd=2

rnorm(20,10,2)    #r=random

#Value of the standard normal distribution pdf at x=1

dnorm(1,0,1)


#Generate 20 random values which are distributed Normal with mean 15 and variance 9

rnorm(20,15,sqrt(9))

#Draw a histogram using 100 random values which are distributed Normal with mean 100 and variance 225

x<-rnorm(100,100,15)
hist(x)
hist(x,probability = TRUE)
