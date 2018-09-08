
## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
### this function is creating is initialising a matrix  get and set functions for matrix and inverse of the matrix
makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y  ## if matrix has changed then solution is not valid
    m <<- NULL
  }
  # retrive matrix
  get <- function() x
  setinv <- function(inv) m <<- inv
  getinv <- function() m
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)


}



## Write a short comment describing this function
### this function gives the inverse of a cached matrix or calculates it.
### this function saves the new matrix value in a a special matrix

cacheSolve <- function(x, ...) {
       m <- x$getinv()
        if(!is.null(m)) {
                message("getting cached data")  ## checks if the matrix is cached and returns the invers if it is
                return(m)
        }
        data <- x$get()
        m <- solve(data, ...)  ## calculates the inverse if matrix is not cached.
        x$setinv(m)
        m
        ## Return a matrix that is the inverse of 'x'
}
