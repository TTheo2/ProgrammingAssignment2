## Put comments here that give an overall description of what your
## functions do

#These 2 functions put together calculate the inverse of an invertible matrix and 
#cahe it. If the contents of the input matrix is not changing, it is better to cache
#the value of the inverse rather than recompute it. 

## Write a short comment describing this function
#This function makeCacheMatrix create a list containing a function to
#1. set the value of the input matrix
#2. get the value of the inputed matrix
#3. set the value of the inverse matrix
#4. get the value of the inverse matrix

makeCacheMatrix <- function(x = matrix()) {


        inverse <- NULL
        set <- function(y) {
                x <<- y
                inverse <<- NULL
        }
        get <- function() x
        setinverse <- function(solve) inverse <<- solve
        getinverse <- function() inverse 
        list(set = set, get = get,
             setinverse = setinverse ,
             getinverse = getinverse )
}


## Write a short comment describing this function

#This function cacheSolve calculates the inverse matrix using the result
# of the above function makeCacheMatrix. cacheSolve first checks to see if the
#inverse of the matrix has already been calculated. If so, it gets the inverse matrix
#from the cache and skips the computation. Otherwise, it calculates the inverse of the
#matrix and sets the value of the inverse matrix in the cache via the setinverse function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'


inverse <- x$getinverse()
        if(!is.null(inverse)) {
                message("getting cached data")
                return(inverse)
        }
        data <- x$get()
        inverse <- solve(data, ...)
        x$setinverse(inverse)
        inverse





}
