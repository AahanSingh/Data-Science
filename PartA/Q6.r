#Q6(a), (b)
genMat1 <- function(r,c){
  p <- 0:c
  x <- list()
  x[[1]] <- p
  for (i in 2:r) {
    temp <- vector()
    p <- x[[i-1]]
    temp[c+1] <- p[1]
    for(j in 2:(c+1)){ #shifting left
      temp[j-1] <- p[j]
    }
    x[[i]]<-temp
    rm(temp)
  }
  x <- do.call(rbind,x)
  return(x)
}
#Q6(c)
genMat <- function(r,c){
  p <- c:0
  x <- list()
  temp<-vector()
  temp[1] <- p[c+1]
  for(k in 2:(c+1)){
    temp[k] <- p[k-1]
  }
  x[[1]] <- temp
  rm(temp)
  for (i in 2:r) {
    temp <- vector()
    p <- x[[i-1]]
    temp[1] <- p[c+1]
    for(k in 2:(c+1)){
      temp[k] <- p[k-1]
    }
    x[[i]]<-temp
    rm(temp)
  }
  x <- do.call(rbind,x)
  return(x)
}