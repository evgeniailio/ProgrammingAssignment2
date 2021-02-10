
makeCacheMatrix<-function(x=matrix()){
        
        #set inv as null
        inv<-NULL
        
        #assign a new value y 
        set<-function(y){
                x<<-y
                inv<<-NULL
                
        }
        
        #get the value of matrix
        get<-function() (x)
        
        #define setinverse  
        setinverse<-function(inverse)  (inv <<- inverse)
        
        #it gets the value of inverse matrix
        getinverse<-function() (inv)
        
        list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}

##Returns a matrix that is inversed#
cacheSolve<-function(x,...){
        inv<-x$getinverse()
        if(!is.null(inv)){
                message("getting cached data")
                return(inv)
        }
        data<-x$get()
        inv<-solve(data,...)
        x$setinverse(inv)
        inv
}