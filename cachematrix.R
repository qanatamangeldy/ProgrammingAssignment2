## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## The function below creates a special "matrix", which is
## actually a list of functions
makeCacheMatrix <- function(x = matrix()) {
  s <- NULL
  set <- function(y) {
    x <<- y
    s <<- NULL
  }
  get <- function() x
  setsolved <- function(solvedmatrix) s <<- solvedmatrix
  getsolved <- function() s
  list(set = set, get = get, setsolved = setsolved, getsolved = getsolved)
}


## Write a short comment describing this function
## The function below return below returns an inverse
## of the argument which is a special 'matrix' made in
## makeCacheMatrix function
cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  s <- x$getsolved()
  if (!is.null(s)) {
    message("getting cached data")
    return(s)
  }
  data <- x$get()
  s <- solve(data)
  x$setsolved(s)
  s
}

