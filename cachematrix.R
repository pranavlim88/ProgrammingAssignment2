
## MakeCacheMatrix will create a list of functions to:
##1. Set the value of the matrix.
##2. Get the value of the matrix.
##3. Set the valve of the matrix inverse.
##4. Get the value of the matrix inverse.


makeCacheMatrix <- function(x = matrix()) {
        inver <- NULL
        set <- function(y) {
                x <<- y
                inver <<- NULL
        }
        get <- function() x
        setinverse <- function(inverse) inver <<- inverse
        getinverse <- function() inver
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        inver <- x$getinverse()
	  if(!is.null(inver)){
		message ("getting cached data")
		return (inver)
	  }
	data <- x$(get)
	inver <- inverse(data, ...)
	x$getinverse(inver)
	inver
}
