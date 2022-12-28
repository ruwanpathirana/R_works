Name<-c("Amal","Bimal","Cal","Dayan","Elin","Fin")
ST402<-c(52,71,44,90,23,66)
ST419<-c(69,82,57,78,51,63)
ST422<-c(71,84,55,68,52,61)

mkst<-data.frame(Name,ST402,ST419,ST422)
print(mkst)

hist(ST402)   #with y=frequency
hist(ST402,probability = TRUE)   #with y=density
hist(ST402,nclass = 10)  #10 bars if value exist
hist(ST402,breaks = c(0,20,50,80,95,100),main = "HISTOGRAM",col = "Blue",border = "red", xlab = "Subject")
hist(ST422[(ST402+ST419)/2<50])
hist(mkst[mkst>20])
hist(mkst)
hist(mkst[mkst<=max(mkst)])

par(mfrow=c(3,3))  #multiple plot
hist(ST402)
hist(ST419)
hist(ST422)

plot(ST402,ST419)
plot(ST402,ST419,type="p")  #default
plot(ST402,ST419,type="l")
plot(ST402,ST419,type="b")
plot(ST402,ST419,type="o")
plot(ST402,ST419,type="h")

plot(ST402,ST419,pch="+")  #symbol of point  ==anything

boxplot(ST402,ST419,ST422)
boxplot(mkst)
par(mfrow=c(1,1))
plot(ST402,ST419)
identify(ST402,ST419)
identify(ST402,ST419,row.names(mkst))
