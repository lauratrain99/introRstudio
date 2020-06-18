# use function c to concatenate
codes <- c(380,124,818)
country <- c("italy","canada","egypt")

# assign a name to each number
codes <- c(italy=380,canada=124,egypt=818)
class(codes)

#use strings for the expression. Same equivalent variable
codes <- c("italy"=380,"canada"=124,"egypt"=818)

# if you use names, same but different way
codes <- c(380,124,818)
names(codes) <- country

# function that generates sequences. First start, last the end
seq(1,10)

#third argument step
seq(1,10,2)

#same sequence
1:10

#subsetting. Use []
codes[2]

# obtain more than one element
codes[c(1,3)]

# obtain two subsequent elements
codes[1:2]

# if entries have names, access by names
codes["canada"]
codes[c("egypt", "italy")]

# vector coercion. Vector should always be same data type. If numeric and character,
# numerics are turned into strings. R coarced the data into a character string
x <- c(1, "canada", 3)
class(x)

# convert numbers into characters
x <- 1:5
y <- as.character(x)

# NA means not available. Missing values. "b" can't be converted into a number
x <- c("1", "b", "3")
as.numeric(x)

# if instead of the step, we want a certain amount of elements
seq(0,100, length.out = 5)

# instead of numerics, use integers to occupy less memory
class(3L)
