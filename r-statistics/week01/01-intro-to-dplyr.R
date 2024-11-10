# Downloads and installs dplyr
install.packages("dplyr")
library(dplyr)

# Imports .csv file
data <- read.csv("r-statistics/data/femaleMiceWeights.csv")

# Extracts the rows containing data on mice on the chow diet
# Filters all rows that satisfy your conditions.
controls <- filter(data, Diet == "chow")

# Selects variables in a data frame
controls_weight <- select(controls, Bodyweight)

# Produces a vector which contains all the atomic components
controls_weight <- unlist(controls_weight)

print(controls_weight)

# Uses pipe
controls <- filter(data, Diet == "chow") %>% select(Bodyweight) %>% unlist
print(controls)
