## This function will make a matrix, in this example a five (rows) by five (columns) this matrix is later used for testing inverse
## This matrix is assigned as k



k <- matrix(1:25, nrow=5) 

## The function below is used to make a cachematrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inv <<- inverse
        getinverse <- function() inv
        list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}


## This function will solve inverse matrix, please assign previously created k matrix to this function in order to test solving

cacheSolve <- function(x, ...) {
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting cached data.")
                return(inv)
        }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}

## test by running x = cachematrix(k)
## and then cachesolve(x)
## matrix doesnt compute, i believe this is because matrix is too uniform