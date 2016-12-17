vec <- rnorm(100)
n <- runif(1,min = 1,max = length(vec)-1)
n <- ceiling(n)
naVals <-ceiling(sample(1:length(vec),n))
vec[naVals] <- NA
mat <- matrix(vec,nrow = 10,ncol = 10, byrow = TRUE)
#Q7(a)
noNa <- function(x){
  res <- matrix()
  for(i in 1:10){
    if(sum(is.na(x[,i])) ==0){
      cbind(res,x[,i])
    }
  }
  return(res)
}