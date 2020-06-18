# second order equation
a <- 2
b <- -1
c <- -4

(-b + sqrt(b^2 - 4*a*c)) / (2*a)
(-b - sqrt(b^2 - 4*a*c)) / (2*a)

# log4
log(1024, base=4)

# get number of rows
library(dslabs)
data(movielens)
nrow(movielens)

# get number of cols
ncol(movielens)

# data type title
class(movielens$title)

# data type genres
class(movielens$genres)

# count factor levels
levels(movielens$genres)
