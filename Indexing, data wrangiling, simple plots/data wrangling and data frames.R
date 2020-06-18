library(dplyr)

# function mutate, takes the data frame as the first argument and the name and value of the
# variable in the second argument
murders <- mutate(murders, rate=total/population*100000)
head(murders)

# filter function, takes the data frame as the first argument and the conditional statement
# as the second argument
filter(murders, rate <= 0.71)

# select function, select just the columns you want to work with
new_table <- select(murders,state,region,rate)
filter(new_table, rate <= 0.71)

# pipe %>% :  data, select and filter
murders %>% select(state,region,rate) %>% filter(rate <= 0.71)

# DATA FRAMES #
grades <- data.frame(names =c("John","Juan","Jean","Yao"), exam_1=c(95,80,90,85), exam_2=c(90,85,85,90))
grades

# by default, it turns characters into factors. To avoid this
class(grades$names)
grades <- data.frame(names =c("John","Juan","Jean","Yao"),
                     exam_1=c(95,80,90,85),
                     exam_2=c(90,85,85,90),
                     stringsAsFactors = FALSE)
class(grades$names)

# remove Florida
no_florida <- filter(murders, state != "Florida")
