library(ggplot2)
#Q5(a)
i <- 1:5
inc <- c(113,91,121,81,68)
a <- c(69,52,65,58,31)
g <- c(1,0,0,1,1)
t <- data.frame(ID = i, Income = inc, Age = a, Gender = g)
t$Gender <- as.factor(t$Gender)
levels(t$Gender) <- c('Male','Female')
g <- ggplot(data=t,aes(x=Age,y=Income,color=Gender))
g+geom_point()+stat_smooth(method = 'lm',col='blue')
#As age increases the income increases.
# Dependent variable is income. Independent is Age
#Q5(b)
l <- lm(t$Income~t$Age+t$Gender)
# Yes it is overfit.
#Q5(c)
l <- lm(t$Income~t$Age)