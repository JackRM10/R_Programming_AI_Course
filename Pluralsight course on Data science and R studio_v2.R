# Working with Data

# Set the working directory
# setwd("C:/Pluralsight") removing this part of program

#Read a tab-delineated data file
cars <- read.table(
  file = "Cars.txt",
  header = TRUE,
  sep = "\t",
  quote = "\"")

# Peek at the data
head(cars)

# Load the dplyr library
library(dplyr)

# Select a subset of columns
temp <- select(
  .data = cars,
  Transmission,
  Cylinders,
  Fuel.Economy
)

# Inspect the results
head(temp)

# Filter a subset of rows
temp <- filter(
  .data = temp,
  Transmission == "Automatic")

# Inspect the results
head(temp)

# Compute a new column (6:24 timing of video)



