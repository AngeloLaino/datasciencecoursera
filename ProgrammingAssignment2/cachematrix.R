##Create the function makeChacheMatrix to:
## - create the matrix
## - set the value of the matrix
## - get the value of the matrix
## - set the value of the inverse matrix
## - get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL ## set inverse as NULL
        
        set <- function(y) {
                x <<- y ## set the value in a different environment
                inv <<- NULL ## don't set the inverse 
        }
        
get <- function() x ## get the matrix created 

setInverse <- function(inverse) inv <<- inverse ##set the inverse of the matrix

getInverse <- function() inv ## get the value of the inverse matrix

## list the above function

list (set = set, get = get,
      setInverse = setInverse,
      getInverse = getInverse)
}



## Return a matrix that is the inverse of 'x'
cacheSolve <- function(x, ...) {

## Calculate the inverse of the special "matrix" created with the above
## function, reusing cached result if it is available
                inv <- x$getInverse()
                if(!is.null(inv)) {
                        message("getting cached data")
                        return(inv)
                }
                data <- x$get()
                inv <- solve(data, ...)
                x$setInverse(inv)
                inv 
}
