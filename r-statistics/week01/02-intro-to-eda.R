# Load .RData file 
load("r-statistics/data/skew.RData")

# Dimensions of the data
dim(dat)

# Using QQ-plots, compare the distribution of each column of the matrix to a normal.
par(mfrow = c(3, 3))
for( i in 1:9){
  qqnorm(dat[,i],
         main = "Q-Q Plots of each column")
}

# positive skew looks like an up-shaping curve, while negative skew looks like a down-shaping curve.
