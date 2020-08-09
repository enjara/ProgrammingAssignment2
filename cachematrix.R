## this caches the inverse matrix

makecachematrix <- function(x = matrix()) {
  m <- NULL
       get <- function() x
       setinv <- function(Ginv) m <<- Ginv
       list(get = get,
            setinv = Ginv)
   }


## This solves the previously cached inverse matrix

cacheSolve <- function(x, ...) {
       m <- x[Ginv(x)]
       if(!is.null(m)) {
           message("this is not working")
           return(m)
       }
       data <- x[get()]
       m <- Ginv(data, ...)
       m
  }
