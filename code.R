library(tidyverse)
library(dslabs)
data(murders)

murders %>%
  ggplot(aes(population, total, label=abb,color=region))+
  geom_label()


# key binding
#CNTRL + SHIFT+ N - open a new script
#CNTRL + S - save script
#CNTRL + ENTER - run one line
#CNTRL + SHIFT + ENTER - run script