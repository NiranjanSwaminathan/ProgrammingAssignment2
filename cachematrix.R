## The script hold two functions , the first returns a list of functions,
## a  getdata which returns the matrix passed, get inverse that returns inverse set
## and set inverse used to set inverse variable at the first run.
## The second function checks for the inverse , if it is null computes stores and 
##displays inverse, else reads from cache and displays the same.


makeCacheMatrix <- function(x = matrix()) {
inverse<-NULL
getdata <- function()
{return(x)}
getinverse <- function() {inverse}
setinverse <- function(i) 
{
  inverse<<-i
  print("inverse has been stored")
}
list(getdata=getdata,getinverse=getinverse,setinverse=setinverse)

}


## checks fro inverse value , if null , computes and stores the same.
## if not reads the stored value.
## After computation the function setinverse also displayes stating inverse
## is being stored.

cacheSolve <- function(x, ...) {
if(!is.null(x$getinverse()))
{
  print("reading cached inverse")
  d<-x$getinverse()
  #inv<-x$getinverse()
  return(d)
}
else
{ olddata<-x$getdata()
  print("Computing inverse")
  inv<-solve(x$getdata())
  x$setinverse(inv)
  return(inv)
}
}
