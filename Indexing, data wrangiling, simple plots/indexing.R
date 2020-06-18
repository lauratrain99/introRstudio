murder_rate <- murders$total/murders$population*100000

#compare vector to a single number
index <- murder_rate <= 0.71

# see which states meet the condition
murders$state[index]

#how many states meet the condition
sum(index)

# murder rate smaller or equal than 1, and region to be West
west <- murders$region == "West"
safe <- murder_rate  <= 1
index <- safe & west
murders$state[index]

# INDEXING FUNCTIONS #
# which gives entries of a logical vector that are true
x <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
which(x)

# find out Massachusetts murder rate
index <- which(murders$state == "Massachusetts")
murder_rate[index]

# match looks for entries in a vector and returns the index needed to access them
index <- match(c("New York","Florida","Texas"),murders$state)
murders$state[index]
murder_rate[index]

# %in% operator if rather than an index we want to know whether or not each element
# of a first vector is in second vector, we use the function %in%
x <- c("a","b","c","d","e")
y <- c("a","d","f")
y %in% x

#check if Boston, Dakota, Washington are states
c("Boston","Dakota","Washington") %in% murders$state
