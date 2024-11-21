library(dplyr)

dat <- read.csv(file = "r-statistics/data/femaleMiceWeights.csv")

# Separet the Bodyweight column for controls and cases
treatments <- filter(dat, Diet == "hf") %>% select(Bodyweight) %>% unlist

controls <- filter(dat, Diet == "chow") %>% select(Bodyweight) %>% unlist

cat(paste("Mean weight of the controls is", mean(controls)))
cat(paste("Mean weight of the cases is", mean(treatments)))

# Random Varioable
population <- read.csv(file = "r-statistics/data/femaleControlsPopulation.csv") %>% unlist

# Take a random sample
mean(sample(population, size=12))
