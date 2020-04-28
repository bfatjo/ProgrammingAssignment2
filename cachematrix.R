## functions that cache the inverse of a matrix 

## creates a special matrix object 

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function (y){
    x <<- y 
    inv <<- NULL
  }
  get <- function() x
  setInverse <= function(inverse) inv <<- inverse 
  getInverse <- function() inv 
  list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}


## Computes the inverse of the special matrix that is returned by the makeCacheMatrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inv <- x$getInverse()
  if (!is.null(inv)) {
    message("getting cached data")
    return(inv)
  }
  mat <- x$get()
  inv <- solve(mat, ...)
  x$setInverse(inv)
  inv
}
