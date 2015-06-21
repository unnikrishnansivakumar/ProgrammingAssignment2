## Function 1- creates a matrix that is actually a list containg functions set,get,setmatrix,getmatrix
## Function 2-Returns a matrix that is inverse of 'x'

##Creates the Cache Matrix.

makeCacheMatrix <- function(x = matrix()) {
  m<-NULL
  set<-function(y){
  x<<-y
  m<<-NULL
}
get<-function() x
setmatrix<-function(solve) m<<- solve
getmatrix<-function() m
list(set=set, get=get,
   setmatrix=setmatrix,
   getmatrix=getmatrix)
}

## Function returns a matrix that is the inverse of x


cacheSolve <- function(x=matrix(), ...) {
##If an invertible matrix is created by makeCacheSolve(),by using cacheSolve(a) will give the inverse of that
    m<-x$getmatrix()
    if(!is.null(m)){
      message("getting cached data")
      return(m)
    }
    matrix<-x$get()
    m<-solve(matrix, ...)
    x$setmatrix(m)
    m
}

##Using the function
##a<-makeCacheMatrix()
##a$set(matrix(1:4,2,2)
## cacheSolve(a)

## Output
##     [,1] [,2]
##[1,]   -2  1.5
##[2,]    1 -0.5

        