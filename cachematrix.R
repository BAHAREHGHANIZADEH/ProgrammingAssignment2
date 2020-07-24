## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
makeCacheMatrix<- function(x=matrix()) {
  l<-NULL
  set<-function(y){
    x<<-y
    l<<-NULL
  }
  get<-function() {x}
  setInv<-function(inverse) {l<<-inverse}
  getInv <-function() {l}
  list(set=set , get=get ,setInv=setInv , getInv=getInv)}
cacheSolve<- function(x,...){
  l<-x$getInv()
  if(!is.null(l)){
    message("GCD")
    return(l)
  }
  p<-x$get()
  l <-solve(p,...)
  x$ setInv(l)
  l 
  }