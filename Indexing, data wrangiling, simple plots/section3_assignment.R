library(dslabs)
data(heights)
options(digits = 3)

# create logical vector, heights above mean. How many
ind <- heights$height > mean(heights$height)
sum(ind)

# above average height and female
ind <- heights$height > mean(heights$height) & heights$sex =="Female"
sum(ind)

# individuals that are female
ind <- heights$sex =="Female"
mean(ind)

# minimum height
min(heights$height)

# index first individual min height
match(min(heights$height),heights$height)

# get sex from previous task
heights$sex[match(min(heights$height),heights$height)]

# max height
max(heights$height)

# sequence min:max only integers in between
x <- seq(ceiling(min(heights$height)),trunc(max(heights$height)))

# x elements not in the dataset
sum(! x %in% heights$height)

# from inches to cm
heights2 <-mutate(heights, ht_cm = height*2.54)
heights2$ht_cm[18]
mean(heights2$ht_cm)

# number of females
sum(heights2$sex == "Female")

# mean height of females
mean(heights2$ht_cm[heights2$sex == "Female"])

library(dslabs)
data(olive)
head(olive)
plot(olive$palmitic, olive$palmitoleic)
hist(olive$eicosenoic)
boxplot(palmitic~region, data=olive)