## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
 #creates a matrix for the assignment, with two rows and four columns to, this is then filled
 #from 1 to 8 by columns (default setting)
 
 matrix(1:8, nrow=2) 
 
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        solve(makeCacheMatrix)
}
