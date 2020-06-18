# compute the average
avg <- function(x){
  s <- sum(x)
  n <- length(x)
  s/n # what is returned
}
x <- 1:100
avg(x)

# general form
# my_function <- function(x){
#  operations that operate on x which
#  is defined by user of function
#  value final line is returned
#}

avg <- function(x, arithmetic = TRUE){
  n <- length(x)
  ifelse(arithmetic, sum(x)/n, prod(x)^(1/n))
}