
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- matrix(y)
    m <<- NULL
  }
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)


}



## Write a short comment describing this function

cacheSolve <- function(x, ...) {
      makeCacheMatrix(x,getinv)
        ## Return a matrix that is the inverse of 'x'
}
