x <- c(2,43,27,96,18)

# order function
order(x)

# rank function
rank(x)

# sort function
sort(x)

# minimum
min(x)

# index minimum
which.min(x)

# maximum
max(x)

# index maximum
which.max(x)


# distance in miles, times in minutes
name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

# Olivia time in hours
names(time) <- name
time <- time / 60
time["Olivia"]

# Mandi's speed in miles per hour
names(distance) <- name
speed <- distance / time
speed["Mandi"]
which.max(speed)