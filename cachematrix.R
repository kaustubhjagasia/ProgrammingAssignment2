## function to cache Inverse of a matrix

## Create the matrix

makeCacheMatrix <- function(x = matrix()) {
i <- NULL
 set <- function(y) 
  {
   x <<- y
   i <<- NULL
  }
 get <- function() x
 setinverse <- function(inv) i <<- inv
 getinverse <- function() i
 list(
set = set,
get = get,
setinverse = setinverse,
getinverse = getinverse
    )
}


## Find the inverse of the matrix

cacheSolve <- function(x, ...) {
    if(!is.null(i)) {
        message("getting cached data")
        return(i)
    }
    m <- x$get()
    i <- solve(m, ...)
    x$setinverse(i)
    it is the inverse of 'x'
}
