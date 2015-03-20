## Purpose is to write a function that caches the inverse of a matrix (x) and sets a variable m in the global environment to !Null indicating
## that the cache value has been set.
## CacheSolve checks whether the cache contains the inverse. If yes, m is !Null and inv_x contains the desired matrix inverse. Else 
## Cachesolve inverts the matrix and returns the inverse as my_inverse

## Sets global variable m to TRUE indicating cache contains the matrix inverse inv_x

makeCacheMatrix <- function(x = matrix()) {
  m <<- TRUE
  inv_x <<- solve(x)

}


## Checks the global variable m. If m is NULL, then compute and return the inverse of matrix x. If m is !NULL, retrieve the cached matrix
## inverse from global variable inv_x

cacheSolve <- function(x, ...) {
  if (!is.null(m)) {
    my_inverse <<- inv_x}
    else {my_inverse <- solve(x)
  }
        ## Return a matrix that is the inverse of 'x'
  my_inverse
}
