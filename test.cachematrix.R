## Test the functions in the cachematrix.R file
source("cachematrix.R")

## Create a 2 by 2 invertible matrix d
d <- matrix(2:5, nrow=2, ncol=2)
d

## Inverse of the matrix d
solve(d)

## Create a special cached matrix e form the normal matrix d
## Solve it 2 times to check if the inverse gets cached
e <- makeCacheMatrix(d)
cacheSolve(e)
cacheSolve(e)

## Check if the inverse of d and the cached inverse of e are identical
identical(solve(d), cacheSolve(e))