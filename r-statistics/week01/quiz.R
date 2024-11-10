library(dslabs)
library(dplyr)

data("heights")

h <- heights$height

# What distribution does this data resemble?
par(mfrow = c(1, 1))
hist(h) # Normal Distribution
qqnorm(h)