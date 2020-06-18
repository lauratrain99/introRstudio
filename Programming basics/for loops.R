compute_s_n <- function(n){
  x <- 1:n
  sum(x)
}
compute_s_n(3)

#general form of a for loop
# for (i in range of values){
#   operations that use i,
#   which is changing across 
#   the range of values
#}

for (i in 1:5){
  print(i)
}

m <- 25
# create an empty vector. Now imagine we want to compute the sn sum but 25 times
s_n <- vector(length=m)
for (n in 1:m){
  s_n[n] <- compute_s_n(n)
}
s_n

n <- 1:m
plot(n, s_n)
lines(n , n*(n+1)/2)


# other useful functions. apply, sapply, tapply, mapply
# others split, cut, quantile, reduce, identical, unique
# nchar says how long a vector of characters is
a = "fdañsldkasjñf"
nchar(a)
b = c("adas","erere","jijijiji")
nchar(b)