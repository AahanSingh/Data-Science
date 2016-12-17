x <- c(1,7,3,2,5,0,9,10)
#Q1(a)
trimmed_mean <- function(x){
  y <- x[x!=min(x)]
  y <- y[y!=max(y)]
  mean(y)
}
#Q1(b)
list.random <- list(runif(n = 10,min = 5, max=runif(1,6,100)), runif(n = 10,min = runif(1,0,4), max=5), runif(n=10,min=runif(1,0,50),max=runif(1,51,100)))
for(i in 1:length(list.random)){
  trimmed_vec[i] <- trimmed_mean(list.random[[i]])
}
#Q1(c)
lapply(list.random,function(x) mean(x))
#THESE ARE DIFFERENT FROM THE TRIMMED MEANS
#BECAUSE THE RANGE OF THE VECTORS IS INCREASED 
#IF MEANS ARE LESSER THAN BEFORE THIS MEANS THAT THE MIN VALUE IS FURTHER
#FROM THE TRIMMED MEAN THAN THE MAX VALUE AND VICE VERSA

#Q1(d)
lapply(list.random, trimmed_mean)
sapply(list.random,trimmed_mean)
