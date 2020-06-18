library(dslabs)
data(murders)

# function sort
sort(murders$total)

#function order, return indices
x <- c(31,4,15,92,65)
sort(x)
index <- order(x)
x[index]

# sort abbs by number of murders
index <- order(murders$total)
murders$abb[index]

# max and min. Get indices
max(murders$total)
i_max <- which.max(murders$total)
print(i_max)
murders$state[i_max]

#rank function. Get the rank of each entry, it does not sort. See difference between
# order and rank
x <- c(31,4,15,92,65)
rank(x)