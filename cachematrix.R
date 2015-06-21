## This function gets a matrix as its input, 
## calculates its inverse and caches it.
## Run it on terminal like
#a <- MakeCacheMatrix(c(1,3),c(2,0))
#cacheSolve(a)

## Function "makeCacheMatrix" below gets as its inputs to 
##vectors and creates a matrix out of them using rbind

library(MASS)
MakeCacheMatrix <- function(x,y) {
  m <- NULL
  rb <- rbind(x,y)
  
  justprint <- function(){
    print("This function just prints the matrix built with rbind ")
    print(rb)
  }
  
  calc_inv <- function(){
    print("This function calaculates matrix's inverse. JUST FOR CHECKING!!!")
    print(solve(rb))
  }
  
  setinv <- function(solve) m <<- solve
  getinv <- function() m 
  
  get <- function() rb
  list(get = get, justprint=justprint, calc_inv = calc_inv, setinv = setinv, getinv = getinv)
}

## Function "cacjeSolve" below gets as its inputs from 
##"makeCacheMatrix" and calculates the inverse matrix

cacheSolve <- function(x) {
  m <- x$getinv()
  if(!is.null(m)){
    print (m)
    message("getting cache data")
    return (m)
  }
  else{
    data <-x$get()
    m <- solve(data)
    t <- x$setinv(m)
    #print(t)
    return(t)
  }
  
}

#a <- MakeCacheMatrix(c(1,3),c(2,0))
# a$get()
# a$justprint()
# a$calc_inv()
# a$setinv(11)
# a$getinv()
# print(a$getinv())
#cacheSolve(a)
