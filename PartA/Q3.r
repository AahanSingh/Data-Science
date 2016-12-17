library(MASS)
#Q3(a)
plot(x = ChickWeight[ChickWeight$Chick==34,'Time'],y=ChickWeight[ChickWeight$Chick==34,'weight'],xlab = 'Time',ylab = 'Weight',main='CHICK 34', pch=16, type = 'o',col='red')
#Q3(b)
grp4 = ChickWeight[ChickWeight$Diet==4,]
boxplot(grp4$weight~grp4$Time,xlab='Time',ylab='Weight',main='Diet 4',col='blue')
#Q3(c)
t <- tapply(grp4$weight,grp4$Time,mean)
p4 <- array()
for(i in 1:length(t)){
  p4[i]<- t[[i]]
}
plot(p4~unique(grp4$Time),xlab='Time',ylab = 'Mean Weight',main='Mean Wt VS Time',pch=16,type='o',col='red')
axis(1, at = unique(grp4$Time))
par(new=TRUE)
#Q3(d)
grp2 = ChickWeight[ChickWeight$Diet==2,]
t <- tapply(grp2$weight,grp2$Time,mean)
p2 <- array()
for(i in 1:length(t)){
  p2[i]<- t[[i]]
}
lines(p2~unique(grp2$Time),xlab='',ylab = '',main='',pch=16,type='o',col='blue')
#Q3(e)
legend(0,200,c('Diet4','Diet 2'),lty = c(1,1),col=c('Red','Blue'),cex=0.75)