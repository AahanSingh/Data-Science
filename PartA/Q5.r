#Q5(a)
#The plot displayes the cars sorted according to the mpg 
#from left to right. Leftmost cars have the lowest MPG and rightmost has
#higher MPG
dotchart(mtcars$mpg, labels = row.names(mtcars), main='MPG for car models', xlab='MPG',cex=0.5)
#Q5(b)
#The histogarm shows the frequency of occurance of
#the different car MPG. It is observed the most common MPG is
#15mpg. Increase in number of bins increases the number of bars 
#thereby increasing the resolution of the plot.
hist(mtcars$mpg,xlab='MPG',ylab = 'Frequency',col='red',breaks=12,xlim = c(10,35))
#Q5(c)
c4 <- mtcars[mtcars$cyl==4,'mpg']
c6 <- mtcars[mtcars$cyl==6,'mpg']
c8 <- mtcars[mtcars$cyl==8,'mpg']
d4 <- density(c4)
d6 <- density(c6)
d8 <- density(c8)
plot(d4,col='red',type = 'l',main='Kernel Density of 4,6,8 Cylinder cars',ylim = c(0,0.25))
lines(d6,col='blue')
lines(d8,col='green')
legend(30,0.2,c('4 Cylinder','6 Cylinder','8 Cylinder'),col = c('red','blue','green'),lty = 1,cex=0.5)
#Q5(d)
boxplot(mtcars$mpg~ mtcars$am+mtcars$cyl)
