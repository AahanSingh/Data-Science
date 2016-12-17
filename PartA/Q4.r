x <- c(0,1,1,0,1)
#Q4(a)
#If x is an integer use the function below
isBinary <- function(x){
  x <- as.numeric(strsplit(as.character(x),"")[[1]])
  print(x)
  if (all(x %in% c(0:1)))
    return(TRUE)
  return(FALSE)
}
#If x is a vector
isBinary <- function(x){
  if(all(x %in% c(0:1)))
    return(TRUE)
  return(FALSE)
}

#Q4(b)
isBinary <- function(x,allow.NA=FALSE){
  if(allow.NA==TRUE){
    if(all(x %in% c(0,1,NA)))
      return(TRUE)
  }
  if(all(x %in% c(0,1)))
    return(TRUE)
  return(FALSE)
}
#Q4(c)
calcuateBinarySummary <- function(x){
  denominator <- length(x) - sum(is.na(x))
  x <- x[!is.na(x)]
  numerator <- sum(x==1)
  print(numerator/denominator)
}
