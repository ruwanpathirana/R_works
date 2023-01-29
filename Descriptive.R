#view all library-packages installed in R
library()

#load package
library(datasets)

#view index of loaded package
data()  #or
library(help = "datasets")
#View more information   Package Tab->select "package"

#-------------------------------------------------------------------------------

#view data in specific index
airquality

#draw initial scatter plot Wind-Ozone in airquality index
with(airquality,plot(Wind,Ozone))

#add title
title(main="Ozone and Wind in New York City")

#or with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City"))

#various type (default="p")
with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City",type = "p"))  #p,l,b,c,o,s,h,n

#-------------------------------------------------------------------------------

#highlight month=5 datas in Wind-Ozone
with(subset(airquality,Month==5),points(Wind,Ozone,col="blue"))

#highlight month!=5 datas in Wind-Ozone
with(subset(airquality,Month!=5),points(Wind,Ozone,col="red"))

#Add legend
legend("topright",pch=1,col =c('blue','red'),legend = c('May','Other Month'),title = "Categories",inset = 0.5/10 )
#lty = 1:2 for line charts

#-------------------------------------------------------------------------------

with(airquality, plot(Wind, Ozone, main = "Ozone and Wind in New York City", pch= 20))

#fit a simple linear regression model
model<-lm(Ozone~Wind,airquality)

#Draw regression line on plot
abline(model,lwd=2)   #lwd=line width










