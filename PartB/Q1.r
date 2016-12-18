#Q1(a)
library(MASS)
male <- cats[cats$Sex=='M',]
#Q1(b)
plot(male$Bwt~male$Hwt, type='p',pch=16,xlab='Height',ylab='Weight')
#The dependent variable wieght is increases as height increases
#Q1(c)
l <- lm(Bwt~Hwt,male)
abline(l)