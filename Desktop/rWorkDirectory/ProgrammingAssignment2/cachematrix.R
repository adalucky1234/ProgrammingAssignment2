## Put comments here that give an overall description of what your
## functions do

## The first function, makeCacheMatrix creates a special "matrix", 
## which is really a list containing a function to ...

makeCacheMatrix <- function(x = matrix()) {
      m <- NULL
      # set the value of the matrix
      set <- function(y) {
            x <<- y
            m <<- NULL
      }
      # get the value of the matrix
      get <- function() x
      
      # set the value of the inverse of this matrix
      setInverse <- function(inverse) {
            m <<- inverse 
      }
      
      # get the value of the inverse of this matrix
      getInverse <- function() {m}
}


## This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
## If the inverse has already been calculated (and the matrix has not changed), 
## then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
      m <- x$getInverse()
      if(!is.null(m)) {
            message("getting cached data")
            return(m)
      }
      data <- x$get()
      m <- solve(data, ...)
      x$setInverse(m)
      m
}

