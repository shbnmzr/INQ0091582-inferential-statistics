install.packages("dplyr")
library(dplyr)

data <- read.csv("r-statistics/data/msleep_ggplot2.csv")

# Read in the msleep_ggplot2.csv file with the function read.csv() and use the function class() to determine what type of object is returned.
class(data)
print(head(data))

# How many animals in the table are primates?
primates <- filter(data, order == "Primates")
nrow(primates)

# What is the class of the object you obtain after subsetting the table to only include primates?
class(primates)

# Now use the select() function to extract the sleep (total) for the primates.
# What class is this object?
primates_sleep <- select(primates, sleep_total)
class(primates_sleep)
  
# What is the average amount of sleep for primates?
print(mean(unlist(primates_sleep)))

# IMPORTANT: How to use summarize
summary <- filter(data, order == "Primates") %>% summarize(mean = mean(sleep_total))
print(summary)