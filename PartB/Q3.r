library(MASS)
#Q3(a)
t <- t.test(MPG.highway~Origin,data = Cars93)
df <- t$parameter
abs(qt(0.05/2,df)) # 2 tailed test. Thus 0.05/2.
# | T | > critical T value to reject hypothesis. In this case T < critical T
# therefore we accept the NULL hypothesis. Therefore there is no significant difference
# between the MPG.highway of US and non US cars.

#Q3(b)
# The 95% confidence interval is -4.148 0.263. The confidence interval is the interval
# within with the difference of means lies with 95% confidence. Here we can say that
# with 95% confidence that the difference of means of US & non US cars lies within 
# -4.14 to 0.26.

#Q3(c)
w <- wilcox.test(MPG.highway~Origin,data = Cars93)
# p > 0.05 results in acceptance of H0.
#Q3(d)
# No the results are the same.
