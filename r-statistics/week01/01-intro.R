install.packages("rafalib") # Finds the package in CRAN and installs it locally
library(rafalib) # Loads the package into our program

# Prints the version of the R programming language currently in use
print(R.version)

# Create a numeric vector containing the numbers 2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23.
nums <- c(2.23, 3.45, 1.87, 2.11, 7.33, 18.34, 19.23)
print(mean(nums))

# Use a for loop to determine the value of 1^2 + 2^2 + ... + 25^2
sum_of_squares <- 0
for(i in 1:25){
  sum_of_squares <- sum_of_squares + (i ^ 2)
}
print("Sum of Squares: ")
print(sum_of_squares)

sum_of_squares <- sum((1:25)^2)
print("Sum of Squares: ")
print(sum_of_squares)

# The cars dataset is available in base R. You can type cars to see it. Use the class() function to determine what type of object is cars.
class(cars)
print("Number of rows: ")
nrow(cars)
print("Number of columns: ")
ncol(cars)

# What is the name of the second column of cars?
colnames(cars)

# What is the average distance traveled in this dataset?
mean(cars$dist)
mean(cars[, 2])

# Which row of cars has a a distance of 85?
which(cars$dist == 85)

# Read .csv file
dataset <- read.csv("r-statistics/data/femaleMiceWeights.csv")
nrow(dataset)
ncol(dataset)