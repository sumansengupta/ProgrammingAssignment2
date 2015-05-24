
makeCacheMatrix <- function(x,...) {
  print("make matrix")
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinv <- function(i) inv <<- i
  getinv <- function() inv
  list(set = set, get = get,
       setinv = setinv,
       getinv = getinv)
}

cacheSolve <- function(x = list()) {
  inv <- x$getinv()
  if (! is.null(inv)){
    message("getting cached data")
    return(inv)
   }

  print ("cacheSolve")
  data <- x$get() 
  inv <- x$setinv(solve(data))
  inv
}
