## 2 Functons that solves the inverse of a matrix
## then caches the solution for later use.
## Cache is useful when needing to compute the inverse
## multiple times in a program.

## Function to set/get value for the matrix 
## and then set/get the value of of the inverse(solve)

makeCacheMatrix <- function(x = matrix()) {
	m <- NULL			

	set <- function(y){
		x <<- y
		m <<- NULL
	}
	
	get <- function()	x
	setsolve <- function(solve) m <<- solve
	getsolve <- function() m

	list(set = set, get= get, 
	setsolve = setsolve, 
	getsolve = getsolve)
}


## Function to calculate the inverse of a matrix
## if inverese is already calculated the functon
## gets the calculated inverse from cache.

cacheSolve <- function(x, ...) {
      ## Return a matrix that is the inverse of 'x'
	m <- x&getsolve()
	if(!is.null(m)){
		message("getting cached data")
		return(m)
	}
	data <- x$get()
	m <- solve(data, ...)
	x$setsolve(m)
	m
}
