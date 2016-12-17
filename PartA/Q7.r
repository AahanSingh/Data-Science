vec <- rnorm(100)
n <- runif(1,min = 1,max = length(vec)-1)
n <- ceiling(n)
naVals <-ceiling(sample(1:length(vec),5))
vec[naVals] <- NA
mat <- matrix(vec,nrow = 10,ncol = 10, byrow = TRUE)
#Q7(a)
noNa <- function(x){
  n <- which(apply(mat,2,function(x) any(is.na(x))))
  return(x[,-n])
}
#Q7(b)
noNa <- function(x){
  r <- which(apply(mat,1,function(x) any(is.na(x))))
  c <- which(apply(mat,2,function(x) any(is.na(x))))
  res <- mat[-r,-c]
  return(res)
}