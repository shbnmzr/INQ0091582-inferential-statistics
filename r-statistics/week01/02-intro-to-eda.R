# Load .RData file 
load("r-statistics/data/skew.RData")

# Dimensions of the data
dim(dat)

# Q-Q plot
# Using QQ-plots, compare the distribution of each column of the matrix to a normal.
par(mfrow = c(3, 3))
for( i in 1:9){
  qqnorm(dat[,i],
         main = "Q-Q Plots of each column")
}

# positive skew looks like an up-shaping curve, while negative skew looks like a down-shaping curve.

# Boxplot
head(InsectSprays)

par(mfrow = c(1, 1))
boxplot(count ~ spray, InsectSprays)

# New York City Marathon 2002 dataset
library(UsingR)
data(nym.2002, package="UsingR")

head(nym.2002)

# Boxplot comparing finishing times of male and female runners 
boxplot(time ~ gender, nym.2002)

# Histogram
males <- filter(nym.2002, gender == "Male") %>% dplyr::select(time) %>% unlist
females <- filter(nym.2002, gender == "Female") %>% dplyr::select(time) %>% unlist

par(mfrow = c(1, 2))
qqnorm(males)
qqnorm(females)

