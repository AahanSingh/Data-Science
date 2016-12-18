library(data.table)
#Q4(a)
r1 <- list('yes','yes', 688)
r2 <- list('no', 'yes', 21)
r3 <- list('yes', 'no', 650)
r4 <- list('no', 'no', 59)
t <- rbind(r1,r2,r3,r4)
colnames(t)<-c('has.smoked','lung.cancer','freq')
smoking <- as.data.table(t)
#Q4(b)
test <- matrix(unlist(smoking$freq),nrow=2)
f <- fisher.test(test)
# The p value is very small. Therefore H0 is rejected. H0 is that there is no
# relation between smoking and cancer.
#Q4(c)
# The odds ratio is 2.9. This means that one is 2.9 times more likely to get cancer
# if one smokes.
#Q4(d)
cat(ifelse(f$p.value>0.05,'Accept H0','Reject H0'))