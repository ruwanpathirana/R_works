qqnorm(data)  #Before we can do a T-test, we need to make check if we can reasonably treat the mean of this sample as normally distributed
qqline(data)
#Since the data lies close the line y=x, and has no notable systematic deviations from line, it’s safe to treat the sample as coming from a normal distribution. We can proceed with our hypothesis test.
?t.test

#one sample

data<-c(5260,5470,5640,6180,6390,6515,6805,7515,7515,8230,8770)
t.test(data,mu=7725)
t.test(data,alternative=c("greater"),mu=7725)
t.test(data,alternative=c("less"),mu=7725)


#two sample

male<-c(5260,5470,5640,6180,6390,6515,6805,7515,7515,8230,8770)
female<-c(4620,5400,6420,5280,6390,5678,4560,7600,4750,3690,8500)
t.test(male,female,mu=0)


#paired

A<-c(175, 168, 168, 190, 156, 181, 182, 175, 174, 179)
B<-c(185, 169, 173, 173, 188, 186, 175, 174, 179, 180)
t.test(A,B,mu=0,paired = TRUE,var.equal = TRUE)


#linear regression

?cars
cars

plot(x=cars$speed, y=cars$dist, main="Dist ~ Speed")
scatter.smooth(x=cars$speed, y=cars$dist, main="Dist ~ Speed")   #add smooth curve
?plot
?scatter.smooth
par(mfrow=c(1, 1))

Speed <- cars$speed
Distance <- cars$dist
plot(Speed, Distance, panel.first = grid(8, 8),
     pch = 0, cex = 1.2, col = "blue")
plot(Speed, Distance,
     panel.first = lines(stats::lowess(Speed, Distance), lty = "dashed"),
     pch = 0, cex = 1.2, col = "blue")

#panel.first=grid() for background
#pch= 0:18 or 'any'




par(mfrow=c(1, 2)) # divide graph area in 2 columns
boxplot(cars$speed, main="Speed", sub=paste("Outlier rows: ",boxplot.stats(cars$speed)$out)) # box plot for 'speed'
boxplot(cars$dist, main="Distance", sub=paste("Outlier rows: ",boxplot.stats(cars$dist)$out)) # box plot for 'distance'
?boxplot

#linear model

linearMod <- lm(dist ~ speed, data=cars) # build linear regression model on full data
print(linearMod)
?lm

#multiple regression model

?mtcars

multi<-lm(mpg~disp+hp+wt+drat,data=mtcars)
print(multi)
summary(multi)

# mpg=29.15-0.35 hp -3.48 wt              final model equation
# R-squared:  0.8376 it means “83% of the variance in the mpg values can be predicted by hp and wt.


confint(multi) #The confidence interval of the model coefficient 


