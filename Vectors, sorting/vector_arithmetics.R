# get state largest population state
murders$state[which.max(murders$population)]

# population of California
max(murders$population)

# element-wise operations
heights <- c(69,62,66,70,73,67,73,67,70)
heights* 2.54
heights- 69

# two vectors of the same length, easy to compute operations
murder_rate <- murders$total/murders$population*100000

# order states by murder_rate. First is the largest.
murders$state[order(murder_rate, decreasing=TRUE)]