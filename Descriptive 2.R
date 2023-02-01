library(datasets)
airquality

#view first 5 rows
airquality[1:5,]

#mean Temp
mean(airquality$Temp)
median(airquality$Temp)
var(airquality$Temp)

#don't want to keep using the "$" sign to point to the data set, we a can use the attach command
attach(airquality)
var(Temp)

#interquartile range (IQR)
quantile(airquality$Temp)

#percentage cut points
cut<-seq(0,1,0.1)
cut
quantile(airquality$Temp,cut)

#-------------------------------------------------------------------------------
#when have missing value

mean(airquality$Ozone)
#result ->  NA  

mean(airquality$Ozone,na.rm = TRUE)

#all col means
apply(airquality,2,mean,na.rm = TRUE)

#-------------------------------------------------------------------------------

summary(airquality$Ozone)  #but no need for summary na.rm

summary(airquality)

#-------------------------------------------------------------------------------

#Histograms

hist(airquality$Temp)

hist(airquality$Temp,breaks = 20)
hist(airquality$Temp,breaks = c(40,60,80,100))

hist(airquality$Temp,probability = TRUE)

hist(airquality$Temp,probability = TRUE,main = 'Temperature')
points(density(airquality$Temp),type = 'l',col='blue')
rug(airquality$Temp,col="red")

#fit a normal curve over the data

m<-mean(airquality$Temp)
s<-sqrt(var(airquality$Temp))
hist(airquality$Temp,probability = TRUE,main = 'Temperature',col='orange')   #***prob=T
curve(dnorm(x,mean = m, sd=s),col='maroon',lwd=3,add = TRUE)    #add=T otherwise it plots separately

par(mfrow=c(2,2))
hist(airquality$Temp, prob=T)
hist(airquality$Ozone, prob=T)
hist(airquality$Wind, prob=T)
hist(airquality$Solar.R, prob=T)

#-------------------------------------------------------------------------------

#Q-Q Plot
par(mfrow=c(1,1))
qqnorm(airquality$Temp)
qqline(airquality$Temp)

#-------------------------------------------------------------------------------

#boxplot

boxplot(airquality$Ozone)
boxplot(airquality[,1:4])  #quick summaries for all the variables but not really meaningful as the variables may not be on comparable scales

#boxplots of temperature data grouped by the factor "month"

boxplot(airquality$Temp~airquality$Month)
#or
boxplot(Temp~Month,data=airquality)

#-------------------------------------------------------------------------------

#scatter plot

plot(airquality$Temp,airquality$Ozone)
with(airquality,plot(Temp,Ozone))

pairs(airquality[,1:4])  #more than two variables


plot(airquality$Temp,airquality$Ozone,col='blue',pch=19)
with(airquality,plot(Temp,Ozone,col='blue',pch=15))

#-------------------------------------------------------------------------------

#stem plot

rnorm(40,100)
stem(rnorm(40,100))

tapply(airquality$Temp, airquality$Month, mean)  #group summaries based on factor levels







