# if else statement
a <-2
if(a!=0){
  print(1/a)
} else{
  print("No reciprocal for 0.")
}

# general structure
#if(boolean condition){
#  expressions
#} else {
#  alternative expressions
#}

# use dataframe
library(dslabs)
data(murders)
murder_rate <- murders$total/murders$population*100000

ind <- which.min(murder_rate)
if (murder_rate[ind] < 0.5){
  print(murders$state[ind])
} else{
  print("No state has murder rate that low")
}

# ifelse function
a <- 0
ifelse(a > 0, 1/a, NA)

# ifelse also works on vectors
a <- c(0,1,2,-4,5)
result <- ifelse(a > 0,1/a,NA)
result

data(na_example)
sum(is.na(na_example))
no_nas <- ifelse(is.na(na_example), 0, na_example)
sum(is.na(no_nas))

# any and all functions
# any returns true if any element is true
z <- c(TRUE, TRUE, FALSE)
any(z)
z <- c(FALSE, FALSE, FALSE)
any(z)

# all returns true if all the elements are true
z <- c(TRUE, TRUE, FALSE)
all(z)
z <- c(TRUE, TRUE, TRUE)
all(z)