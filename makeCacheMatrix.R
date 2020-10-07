
makeCacheMatrix <- function(x = matrix()) {
  #This function creates a special "matrix" object that can cache its inverse.
  inv <- NULL
  
  setMatrix <- function(m) {
    x <<- m
    inv <<- NULL
  }
  
  getMatrix <- function() x
  
  setInverse <- function(inversa) inv <<- inversa 
  getInverse <- function() inv
  
  list(set = setMatrix, get = getMatrix,
       setInverse = setInverse,
       getInverse =  getInverse)
  
}

