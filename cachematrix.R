## Put comments here that give an overall description of what your
## functions do

## This function creates the inverse of a given matrix and cache it


makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setsolve <- function(solve) m <<- solve
  getsolve <- function() m
  list(set = set, get = get,
       setsolve = setsolve,
       getsolve = getsolve)
  
}


## cacheSolve function checks if the inverse of the matrix calculated before or not
## If not calculates the inverse of the matrix. If it is then gives the cached data. 

cacheSolve <- function(x, ...) {
  m <- x$getsolve()
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  data <- x$get()
  m <- solve(data, ...)
  x$setsolve(m)
  m     
   ## Return a matrix that is the inverse of 'x'
}
