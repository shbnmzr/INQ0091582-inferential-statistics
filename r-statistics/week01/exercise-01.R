# Read in the file femaleMiceWeights.csv and report the exact name of the column containing the weights.
data <- read.csv("r-statistics/data/femaleMiceWeights.csv")
colnames(data)

# What is the entry in the 12th row and second column?
data[12, 2]

# Use $ to extract the weight column and report the weight of the mouse in the 11th row.
data$Bodyweight[11]

# How many mice are included in our dataset?
length(data) # returns the number of columns
length(data$Bodyweight) # returns the number of rows

# View the data and determine what rows are associated with the high fat or hf diet. Then use the mean() function to compute the average weight of these mice
hf_mice <- data[data$Diet == "hf",]
mean(hf_mice$Bodyweight)

# Using which
mean(data$Bodyweight[which(data$Diet == "hf")])

# Take a random sample of size 1 from the numbers 13 to 24 and report back the weight of the mouse represented by that row. Make sure to type set.seed(1) to ensure that everybody gets the same answer.
set.seed(1)
data$Bodyweight[sample(13:24, size = 1)]
