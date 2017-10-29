## Put comments here that give an overall description of what your
## functions do
# Goal is caching the inverse of a matrix

## Write a short comment describing this function
## Create a special "matrix" that contains several function to
## 1. Set the value of the matrix
## 2. Get the value of the matrix
## 3. Set the value of the inverse matrice
## 4. Get the value of the inverse matrice

makeCacheMatrix <- function(x = matrix()) {
        s <- NULL
        set <- function(y) {
                x <<- y
                s <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) s <<- solve
        getsolve <- function() s
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)
        }


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        s <- x$getsolve()
        if(!is.null(s)){
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data,...)
        x$setsolve(s)
        s
}
